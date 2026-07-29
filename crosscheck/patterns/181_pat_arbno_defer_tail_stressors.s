                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 96
                        mov              [rsp + 72], rcx
                        mov              [rsp + 80], rdx
                        mov              [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_sequence_β]
                        mov              qword ptr [rbp + 48], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_sequence_α:
                                                                                        jmp   n1_match_span_α
n0_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_sequence_β:
                                                                                        jmp   n2_match_lit_β
n0_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx6_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx6_10
                        cmp              esi, 98
                                                                                        je    .Lx6_10
                                                                                        jmp   .Lx6_1
.Lx6_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx6_11
                        cmp              esi, 98
                                                                                        je    .Lx6_11
                                                                                        jmp   .Lx6_1
.Lx6_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx6_12
                        cmp              esi, 98
                                                                                        je    .Lx6_12
                                                                                        jmp   .Lx6_1
.Lx6_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx6_13
                        cmp              esi, 98
                                                                                        je    .Lx6_13
                                                                                        jmp   .Lx6_1
.Lx6_13:
                        add              ecx, 1
                                                                                        jmp   .Lx6_0
.Lx6_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx6_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx6_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n2_match_lit_α
n1_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n1_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n1_match_span_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n2_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n1_match_span_β
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
                                                                                        jmp   qword ptr [rbp + 48]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 72]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx13_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n10_match_span_α
