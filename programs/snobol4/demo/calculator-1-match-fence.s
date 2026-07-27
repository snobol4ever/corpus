                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 80
                        mov              [rsp + 56], rcx
                        mov              [rsp + 64], rdx
                        mov              [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rbp + 48], r8
                        mov              dword ptr [rbp + 40], r14d
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
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 40], eax
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
                        mov              rax, [rbp + 56]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 80
                        mov              [rsp + 56], rcx
                        mov              [rsp + 64], rdx
                        mov              [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rbp + 48], r8
                        mov              dword ptr [rbp + 40], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_span_β]
                        mov              qword ptr [rbp + 32], rax
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
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 40], eax
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
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 56]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n6_match_alternate_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n7_match_defer_α
n6_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n6_match_alternate_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    n7_match_defer_β
                        cmp              eax, 1
                                                                                        je    n8_match_defer_β
                                                                                        jmp   n9_match_sequence_β
n6_match_alternate_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    n8_match_defer_α
                        cmp              eax, 2
                                                                                        je    n9_match_sequence_α
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx15_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx15_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx15_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx15_10
.Lx15_9:
                        xor              eax, eax
.Lx15_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx15_11:
                        test             rax, rax
                                                                                        jz    .Lx15_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx15_4]
                        lea              rdx, [rip + .Lx15_5]
                                                                                        jmp   rax
.Lx15_4:
                                                                                        jmp   n6_match_alternate_as
.Lx15_5:
                                                                                        jmp   n6_match_alternate_af
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_as
.Lx15_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n7_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx16_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx16_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx16_10
.Lx16_9:
                        xor              eax, eax
.Lx16_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx16_11:
                        test             rax, rax
                                                                                        jz    .Lx16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx16_4]
                        lea              rdx, [rip + .Lx16_5]
                                                                                        jmp   rax
.Lx16_4:
                                                                                        jmp   n6_match_alternate_as
.Lx16_5:
                                                                                        jmp   n6_match_alternate_af
.Lx16_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx16_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_as
.Lx16_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n8_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n9_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n10_match_lit_α
n9_match_sequence_as:
                                                                                        jmp   n6_match_alternate_as
n9_match_sequence_β:
                                                                                        jmp   n12_match_lit_β
n9_match_sequence_af:
                                                                                        jmp   n6_match_alternate_af
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
                                                                                        jmp   n11_match_defer_α
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx21_10
.Lx21_9:
                        xor              eax, eax
.Lx21_10:
                        test             rax, rax
                                                                                        jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                                                                                        jmp   rax
.Lx21_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n12_match_lit_α
.Lx21_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n10_match_lit_β
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx21_2:
                        test             rax, rax
                                                                                        je    .Lx21_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_7]
                        lea              rdx, [rip + .Lx21_8]
                                                                                        jmp   rax
.Lx21_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n10_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n12_match_lit_α
.Lx21_6:
                        add              rsp, 16
                                                                                        jmp   n10_match_lit_β
n11_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n10_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n11_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n11_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n6_match_alternate_as
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n11_match_defer_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
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
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n24_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n25_match_defer_α
n24_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n24_match_alternate_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    n25_match_defer_β
                        cmp              eax, 1
                                                                                        je    n26_match_sequence_β
                                                                                        jmp   n27_match_sequence_β
n24_match_alternate_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    n26_match_sequence_α
                        cmp              eax, 2
                                                                                        je    n27_match_sequence_α
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx34_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx34_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx34_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx34_10
.Lx34_9:
                        xor              eax, eax
.Lx34_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx34_11:
                        test             rax, rax
                                                                                        jz    .Lx34_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx34_4]
                        lea              rdx, [rip + .Lx34_5]
                                                                                        jmp   rax
.Lx34_4:
                                                                                        jmp   n24_match_alternate_as
.Lx34_5:
                                                                                        jmp   n24_match_alternate_af
.Lx34_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx34_2:
                        test             rax, rax
                                                                                        je    .Lx34_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_7]
                        lea              rdx, [rip + .Lx34_8]
                                                                                        jmp   rax
.Lx34_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx34_2
.Lx34_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx34_2
.Lx34_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n24_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx34_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_as
.Lx34_6:
                        add              rsp, 16
                                                                                        jmp   n24_match_alternate_af
n25_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n26_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n28_match_lit_α
n26_match_sequence_as:
                                                                                        jmp   n24_match_alternate_as
n26_match_sequence_β:
                                                                                        jmp   n29_match_defer_β
