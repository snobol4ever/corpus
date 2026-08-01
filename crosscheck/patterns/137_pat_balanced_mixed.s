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
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 56], eax
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
                        lea              rax, [rip + n2_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n2_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx8_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n6_match_lit_α
.Lx8_21:
                        lea              rax, [rip + .Lx8_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n5_match_lit_α
.Lx8_22:
                        lea              rax, [rip + .Lx8_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n4_match_lit_α
.Lx8_23:
                        lea              rax, [rip + .Lx8_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n3_match_lit_α
n2_match_alternate_s0:
                        lea              rax, [rip + .Lx8_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n2_match_alternate_as
n2_match_alternate_s1:
                        lea              rax, [rip + .Lx8_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n2_match_alternate_as
n2_match_alternate_s2:
                        lea              rax, [rip + .Lx8_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n2_match_alternate_as
n2_match_alternate_s3:
                        lea              rax, [rip + .Lx8_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n2_match_alternate_as
.Lx8_40:
                                                                                        jmp   n6_match_lit_β
.Lx8_41:
                                                                                        jmp   n5_match_lit_β
.Lx8_42:
                                                                                        jmp   n4_match_lit_β
.Lx8_43:
                                                                                        jmp   n3_match_lit_β
n2_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n2_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n2_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx8_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60
                                                                                        jne   n2_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n2_match_alternate_s3
n3_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   n2_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n2_match_alternate_s2
n4_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   n2_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n2_match_alternate_s1
n5_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n2_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n2_match_alternate_s0
n6_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
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
                        lea              rax, [rip + n17_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n17_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx23_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_lit_α
.Lx23_21:
                        lea              rax, [rip + .Lx23_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n20_match_lit_α
.Lx23_22:
                        lea              rax, [rip + .Lx23_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n19_match_lit_α
.Lx23_23:
                        lea              rax, [rip + .Lx23_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n18_match_lit_α
n17_match_alternate_s0:
                        lea              rax, [rip + .Lx23_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s1:
                        lea              rax, [rip + .Lx23_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s2:
                        lea              rax, [rip + .Lx23_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s3:
                        lea              rax, [rip + .Lx23_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n17_match_alternate_as
.Lx23_40:
                                                                                        jmp   n21_match_lit_β
.Lx23_41:
                                                                                        jmp   n20_match_lit_β
.Lx23_42:
                                                                                        jmp   n19_match_lit_β
.Lx23_43:
                                                                                        jmp   n18_match_lit_β
n17_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n17_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n17_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx23_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62
                                                                                        jne   n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n17_match_alternate_s3
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n17_match_alternate_s2
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n17_match_alternate_s1
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n17_match_alternate_s0
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
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
                        lea              rax, [rip + n34_match_patref_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n32_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx38_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx38_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx38_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx38_10
.Lx38_9:
                        xor              eax, eax
.Lx38_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx38_11:
                        test             rax, rax
                                                                                        jz    .Lx38_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx38_4]
                        lea              rdx, [rip + .Lx38_5]
                                                                                        jmp   rax
.Lx38_4:
                                                                                        jmp   n33_match_fence1_α
.Lx38_5:
                                                                                        jmp   proc_PAT$3_scanfail
.Lx38_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx38_2:
                        test             rax, rax
                                                                                        je    .Lx38_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx38_7]
                        lea              rdx, [rip + .Lx38_8]
                                                                                        jmp   rax
.Lx38_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx38_2
.Lx38_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx38_2
.Lx38_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$3_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx38_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n33_match_fence1_α
.Lx38_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
n32_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n33_match_fence1_α:
                        mov              qword ptr [rbp + 32], rsp
                                                                                        jmp   n35_match_alternate_α
n33_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 32], rbp
                                                                                        jmp   n34_match_patref_α
n33_match_fence1_β:
n33_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx41_11:
                        test             rax, rax
                                                                                        jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_4]
                        lea              rdx, [rip + .Lx41_5]
                                                                                        jmp   rax
.Lx41_4:
                                                                                        jmp   proc_PAT$3_scanhit
.Lx41_5:
                                                                                        jmp   proc_PAT$3_scanfail
.Lx41_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
                                                                                        js    proc_PAT$3_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$3_scanhit
.Lx41_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
n34_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx43_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n37_match_defer_α
.Lx43_21:
                        lea              rax, [rip + .Lx43_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n36_match_patref_α
n35_match_alternate_s0:
                        lea              rax, [rip + .Lx43_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                        lea              rax, [rip + .Lx43_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n35_match_alternate_as
.Lx43_40:
                                                                                        jmp   n37_match_defer_β
.Lx43_41:
                                                                                        jmp   n36_match_patref_β
n35_match_alternate_as:
                                                                                        jmp   n33_match_fence1_as
n35_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n35_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx43_19:
                                                                                        jmp   n33_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx44_11:
                        test             rax, rax
                                                                                        jz    .Lx44_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx44_4]
                        lea              rdx, [rip + .Lx44_5]
                                                                                        jmp   rax
.Lx44_4:
                                                                                        jmp   n35_match_alternate_s1
.Lx44_5:
                                                                                        jmp   n35_match_alternate_af
.Lx44_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                                                                                        js    n35_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx44_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n35_match_alternate_s1
.Lx44_6:
                        add              rsp, 16
                                                                                        jmp   n35_match_alternate_af
n36_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx45_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx45_10
.Lx45_9:
                        xor              eax, eax
.Lx45_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx45_11:
                        test             rax, rax
                                                                                        jz    .Lx45_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx45_4]
                        lea              rdx, [rip + .Lx45_5]
                                                                                        jmp   rax
.Lx45_4:
                                                                                        jmp   n35_match_alternate_s0
.Lx45_5:
                                                                                        jmp   n35_match_alternate_af
.Lx45_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx45_2:
                        test             rax, rax
                                                                                        je    .Lx45_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_7]
                        lea              rdx, [rip + .Lx45_8]
                                                                                        jmp   rax
.Lx45_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx45_2
.Lx45_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx45_2
.Lx45_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n35_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx45_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n35_match_alternate_s0
.Lx45_6:
                        add              rsp, 16
                                                                                        jmp   n35_match_alternate_af
n37_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 152], eax
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
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_call_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd79:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd79]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx78_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n49_lit_string_α
.Lx78_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_assign_α
n47_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n49_lit_string_α
#=======================================================================================================================
#         open   = '(' | '[' | '{' | '<'
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_call_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd83]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx82_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx82_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_assign_α
n50_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n52_lit_string_α
#=======================================================================================================================
#         close  = ')' | ']' | '}' | '>'
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_call_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd87:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd87]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx86_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n55_lit_string_α
.Lx86_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_assign_α
n53_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n55_lit_string_α
#=======================================================================================================================
#         B      = open FENCE(*B | eps) close
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_call_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd91:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd91]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx90_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_lit_string_α
.Lx90_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
n56_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 32
                                                                                        jmp   n58_lit_string_α
#=======================================================================================================================
#         s      = '([{<>}])'
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_assign_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "([{<>}])"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n60_var_α
#=======================================================================================================================
#         s POS(0) *B RPOS(0)                                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        sub              rsp, 464
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n61_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 352], r13
                        mov              qword ptr [rbp + 360], r14
                        mov              qword ptr [rbp + 368], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 320], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax
                        mov              dword ptr [rbp + 304], 0
.Lx97_0:
                        mov              r14d, dword ptr [rbp + 304]
                                                                                        jmp   n62_match_sequence_α
n61_match_head_β:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, r15d
                                                                                        jg    .Lx97_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx97_1
                                                                                        jmp   .Lx97_0
.Lx97_1:
                        mov              rax, qword ptr [rbp + 312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        mov              r10, qword ptr [1879048192]
.Lx97_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx97_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]
                        mov              r14, qword ptr [rbp + 360]
                        mov              r15, qword ptr [rbp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                        add              rsp, 464
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_match_sequence_α:
                        mov              dword ptr [rbp + 384], r14d
                                                                                        jmp   n71_lit_integer_α
n62_match_sequence_as:
                                                                                        jmp   n63_match_release_α
n62_match_sequence_β:
                                                                                        jmp   n69_match_rpos_β
n62_match_sequence_af:
                                                                                        jmp   n61_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_release_α:
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
                        mov              r13, qword ptr [rbp + 352]
                        mov              r14, qword ptr [rbp + 360]
                        mov              r15, qword ptr [rbp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                        add              rsp, 464
                                                                                        jmp   n64_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'mixed ' s                                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_var_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "mixed "
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n69_match_rpos_α
n68_lit_integer_β:
                                                                                        jmp   n70_match_defer_β
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n69_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n70_match_defer_β
                                                                                        jmp   n63_match_release_α
n69_match_rpos_β:
                                                                                        jmp   n70_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx108_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx108_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx108_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx108_10
.Lx108_9:
                        xor              eax, eax
.Lx108_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx108_11:
                        test             rax, rax
                                                                                        jz    .Lx108_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx108_4]
                        lea              rdx, [rip + .Lx108_5]
                                                                                        jmp   rax
.Lx108_4:
                                                                                        jmp   n68_lit_integer_α
.Lx108_5:
                                                                                        jmp   n61_match_head_β
.Lx108_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx108_2:
                        test             rax, rax
                                                                                        je    .Lx108_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_7]
                        lea              rdx, [rip + .Lx108_8]
                                                                                        jmp   rax
.Lx108_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx108_2
.Lx108_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx108_2
.Lx108_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n61_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx108_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n68_lit_integer_α
.Lx108_6:
                        add              rsp, 16
                                                                                        jmp   n61_match_head_β
n70_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rsp + 400], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n72_match_pos_α
n71_lit_integer_β:
                                                                                        jmp   n61_match_head_β
.Lx109_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n72_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n61_match_head_β
                                                                                        jmp   n70_match_defer_α
n72_match_pos_β:
                                                                                        jmp   n61_match_head_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx112_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_goto_α:
                                                                                        jmp   n64_lit_string_α
n75_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_goto_α:
                                                                                        jmp   n73_lit_string_α
n76_goto_β:
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