.Lx13_21:
                        lea              rax, [rip + .Lx13_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_lit_α
n9_match_alternate_s0:
                        lea              rax, [rip + .Lx13_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n9_match_alternate_as
n9_match_alternate_s1:
                        lea              rax, [rip + .Lx13_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n9_match_alternate_as
.Lx13_40:
                                                                                        jmp   n10_match_span_β
.Lx13_41:
                                                                                        jmp   n11_match_lit_β
n9_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n9_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n9_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx13_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:
                        movsxd           rcx, r14d
.Lx15_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx15_10
                        cmp              esi, 98
                                                                                        je    .Lx15_10
                                                                                        jmp   .Lx15_1
.Lx15_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx15_11
                        cmp              esi, 98
                                                                                        je    .Lx15_11
                                                                                        jmp   .Lx15_1
.Lx15_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx15_12
                        cmp              esi, 98
                                                                                        je    .Lx15_12
                                                                                        jmp   .Lx15_1
.Lx15_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx15_13
                        cmp              esi, 98
                                                                                        je    .Lx15_13
                                                                                        jmp   .Lx15_1
.Lx15_13:
                        add              ecx, 1
                                                                                        jmp   .Lx15_0
.Lx15_1:
                        cmp              ecx, r14d
                                                                                        jle   n9_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n9_match_alternate_s0
n10_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
                                                                                        jmp   n9_match_alternate_s1
n11_match_lit_β:
                                                                                        jmp   n9_match_alternate_af
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
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n18_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n19_match_alternate_α
n18_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n18_match_sequence_β:
                                                                                        jmp   n20_match_lit_β
n18_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n21_match_lit_α
.Lx26_21:
                        lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n22_match_span_α
n19_match_alternate_s0:
                        lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s1:
                        lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n19_match_alternate_as
.Lx26_40:
                                                                                        jmp   n21_match_lit_β
.Lx26_41:
                                                                                        jmp   n22_match_span_β
n19_match_alternate_as:
                                                                                        jmp   n20_match_lit_α
n19_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n19_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx26_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 121
                                                                                        jne   n19_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n19_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n19_match_alternate_s0
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_span_α:
                        movsxd           rcx, r14d
.Lx32_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx32_10
                        cmp              esi, 98
                                                                                        je    .Lx32_10
                                                                                        jmp   .Lx32_1
.Lx32_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx32_11
                        cmp              esi, 98
                                                                                        je    .Lx32_11
                                                                                        jmp   .Lx32_1
.Lx32_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx32_12
                        cmp              esi, 98
                                                                                        je    .Lx32_12
                                                                                        jmp   .Lx32_1
.Lx32_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx32_13
                        cmp              esi, 98
                                                                                        je    .Lx32_13
                                                                                        jmp   .Lx32_1
.Lx32_13:
                        add              ecx, 1
                                                                                        jmp   .Lx32_0
.Lx32_1:
                        cmp              ecx, r14d
                                                                                        jle   n19_match_alternate_af
                        mov              dword ptr [rbp + 84], r14d
                        mov              r14d, ecx
                                                                                        jmp   n19_match_alternate_s1
n22_match_span_β:
                        mov              r14d, dword ptr [rbp + 84]
                                                                                        jmp   n19_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
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
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 80
                        mov              [rsp + 56], rcx
                        mov              [rsp + 64], rdx
                        mov              [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n33_match_len_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n33_match_len_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$3_scanfail
                        add              r14d, 3
                                                                                        jmp   proc_PAT$3_scanhit
n33_match_len_β:
                        sub              r14d, 3
                                                                                        jmp   proc_PAT$3_scanfail
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
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
                                                                                        jmp   proc_PAT$3_attempt
8:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 56]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, [rbp + 72]
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
                        mov              esi, 64
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
                        mov              esi, 112
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
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "P"
.Lgvan1:                .string          "Q"
.Lgvan2:                .string          "R"
.Lgvan3:                .string          "W"
.Lgvan4:                .string          "S1"
.Lgvan5:                .string          "S2"
.Lgvan6:                .string          "S3"
.Lgvan7:                .string          "S4"
.Lgvan8:                .string          "S5"
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
                        sub              rsp, 2072
                        mov              rdi, rsp
                        mov              ecx, 2072
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2064], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         P = SPAN("ab") "c"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n54_call_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n55_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n56_lit_string_α
n37_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n57_var_α
n38_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n58_lit_string_α
n39_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n59_lit_string_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:
                                                                                        jmp   n60_var_α
n41_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n61_lit_string_α
n42_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n62_lit_string_α
n43_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n63_var_α
n44_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n64_lit_string_α
n45_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n65_lit_string_α
n46_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n66_var_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n67_lit_string_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n68_lit_string_α
n49_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n69_var_α
n50_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_goto_α:
                                                                                        jmp   n70_lit_string_α
n51_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n71_lit_string_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   main_γ
n53_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn185:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n73_lit_string_α
                                                                                        jmp   n72_assign_α
n54_call_β:
                                                                                        jmp   n73_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "T1 MATCH"
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n75_assign_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "T1 NOMATCH"
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*P) RPOS(0)    :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n76_match_head_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_assign_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "T2 MATCH"
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "T2 NOMATCH"
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*Q) RPOS(0)    :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n79_match_head_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n80_assign_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "T3 MATCH"
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_assign_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "T3 NOMATCH"
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*R) RPOS(0)    :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n82_match_head_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_assign_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "T4 MATCH"
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_assign_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "T4 NOMATCH"
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)    :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n85_match_head_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "T5 MATCH"
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_assign_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "T5 NOMATCH"
#=======================================================================================================================
# N5      S1 "ab" ARBNO(*P) "bc" RPOS(0) :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n88_match_head_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_assign_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "T6 MATCH"
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_assign_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n73_lit_string_α
#=======================================================================================================================
#         Q = SPAN("ab") | ""
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n91_call_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_var_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_var_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_match_head_α:
                        mov              qword ptr [rbp + 704], r13
                        mov              qword ptr [rbp + 712], r14
                        mov              qword ptr [rbp + 720], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 728], rax
                        mov              qword ptr [rbp + 696], rbp
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 672], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax
                        mov              dword ptr [rbp + 656], 0
.Lx208_0:
                        mov              r14d, dword ptr [rbp + 656]
                                                                                        jmp   n92_match_sequence_α
n76_match_head_β:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, r15d
                                                                                        jg    .Lx208_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx208_1
                                                                                        jmp   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rbp + 664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 672]
                        mov              r10, qword ptr [1879048192]
.Lx208_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx209_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n60_var_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx210_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n60_var_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_match_head_α:
                        mov              qword ptr [rbp + 992], r13
                        mov              qword ptr [rbp + 1000], r14
                        mov              qword ptr [rbp + 1008], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1016], rax
                        mov              qword ptr [rbp + 984], rbp
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 960], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 952], rax
                        mov              dword ptr [rbp + 944], 0
.Lx212_0:
                        mov              r14d, dword ptr [rbp + 944]
                                                                                        jmp   n93_match_sequence_α
n79_match_head_β:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, r15d
                                                                                        jg    .Lx212_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx212_1
                                                                                        jmp   .Lx212_0
.Lx212_1:
                        mov              rax, qword ptr [rbp + 952]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 960]
                        mov              r10, qword ptr [1879048192]