n26_match_sequence_af:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_sequence_α:
                        mov              dword ptr [rbp + 96], r14d
                                                                                        jmp   n30_match_lit_α
n27_match_sequence_as:
                                                                                        jmp   n24_match_alternate_as
n27_match_sequence_β:
                                                                                        jmp   n31_match_defer_β
n27_match_sequence_af:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:
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
n28_match_lit_β:
                        sub              r14d, 1
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
                                                                                        jmp   n24_match_alternate_as
.Lx41_5:
                                                                                        jmp   n28_match_lit_β
.Lx41_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    n28_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_as
.Lx41_6:
                        add              rsp, 16
                                                                                        jmp   n28_match_lit_β
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
                        cmp              eax, 45
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n31_match_defer_α
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
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
                                                                                        jmp   n24_match_alternate_as
.Lx44_5:
                                                                                        jmp   n30_match_lit_β
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
                                                                                        js    n30_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx44_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_as
.Lx44_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_lit_β
n31_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
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
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:
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
                        lea              rdi, [rip + .S4]
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
n45_match_defer_β:
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
                        mov              dword ptr [rbp + 32], r14d
                        mov              dword ptr [rbp + 36], 0
                                                                                        jmp   n48_match_sequence_α
n47_match_alternate_as:
                                                                                        jmp   n46_match_fence1_as
n47_match_alternate_β:
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 0
                                                                                        je    n48_match_sequence_β
                                                                                        jmp   n49_match_lit_β
n47_match_alternate_af:
                        add              dword ptr [rbp + 36], 1
                        mov              r14d, dword ptr [rbp + 32]
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 1
                                                                                        je    n49_match_lit_α
                                                                                        jmp   n46_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n50_match_alternate_α
n48_match_sequence_as:
                                                                                        jmp   n47_match_alternate_as
n48_match_sequence_β:
                                                                                        jmp   n51_match_defer_β
n48_match_sequence_af:
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:
                                                                                        jmp   n47_match_alternate_as
n49_match_lit_β:
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n50_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n52_match_lit_α
n50_match_alternate_s0:
                                                                                        jmp   n50_match_alternate_as
n50_match_alternate_s1:
                                                                                        jmp   n50_match_alternate_as
n50_match_alternate_as:
                                                                                        jmp   n51_match_defer_α
n50_match_alternate_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                                                                                        je    n52_match_lit_β
                                                                                        jmp   n53_match_lit_β
n50_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n53_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx65_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx65_10
.Lx65_9:
                        xor              eax, eax
.Lx65_10:
                        test             rax, rax
                                                                                        jz    .Lx65_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx65_4]
                        lea              rdx, [rip + .Lx65_5]
                                                                                        jmp   rax
.Lx65_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n47_match_alternate_as
.Lx65_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n50_match_alternate_β
.Lx65_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx65_2:
                        test             rax, rax
                                                                                        je    .Lx65_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx65_7]
                        lea              rdx, [rip + .Lx65_8]
                                                                                        jmp   rax
.Lx65_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n50_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx65_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n47_match_alternate_as
.Lx65_6:
                        add              rsp, 16
                                                                                        jmp   n50_match_alternate_β
n51_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n50_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n50_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n50_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n50_match_alternate_s0
n52_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n50_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n53_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n50_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n50_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n50_match_alternate_s1
n53_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n50_match_alternate_af
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
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
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:
                        mov              qword ptr [rbp + 112], rsp
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
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n71_match_fence1_α
.Lx79_5:
                        mov              rsp, qword ptr [rbp + 112]
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
n70_match_defer_β:
                        mov              rsp, qword ptr [rbp + 112]
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
                        mov              dword ptr [rbp + 32], r14d
                        mov              dword ptr [rbp + 36], 0
                                                                                        jmp   n73_match_sequence_α
n72_match_alternate_as:
                                                                                        jmp   n71_match_fence1_as
n72_match_alternate_β:
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 0
                                                                                        je    n73_match_sequence_β
                                                                                        jmp   n74_match_lit_β
n72_match_alternate_af:
                        add              dword ptr [rbp + 36], 1
                        mov              r14d, dword ptr [rbp + 32]
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 1
                                                                                        je    n74_match_lit_α
                                                                                        jmp   n71_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n73_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n75_match_alternate_α
n73_match_sequence_as:
                                                                                        jmp   n72_match_alternate_as
n73_match_sequence_β:
                                                                                        jmp   n76_match_defer_β
n73_match_sequence_af:
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:
                                                                                        jmp   n72_match_alternate_as
n74_match_lit_β:
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n75_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n77_match_lit_α
n75_match_alternate_s0:
                                                                                        jmp   n75_match_alternate_as
n75_match_alternate_s1:
                                                                                        jmp   n75_match_alternate_as
n75_match_alternate_as:
                                                                                        jmp   n76_match_defer_α
n75_match_alternate_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                                                                                        je    n77_match_lit_β
                                                                                        jmp   n78_match_lit_β
n75_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n78_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n76_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx90_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx90_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx90_10
.Lx90_9:
                        xor              eax, eax
.Lx90_10:
                        test             rax, rax
                                                                                        jz    .Lx90_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx90_4]
                        lea              rdx, [rip + .Lx90_5]
                                                                                        jmp   rax
.Lx90_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n72_match_alternate_as
.Lx90_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n75_match_alternate_β
.Lx90_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx90_2:
                        test             rax, rax
                                                                                        je    .Lx90_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx90_7]
                        lea              rdx, [rip + .Lx90_8]
                                                                                        jmp   rax
.Lx90_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx90_2
.Lx90_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx90_2
.Lx90_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n75_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx90_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n72_match_alternate_as
.Lx90_6:
                        add              rsp, 16
                                                                                        jmp   n75_match_alternate_β
n76_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n75_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n75_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n75_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n75_match_alternate_s0
n77_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n75_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n75_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n75_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n75_match_alternate_s1
n78_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n75_match_alternate_af
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
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
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rbp + 224], r8
                        mov              dword ptr [rbp + 216], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n95_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n95_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n96_lit_integer_α
n95_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n95_match_sequence_β:
                                                                                        jmp   n100_match_rpos_β
n95_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n97_match_pos_α
n96_lit_integer_β:
                                                                                        jmp   proc_PAT$6_ω
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$6_ω
                                                                                        jmp   n98_match_arbno_α
n97_match_pos_β:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n99_lit_integer_α
n98_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n101_match_sequence_α
n98_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n101_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n99_lit_integer_α
n98_match_arbno_af:
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
                                                                                        jmp   n101_match_sequence_β
.Lx109_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n97_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n100_match_rpos_α
n99_lit_integer_β:
                                                                                        jmp   n98_match_arbno_β
.Lx110_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n100_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n98_match_arbno_β
                                                                                        jmp   proc_PAT$6_γ
n100_match_rpos_β:
                                                                                        jmp   n98_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n103_match_defer_α
n101_match_sequence_as:
                                                                                        jmp   n98_match_arbno_as
n101_match_sequence_β:
                                                                                        jmp   n102_match_defer_β
n101_match_sequence_af:
                                                                                        jmp   n98_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n102_match_defer_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx114_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx114_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx114_10
.Lx114_9:
                        xor              eax, eax
.Lx114_10:
                        test             rax, rax
                                                                                        jz    .Lx114_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx114_4]
                        lea              rdx, [rip + .Lx114_5]
                                                                                        jmp   rax
.Lx114_4:
                                                                                        jmp   n98_match_arbno_as
.Lx114_5:
                                                                                        jmp   n103_match_defer_β
.Lx114_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx114_2
.Lx114_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx114_2
.Lx114_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n103_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx114_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n98_match_arbno_as
.Lx114_6:
                        add              rsp, 16
                                                                                        jmp   n103_match_defer_β
n102_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n103_match_defer_α:
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx115_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx115_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx115_10
.Lx115_9:
                        xor              eax, eax
.Lx115_10:
                        test             rax, rax
                                                                                        jz    .Lx115_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx115_4]
                        lea              rdx, [rip + .Lx115_5]
                                                                                        jmp   rax
.Lx115_4:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n102_match_defer_α
.Lx115_5:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n98_match_arbno_af
.Lx115_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx115_2:
                        test             rax, rax
                                                                                        je    .Lx115_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx115_7]
                        lea              rdx, [rip + .Lx115_8]
                                                                                        jmp   rax
.Lx115_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx115_2
.Lx115_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx115_2
.Lx115_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n98_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx115_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n102_match_defer_α
.Lx115_6:
                        add              rsp, 16
                                                                                        jmp   n98_match_arbno_af
n103_match_defer_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n98_match_arbno_af
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 216], eax
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
                        mov              rax, [rbp + 232]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
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
                        mov              esi, 48
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
                        mov              esi, 128
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
                        mov              esi, 144
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
                        mov              esi, 144
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
                        mov              esi, 144
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
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 1032
                        mov              rdi, rsp
                        mov              ecx, 1032
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1024], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n118_call_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n117_goto_α:
                                                                                        jmp   n119_lit_string_α