.Lx212_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx212_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_var_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_var_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_match_head_α:
                        mov              qword ptr [rbp + 1280], r13
                        mov              qword ptr [rbp + 1288], r14
                        mov              qword ptr [rbp + 1296], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1304], rax
                        mov              qword ptr [rbp + 1272], rbp
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1248], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1240], rax
                        mov              dword ptr [rbp + 1232], 0
.Lx216_0:
                        mov              r14d, dword ptr [rbp + 1232]
                                                                                        jmp   n94_match_sequence_α
n82_match_head_β:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, r15d
                                                                                        jg    .Lx216_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx216_1
                                                                                        jmp   .Lx216_0
.Lx216_1:
                        mov              rax, qword ptr [rbp + 1240]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1248]
                        mov              r10, qword ptr [1879048192]
.Lx216_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n66_var_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n66_var_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n85_match_head_α:
                        mov              qword ptr [rbp + 1568], r13
                        mov              qword ptr [rbp + 1576], r14
                        mov              qword ptr [rbp + 1584], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1592], rax
                        mov              qword ptr [rbp + 1560], rbp
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1536], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1528], rax
                        mov              dword ptr [rbp + 1520], 0
.Lx220_0:
                        mov              r14d, dword ptr [rbp + 1520]
                                                                                        jmp   n95_match_sequence_α
n85_match_head_β:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, r15d
                                                                                        jg    .Lx220_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx220_1
                                                                                        jmp   .Lx220_0
.Lx220_1:
                        mov              rax, qword ptr [rbp + 1528]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1536]
                        mov              r10, qword ptr [1879048192]
.Lx220_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx220_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]
                        mov              r14, qword ptr [rbp + 1576]
                        mov              r15, qword ptr [rbp + 1584]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx221_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_var_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx222_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_var_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_match_head_α:
                        mov              qword ptr [rbp + 1856], r13
                        mov              qword ptr [rbp + 1864], r14
                        mov              qword ptr [rbp + 1872], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1880], rax
                        mov              qword ptr [rbp + 1848], rbp
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1824], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1816], rax
                        mov              dword ptr [rbp + 1808], 0
.Lx224_0:
                        mov              r14d, dword ptr [rbp + 1808]
                                                                                        jmp   n96_match_sequence_α
n88_match_head_β:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, r15d
                                                                                        jg    .Lx224_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx224_1
                                                                                        jmp   .Lx224_0
.Lx224_1:
                        mov              rax, qword ptr [rbp + 1816]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1824]
                        mov              r10, qword ptr [1879048192]
.Lx224_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]
                        mov              r14, qword ptr [rbp + 1864]
                        mov              r15, qword ptr [rbp + 1872]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx225_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn228:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n98_lit_string_α
                                                                                        jmp   n97_assign_α
n91_call_β:
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_match_sequence_α:
                        mov              dword ptr [rbp + 736], r14d
                                                                                        jmp   n100_lit_integer_α
n92_match_sequence_as:
                                                                                        jmp   n99_match_release_α
n92_match_sequence_β:
                                                                                        jmp   n104_match_rpos_β
n92_match_sequence_af:
                                                                                        jmp   n76_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n93_match_sequence_α:
                        mov              dword ptr [rbp + 1024], r14d
                                                                                        jmp   n106_lit_integer_α
n93_match_sequence_as:
                                                                                        jmp   n105_match_release_α
n93_match_sequence_β:
                                                                                        jmp   n110_match_rpos_β
n93_match_sequence_af:
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_sequence_α:
                        mov              dword ptr [rbp + 1312], r14d
                                                                                        jmp   n112_lit_integer_α
n94_match_sequence_as:
                                                                                        jmp   n111_match_release_α
n94_match_sequence_β:
                                                                                        jmp   n116_match_rpos_β
n94_match_sequence_af:
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_sequence_α:
                        mov              dword ptr [rbp + 1600], r14d
                                                                                        jmp   n118_lit_integer_α
n95_match_sequence_as:
                                                                                        jmp   n117_match_release_α
n95_match_sequence_β:
                                                                                        jmp   n122_match_rpos_β
n95_match_sequence_af:
                                                                                        jmp   n85_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_sequence_α:
                        mov              dword ptr [rbp + 1888], r14d
                                                                                        jmp   n124_match_lit_α
n96_match_sequence_as:
                                                                                        jmp   n123_match_release_α