n117_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn165:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n121_lit_string_α
                                                                                        jmp   n120_assign_α
n118_call_β:
                                                                                        jmp   n121_lit_string_α
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n122_assign_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n121_lit_string_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n123_call_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn171:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n124_assign_α
n123_call_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n125_lit_string_α
#=======================================================================================================================
#         A              =  V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n126_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn175:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n128_lit_string_α
                                                                                        jmp   n127_assign_α
n126_call_β:
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n128_lit_string_α
#=======================================================================================================================
#         F              =  A | FENCE('+' *F) | FENCE('-' *F)
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n129_call_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn179:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n130_assign_α
n129_call_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n131_lit_string_α
#=======================================================================================================================
#         T              =  F FENCE(('*' | '/') *T | '')
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n132_call_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn183:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n134_lit_string_α
                                                                                        jmp   n133_assign_α
n132_call_β:
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n134_lit_string_α
#=======================================================================================================================
#         X              =  T FENCE(('+' | '-') *X | '')
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n135_call_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn187:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n137_lit_integer_α
                                                                                        jmp   n136_assign_α
n135_call_β:
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n137_lit_integer_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n138_call_α
.Lx189_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lbynamefn67:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn67]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n140_lit_string_α
                                                                                        jmp   n139_assign_α
n138_call_β:
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n140_lit_string_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n141_call_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn194:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n143_lit_string_α
                                                                                        jmp   n142_assign_α
n141_call_β:
                                                                                        jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n143_lit_string_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n144_lit_integer_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n145_call_α
.Lx197_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn199:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n146_lit_string_α
                                                                                        jmp   n146_lit_string_α
n145_call_β:
                                                                                        jmp   n146_lit_string_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n147_call_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn202:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n149_var_α
                                                                                        jmp   n148_lit_integer_α
n147_call_β:
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n150_lit_string_α
.Lx203_0:
                        .quad            9
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx204_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                                                                                        jmp   n119_lit_string_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_assign_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n152_call_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:
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
.Lbynamefn81:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn81]
                        lea              rsi, [rbp + 640]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n149_var_α
                                                                                        jmp   n149_var_α
n152_call_β:
                                                                                        jmp   n149_var_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n154_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n154_match_head_α:
                        mov              qword ptr [rbp + 872], rbp
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 864], r12
                        mov              qword ptr [rbp + 848], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 840], rax
                        mov              dword ptr [rbp + 832], 0
.Lx210_0:
                        mov              r14d, dword ptr [rbp + 832]
                                                                                        jmp   n155_match_defer_α
n154_match_head_β:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, r15d
                                                                                        jg    .Lx210_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx210_1
                                                                                        jmp   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rbp + 840]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 848]
                        mov              r12, qword ptr [rbp + 864]
                        mov              rbp, qword ptr [rbp + 872]
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_11
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                                                                                        jne   .Lx211_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx211_10
.Lx211_9:
                        xor              eax, eax
.Lx211_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx211_11:
                        test             rax, rax
                                                                                        jz    .Lx211_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx211_4]
                        lea              rdx, [rip + .Lx211_5]
                                                                                        jmp   rax
.Lx211_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 832], eax
                                                                                        jmp   n156_match_release_α
.Lx211_5:
                                                                                        jmp   n154_match_head_β
.Lx211_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx211_2:
                        test             rax, rax
                                                                                        je    .Lx211_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_7]
                        lea              rdx, [rip + .Lx211_8]
                                                                                        jmp   rax
.Lx211_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n154_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n156_match_release_α
.Lx211_6:
                        add              rsp, 16
                                                                                        jmp   n154_match_head_β
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n156_match_release_α:
                        mov              rax, qword ptr [rbp + 840]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 848]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx213_1:
                        test             rax, rax
                                                                                        je    .Lx213_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx213_3]
                        lea              rdx, [rip + .Lx213_4]
                                                                                        jmp   rax
.Lx213_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx213_1
.Lx213_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx213_1
.Lx213_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 864]
                        mov              rbp, qword ptr [rbp + 872]
                                                                                        jmp   n157_lit_string_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n158_var_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n159_call_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn217:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n160_binop_α
n159_call_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              rdi, qword ptr [rip + .Lx219_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
                        .section         .rodata
.S0:                    .string          "V"
.S1:                    .string          "I"
.S2:                    .string          "X"
.S3:                    .string          "A"
.S4:                    .string          "F"
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