n96_match_sequence_β:
                                                                                        jmp   n128_match_rpos_β
n96_match_sequence_af:
                                                                                        jmp   n88_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n98_lit_string_α
#=======================================================================================================================
#         R = ("x" | SPAN("ab")) "y"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n129_call_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n99_match_release_α:
                        mov              rax, qword ptr [rbp + 664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 672]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx242_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx242_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx242_1:
                        test             rax, rax
                                                                                        je    .Lx242_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4]
                                                                                        jmp   rax
.Lx242_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx242_1
.Lx242_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx242_1
.Lx242_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx242_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx242_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n101_match_pos_α
n100_lit_integer_β:
                                                                                        jmp   n76_match_head_β
.Lx243_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n101_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n76_match_head_β
                                                                                        jmp   n102_match_arbno_α
n101_match_pos_β:
                                                                                        jmp   n76_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_arbno_α:
                        mov              dword ptr [rbp + 784], r14d
                        mov              dword ptr [rbp + 788], r14d
                        mov              dword ptr [rbp + 792], 0
                        mov              qword ptr [rbp + 808], rsp
                        mov              qword ptr [rbp + 800], 0
                                                                                        jmp   n103_lit_integer_α
n102_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 788]
                        mov              rax, qword ptr [rbp + 800]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 800], rsp
                        mov              rbp, rsp
                        add              rbp, -792
                                                                                        jmp   n130_match_defer_α
n102_match_arbno_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              r14d, eax
                                                                                        je    n130_match_defer_β
                        mov              rbp, qword ptr [rbp + 792]
                        mov              eax, dword ptr [rbp + 792]
                        add              eax, 1
                        mov              dword ptr [rbp + 792], eax
                        mov              dword ptr [rbp + 788], r14d
                                                                                        jmp   n103_lit_integer_α
n102_match_arbno_af:
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              rsp, [rbp + 872]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 792]
                        test             ecx, ecx
                                                                                        jz    .Lx246_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 792], ecx
                        mov              qword ptr [rbp + 800], rax
                        lea              rbp, [rax + -792]
                                                                                        jmp   n130_match_defer_β
.Lx246_2:
                        mov              r14d, dword ptr [rbp + 784]
                        mov              rsp, qword ptr [rbp + 808]
                                                                                        jmp   n101_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n104_match_rpos_α
n103_lit_integer_β:
                                                                                        jmp   n102_match_arbno_β
.Lx247_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n104_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n102_match_arbno_β
                                                                                        jmp   n99_match_release_α
n104_match_rpos_β:
                                                                                        jmp   n102_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_release_α:
                        mov              rax, qword ptr [rbp + 952]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 960]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx250_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx250_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx250_1:
                        test             rax, rax
                                                                                        je    .Lx250_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx250_3]
                        lea              rdx, [rip + .Lx250_4]
                                                                                        jmp   rax
.Lx250_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx250_1
.Lx250_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx250_1
.Lx250_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx250_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx250_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n107_match_pos_α
n106_lit_integer_β:
                                                                                        jmp   n79_match_head_β
.Lx251_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n107_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n79_match_head_β
                                                                                        jmp   n108_match_arbno_α
n107_match_pos_β:
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n108_match_arbno_α:
                        mov              dword ptr [rbp + 1072], r14d
                        mov              dword ptr [rbp + 1076], r14d
                        mov              dword ptr [rbp + 1080], 0
                        mov              qword ptr [rbp + 1096], rsp
                        mov              qword ptr [rbp + 1088], 0
                                                                                        jmp   n109_lit_integer_α
n108_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1076]
                        mov              rax, qword ptr [rbp + 1088]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1088], rsp
                        mov              rbp, rsp
                        add              rbp, -1080
                                                                                        jmp   n132_match_defer_α
n108_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              r14d, eax
                                                                                        je    n132_match_defer_β
                        mov              rbp, qword ptr [rbp + 1080]
                        mov              eax, dword ptr [rbp + 1080]
                        add              eax, 1
                        mov              dword ptr [rbp + 1080], eax
                        mov              dword ptr [rbp + 1076], r14d
                                                                                        jmp   n109_lit_integer_α
n108_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              rsp, [rbp + 1160]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1080]
                        test             ecx, ecx
                                                                                        jz    .Lx254_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1080], ecx
                        mov              qword ptr [rbp + 1088], rax
                        lea              rbp, [rax + -1080]
                                                                                        jmp   n132_match_defer_β
.Lx254_2:
                        mov              r14d, dword ptr [rbp + 1072]
                        mov              rsp, qword ptr [rbp + 1096]
                                                                                        jmp   n107_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n110_match_rpos_α
n109_lit_integer_β:
                                                                                        jmp   n108_match_arbno_β
.Lx255_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n110_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n108_match_arbno_β
                                                                                        jmp   n105_match_release_α
n110_match_rpos_β:
                                                                                        jmp   n108_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_release_α:
                        mov              rax, qword ptr [rbp + 1240]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1248]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx258_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx258_1:
                        test             rax, rax
                                                                                        je    .Lx258_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4]
                                                                                        jmp   rax
.Lx258_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx258_1
.Lx258_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx258_1
.Lx258_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx258_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n113_match_pos_α
n112_lit_integer_β:
                                                                                        jmp   n82_match_head_β
.Lx259_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n113_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n82_match_head_β
                                                                                        jmp   n114_match_arbno_α
n113_match_pos_β:
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_arbno_α:
                        mov              dword ptr [rbp + 1360], r14d
                        mov              dword ptr [rbp + 1364], r14d
                        mov              dword ptr [rbp + 1368], 0
                        mov              qword ptr [rbp + 1384], rsp
                        mov              qword ptr [rbp + 1376], 0
                                                                                        jmp   n115_lit_integer_α
n114_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1364]
                        mov              rax, qword ptr [rbp + 1376]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1376], rsp
                        mov              rbp, rsp
                        add              rbp, -1368
                                                                                        jmp   n134_match_defer_α
n114_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              r14d, eax
                                                                                        je    n134_match_defer_β
                        mov              rbp, qword ptr [rbp + 1368]
                        mov              eax, dword ptr [rbp + 1368]
                        add              eax, 1
                        mov              dword ptr [rbp + 1368], eax
                        mov              dword ptr [rbp + 1364], r14d
                                                                                        jmp   n115_lit_integer_α
n114_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              rsp, [rbp + 1448]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1368]
                        test             ecx, ecx
                                                                                        jz    .Lx262_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1368], ecx
                        mov              qword ptr [rbp + 1376], rax
                        lea              rbp, [rax + -1368]
                                                                                        jmp   n134_match_defer_β
.Lx262_2:
                        mov              r14d, dword ptr [rbp + 1360]
                        mov              rsp, qword ptr [rbp + 1384]
                                                                                        jmp   n113_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n116_match_rpos_α
n115_lit_integer_β:
                                                                                        jmp   n114_match_arbno_β
.Lx263_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n116_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n114_match_arbno_β
                                                                                        jmp   n111_match_release_α
n116_match_rpos_β:
                                                                                        jmp   n114_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n117_match_release_α:
                        mov              rax, qword ptr [rbp + 1528]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1536]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx266_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx266_1:
                        test             rax, rax
                                                                                        je    .Lx266_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx266_3]
                        lea              rdx, [rip + .Lx266_4]
                                                                                        jmp   rax
.Lx266_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx266_1
.Lx266_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx266_1
.Lx266_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx266_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]
                        mov              r14, qword ptr [rbp + 1576]
                        mov              r15, qword ptr [rbp + 1584]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n119_match_pos_α
n118_lit_integer_β:
                                                                                        jmp   n85_match_head_β
.Lx267_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n119_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n85_match_head_β
                                                                                        jmp   n120_match_arbno_α
n119_match_pos_β:
                                                                                        jmp   n85_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n120_match_arbno_α:
                        mov              dword ptr [rbp + 1648], r14d
                        mov              dword ptr [rbp + 1652], r14d
                        mov              dword ptr [rbp + 1656], 0
                        mov              qword ptr [rbp + 1672], rsp
                        mov              qword ptr [rbp + 1664], 0
                                                                                        jmp   n121_lit_integer_α
n120_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1652]
                        mov              rax, qword ptr [rbp + 1664]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1664], rsp
                        mov              rbp, rsp
                        add              rbp, -1656
                                                                                        jmp   n136_match_defer_α
n120_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              r14d, eax
                                                                                        je    n136_match_defer_β
                        mov              rbp, qword ptr [rbp + 1656]
                        mov              eax, dword ptr [rbp + 1656]
                        add              eax, 1
                        mov              dword ptr [rbp + 1656], eax
                        mov              dword ptr [rbp + 1652], r14d
                                                                                        jmp   n121_lit_integer_α
n120_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              rsp, [rbp + 1736]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1656]
                        test             ecx, ecx
                                                                                        jz    .Lx270_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1656], ecx
                        mov              qword ptr [rbp + 1664], rax
                        lea              rbp, [rax + -1656]
                                                                                        jmp   n136_match_defer_β
.Lx270_2:
                        mov              r14d, dword ptr [rbp + 1648]
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   n119_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n122_match_rpos_α
n121_lit_integer_β:
                                                                                        jmp   n120_match_arbno_β
.Lx271_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n120_match_arbno_β
                                                                                        jmp   n117_match_release_α
n122_match_rpos_β:
                                                                                        jmp   n120_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_release_α:
                        mov              rax, qword ptr [rbp + 1816]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1824]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx274_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx274_1:
                        test             rax, rax
                                                                                        je    .Lx274_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx274_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]
                        mov              r14, qword ptr [rbp + 1864]
                        mov              r15, qword ptr [rbp + 1872]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n88_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n88_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n88_match_head_β
                        add              r14d, 2
                                                                                        jmp   n125_match_arbno_α
n124_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n88_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_arbno_α:
                        mov              dword ptr [rbp + 1920], r14d
                        mov              dword ptr [rbp + 1924], r14d
                        mov              dword ptr [rbp + 1928], 0
                        mov              qword ptr [rbp + 1944], rsp
                        mov              qword ptr [rbp + 1936], 0
                                                                                        jmp   n126_match_lit_α
n125_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1924]
                        mov              rax, qword ptr [rbp + 1936]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1936], rsp
                        mov              rbp, rsp
                        add              rbp, -1928
                                                                                        jmp   n138_match_defer_α
n125_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              r14d, eax
                                                                                        je    n138_match_defer_β
                        mov              rbp, qword ptr [rbp + 1928]
                        mov              eax, dword ptr [rbp + 1928]
                        add              eax, 1
                        mov              dword ptr [rbp + 1928], eax
                        mov              dword ptr [rbp + 1924], r14d
                                                                                        jmp   n126_match_lit_α
n125_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              rsp, [rbp + 2008]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1928]
                        test             ecx, ecx
                                                                                        jz    .Lx278_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1928], ecx
                        mov              qword ptr [rbp + 1936], rax
                        lea              rbp, [rax + -1928]
                                                                                        jmp   n138_match_defer_β
.Lx278_2:
                        mov              r14d, dword ptr [rbp + 1920]
                        mov              rsp, qword ptr [rbp + 1944]
                                                                                        jmp   n124_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n125_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n125_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99
                                                                                        jne   n125_match_arbno_β
                        add              r14d, 2
                                                                                        jmp   n127_lit_integer_α
n126_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n125_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n128_match_rpos_α
n127_lit_integer_β:
                                                                                        jmp   n126_match_lit_β
.Lx281_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n126_match_lit_β
                                                                                        jmp   n123_match_release_α
n128_match_rpos_β:
                                                                                        jmp   n126_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn284:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n141_lit_string_α
                                                                                        jmp   n140_assign_α
n129_call_β:
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx285_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx285_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx285_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx285_10
.Lx285_9:
                        xor              eax, eax
.Lx285_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx285_11:
                        test             rax, rax
                                                                                        jz    .Lx285_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx285_4]
                        lea              rdx, [rip + .Lx285_5]
                                                                                        jmp   rax
.Lx285_4:
                                                                                        jmp   n102_match_arbno_as
.Lx285_5:
                                                                                        jmp   n102_match_arbno_af
.Lx285_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx285_2:
                        test             rax, rax
                                                                                        je    .Lx285_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx285_7]
                        lea              rdx, [rip + .Lx285_8]
                                                                                        jmp   rax
.Lx285_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx285_2
.Lx285_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx285_2
.Lx285_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n102_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx285_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n102_match_arbno_as
.Lx285_6:
                        add              rsp, 16
                                                                                        jmp   n102_match_arbno_af
n130_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   main_γ
n131_lit_string_β:
                                                                                        jmp   main_ω
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n132_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx287_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx287_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx287_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx287_10
.Lx287_9:
                        xor              eax, eax
.Lx287_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx287_11:
                        test             rax, rax
                                                                                        jz    .Lx287_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx287_4]
                        lea              rdx, [rip + .Lx287_5]
                                                                                        jmp   rax
.Lx287_4:
                                                                                        jmp   n108_match_arbno_as
.Lx287_5:
                                                                                        jmp   n108_match_arbno_af
.Lx287_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx287_2:
                        test             rax, rax
                                                                                        je    .Lx287_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx287_7]
                        lea              rdx, [rip + .Lx287_8]
                                                                                        jmp   rax
.Lx287_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx287_2
.Lx287_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx287_2
.Lx287_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n108_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx287_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n108_match_arbno_as
.Lx287_6:
                        add              rsp, 16
                                                                                        jmp   n108_match_arbno_af
n132_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   main_γ
n133_lit_string_β:
                                                                                        jmp   main_ω
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n134_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx289_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx289_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx289_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx289_10
.Lx289_9:
                        xor              eax, eax
.Lx289_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx289_11:
                        test             rax, rax
                                                                                        jz    .Lx289_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx289_4]
                        lea              rdx, [rip + .Lx289_5]
                                                                                        jmp   rax
.Lx289_4:
                                                                                        jmp   n114_match_arbno_as
.Lx289_5:
                                                                                        jmp   n114_match_arbno_af
.Lx289_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx289_2:
                        test             rax, rax
                                                                                        je    .Lx289_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx289_7]
                        lea              rdx, [rip + .Lx289_8]
                                                                                        jmp   rax
.Lx289_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx289_2
.Lx289_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx289_2
.Lx289_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n114_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx289_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n114_match_arbno_as
.Lx289_6:
                        add              rsp, 16
                                                                                        jmp   n114_match_arbno_af
n134_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   main_γ
n135_lit_string_β:
                                                                                        jmp   main_ω
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx291_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx291_10
.Lx291_9:
                        xor              eax, eax
.Lx291_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx291_11:
                        test             rax, rax
                                                                                        jz    .Lx291_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx291_4]
                        lea              rdx, [rip + .Lx291_5]
                                                                                        jmp   rax
.Lx291_4:
                                                                                        jmp   n120_match_arbno_as
.Lx291_5:
                                                                                        jmp   n120_match_arbno_af
.Lx291_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx291_2:
                        test             rax, rax
                                                                                        je    .Lx291_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_7]
                        lea              rdx, [rip + .Lx291_8]
                                                                                        jmp   rax
.Lx291_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx291_2
.Lx291_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx291_2
.Lx291_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n120_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx291_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n120_match_arbno_as
.Lx291_6:
                        add              rsp, 16
                                                                                        jmp   n120_match_arbno_af
n136_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   main_γ
n137_lit_string_β:
                                                                                        jmp   main_ω
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx293_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx293_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx293_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx293_10
.Lx293_9:
                        xor              eax, eax
.Lx293_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx293_11:
                        test             rax, rax
                                                                                        jz    .Lx293_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx293_4]
                        lea              rdx, [rip + .Lx293_5]
                                                                                        jmp   rax
.Lx293_4:
                                                                                        jmp   n125_match_arbno_as
.Lx293_5:
                                                                                        jmp   n125_match_arbno_af
.Lx293_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx293_2
.Lx293_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx293_2
.Lx293_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n125_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx293_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n125_match_arbno_as
.Lx293_6:
                        add              rsp, 16
                                                                                        jmp   n125_match_arbno_af
n138_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   main_γ
n139_lit_string_β:
                                                                                        jmp   main_ω
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n141_lit_string_α
#=======================================================================================================================
#         W = LEN(3)
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n142_call_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn298:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_string_α
                                                                                        jmp   n143_assign_α
n142_call_β:
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n144_lit_string_α
#=======================================================================================================================
#         S1 = "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_assign_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n146_lit_string_α
#=======================================================================================================================
#         S2 = "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_assign_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n148_lit_string_α
#=======================================================================================================================
#         S3 = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n149_assign_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n150_lit_string_α
#=======================================================================================================================
#         S4 = "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_assign_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n152_lit_string_α
#=======================================================================================================================
#         S5 = "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n153_assign_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n154_var_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*P) RPOS(0)     :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n155_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n155_match_head_α:
                        mov              qword ptr [rbp + 416], r13
                        mov              qword ptr [rbp + 424], r14
                        mov              qword ptr [rbp + 432], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax
                        mov              qword ptr [rbp + 408], rbp
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 384], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax
                        mov              dword ptr [rbp + 368], 0
.Lx312_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n156_match_sequence_α
n155_match_head_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx312_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx312_1
                                                                                        jmp   .Lx312_0
.Lx312_1:
                        mov              rax, qword ptr [rbp + 376]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r10, qword ptr [1879048192]
.Lx312_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]
                        mov              r14, qword ptr [rbp + 424]
                        mov              r15, qword ptr [rbp + 432]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_match_sequence_α:
                        mov              dword ptr [rbp + 448], r14d
                                                                                        jmp   n158_lit_integer_α
n156_match_sequence_as:
                                                                                        jmp   n157_match_release_α
n156_match_sequence_β:
                                                                                        jmp   n162_match_rpos_β
n156_match_sequence_af:
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_release_α:
                        mov              rax, qword ptr [rbp + 376]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx316_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx316_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx316_1:
                        test             rax, rax
                                                                                        je    .Lx316_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx316_3]
                        lea              rdx, [rip + .Lx316_4]
                                                                                        jmp   rax
.Lx316_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx316_1
.Lx316_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx316_1
.Lx316_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx316_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx316_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]
                        mov              r14, qword ptr [rbp + 424]
                        mov              r15, qword ptr [rbp + 432]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n159_match_pos_α
n158_lit_integer_β:
                                                                                        jmp   n155_match_head_β
.Lx317_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n159_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n155_match_head_β
                                                                                        jmp   n160_match_arbno_α
n159_match_pos_β:
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n160_match_arbno_α:
                        mov              dword ptr [rbp + 496], r14d
                        mov              dword ptr [rbp + 500], r14d
                        mov              dword ptr [rbp + 504], 0
                        mov              qword ptr [rbp + 520], rsp
                        mov              qword ptr [rbp + 512], 0
                                                                                        jmp   n161_lit_integer_α
n160_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 500]
                        mov              rax, qword ptr [rbp + 512]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 512], rsp
                        mov              rbp, rsp
                        add              rbp, -504
                                                                                        jmp   n163_match_defer_α
n160_match_arbno_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              r14d, eax
                                                                                        je    n163_match_defer_β
                        mov              rbp, qword ptr [rbp + 504]
                        mov              eax, dword ptr [rbp + 504]
                        add              eax, 1
                        mov              dword ptr [rbp + 504], eax
                        mov              dword ptr [rbp + 500], r14d
                                                                                        jmp   n161_lit_integer_α
n160_match_arbno_af:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 504]
                        test             ecx, ecx
                                                                                        jz    .Lx320_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 504], ecx
                        mov              qword ptr [rbp + 512], rax
                        lea              rbp, [rax + -504]
                                                                                        jmp   n163_match_defer_β
.Lx320_2:
                        mov              r14d, dword ptr [rbp + 496]
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   n159_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n162_match_rpos_α
n161_lit_integer_β:
                                                                                        jmp   n160_match_arbno_β
.Lx321_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n160_match_arbno_β
                                                                                        jmp   n157_match_release_α
n162_match_rpos_β:
                                                                                        jmp   n160_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx323_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx323_10
.Lx323_9:
                        xor              eax, eax
.Lx323_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx323_11:
                        test             rax, rax
                                                                                        jz    .Lx323_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx323_4]
                        lea              rdx, [rip + .Lx323_5]
                                                                                        jmp   rax
.Lx323_4:
                                                                                        jmp   n160_match_arbno_as
.Lx323_5:
                                                                                        jmp   n160_match_arbno_af
.Lx323_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx323_2:
                        test             rax, rax
                                                                                        je    .Lx323_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx323_7]
                        lea              rdx, [rip + .Lx323_8]
                                                                                        jmp   rax
.Lx323_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx323_2
.Lx323_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx323_2
.Lx323_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n160_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx323_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n160_match_arbno_as
.Lx323_6:
                        add              rsp, 16
                                                                                        jmp   n160_match_arbno_af
n163_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   main_γ
n164_lit_string_β:
                                                                                        jmp   main_ω
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2064]
                        add              rsp, 2072
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2064]
                        add              rsp, 2072
                        ret
                        .section         .rodata
.S0:                    .string          "P"
.S1:                    .string          "Q"
.S2:                    .string          "R"
.S3:                    .string          "W"
                        .text
                        .section         .note.GNU-stack,"",@progbits
