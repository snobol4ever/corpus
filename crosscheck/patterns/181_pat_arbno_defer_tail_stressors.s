                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rcx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 80], r8
                        mov              dword ptr [rsp + 72], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_sequence_β]
                        mov              qword ptr [rbp + 48], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_sequence_α:
                                                                                        jmp   n2_match_span_α
n0_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_sequence_β:
                                                                                        jmp   n1_match_lit_β
n0_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n2_match_span_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n1_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx8_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx8_10
                        cmp              esi, 98
                                                                                        je    .Lx8_10
                                                                                        jmp   .Lx8_1
.Lx8_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx8_11
                        cmp              esi, 98
                                                                                        je    .Lx8_11
                                                                                        jmp   .Lx8_1
.Lx8_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx8_12
                        cmp              esi, 98
                                                                                        je    .Lx8_12
                                                                                        jmp   .Lx8_1
.Lx8_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx8_13
                        cmp              esi, 98
                                                                                        je    .Lx8_13
                                                                                        jmp   .Lx8_1
.Lx8_13:
                        add              ecx, 1
                                                                                        jmp   .Lx8_0
.Lx8_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx8_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx8_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n1_match_lit_α
n2_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 72]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 72]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 72], eax
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
                        mov              rax, qword ptr [rbp + 88]
                        mov              rbp, qword ptr [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 96]
                        lea              rsp, [rbp + 112]
                        mov              rbp, qword ptr [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx13_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_span_α
.Lx13_21:
                        lea              rax, [rip + .Lx13_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n10_match_lit_α
n9_match_alternate_s0:
                        lea              rax, [rip + .Lx13_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n9_match_alternate_as
n9_match_alternate_s1:
                        lea              rax, [rip + .Lx13_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n9_match_alternate_as
.Lx13_40:
                                                                                        jmp   n11_match_span_β
.Lx13_41:
                                                                                        jmp   n10_match_lit_β
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
n10_match_lit_α:
                                                                                        jmp   n9_match_alternate_s1
n10_match_lit_β:
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:
                        movsxd           rcx, r14d
.Lx17_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx17_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx17_10
                        cmp              esi, 98
                                                                                        je    .Lx17_10
                                                                                        jmp   .Lx17_1
.Lx17_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx17_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx17_11
                        cmp              esi, 98
                                                                                        je    .Lx17_11
                                                                                        jmp   .Lx17_1
.Lx17_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx17_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx17_12
                        cmp              esi, 98
                                                                                        je    .Lx17_12
                                                                                        jmp   .Lx17_1
.Lx17_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx17_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx17_13
                        cmp              esi, 98
                                                                                        je    .Lx17_13
                                                                                        jmp   .Lx17_1
.Lx17_13:
                        add              ecx, 1
                                                                                        jmp   .Lx17_0
.Lx17_1:
                        cmp              ecx, r14d
                                                                                        jle   n9_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n9_match_alternate_s0
n11_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n9_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
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
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n18_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n20_match_alternate_α
n18_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n18_match_sequence_β:
                                                                                        jmp   n19_match_lit_β
n18_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n20_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 121
                                                                                        jne   n20_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n20_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx28_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n22_match_lit_α
.Lx28_21:
                        lea              rax, [rip + .Lx28_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n21_match_span_α
n20_match_alternate_s0:
                        lea              rax, [rip + .Lx28_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n20_match_alternate_as
n20_match_alternate_s1:
                        lea              rax, [rip + .Lx28_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n20_match_alternate_as
.Lx28_40:
                                                                                        jmp   n22_match_lit_β
.Lx28_41:
                                                                                        jmp   n21_match_span_β
n20_match_alternate_as:
                                                                                        jmp   n19_match_lit_α
n20_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n20_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx28_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_match_span_α:
                        movsxd           rcx, r14d
.Lx30_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx30_10
                        cmp              esi, 98
                                                                                        je    .Lx30_10
                                                                                        jmp   .Lx30_1
.Lx30_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx30_11
                        cmp              esi, 98
                                                                                        je    .Lx30_11
                                                                                        jmp   .Lx30_1
.Lx30_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx30_12
                        cmp              esi, 98
                                                                                        je    .Lx30_12
                                                                                        jmp   .Lx30_1
.Lx30_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx30_13
                        cmp              esi, 98
                                                                                        je    .Lx30_13
                                                                                        jmp   .Lx30_1
.Lx30_13:
                        add              ecx, 1
                                                                                        jmp   .Lx30_0
.Lx30_1:
                        cmp              ecx, r14d
                                                                                        jle   n20_match_alternate_af
                        mov              dword ptr [rbp + 84], r14d
                        mov              r14d, ecx
                                                                                        jmp   n20_match_alternate_s1
n21_match_span_β:
                        mov              r14d, dword ptr [rbp + 84]
                                                                                        jmp   n20_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n20_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n20_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n20_match_alternate_s0
n22_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n20_match_alternate_af
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
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
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
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
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
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         P = SPAN("ab") "c"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_call_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
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
.Lrkfnzd167:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd167]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx166_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
.Lx166_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_assign_α
n36_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n38_lit_string_α
#=======================================================================================================================
#         Q = SPAN("ab") | ""
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_call_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd171:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd171]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx170_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_lit_string_α
.Lx170_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_assign_α
n39_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n41_lit_string_α
#=======================================================================================================================
#         R = ("x" | SPAN("ab")) "y"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd175:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd175]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx174_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_lit_string_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_assign_α
n42_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n44_lit_string_α
#=======================================================================================================================
#         W = LEN(3)
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_call_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd179:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd179]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n47_lit_string_α
.Lx178_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_assign_α
n45_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 32
                                                                                        jmp   n47_lit_string_α
#=======================================================================================================================
#         S1 = "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n49_lit_string_α
#=======================================================================================================================
#         S2 = "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n51_lit_string_α
#=======================================================================================================================
#         S3 = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_assign_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_α
#=======================================================================================================================
#         S4 = "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_assign_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 16
                                                                                        jmp   n55_lit_string_α
#=======================================================================================================================
#         S5 = "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_assign_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 16
                                                                                        jmp   n57_var_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*P) RPOS(0)     :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 608
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n58_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 416], r13
                        mov              qword ptr [rbp + 424], r14
                        mov              qword ptr [rbp + 432], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax
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
                        mov              qword ptr [rbp + 384], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax
                        mov              dword ptr [rbp + 368], 0
.Lx193_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n59_match_sequence_α
n58_match_head_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx193_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx193_1
                                                                                        jmp   .Lx193_0
.Lx193_1:
                        mov              rax, qword ptr [rbp + 376]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r10, qword ptr [1879048192]
.Lx193_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx193_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]
                        mov              r14, qword ptr [rbp + 424]
                        mov              r15, qword ptr [rbp + 432]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                        add              rsp, 608
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_match_sequence_α:
                        mov              dword ptr [rbp + 448], r14d
                                                                                        jmp   n68_lit_integer_α
n59_match_sequence_as:
                                                                                        jmp   n60_match_release_α
n59_match_sequence_β:
                                                                                        jmp   n64_match_rpos_β
n59_match_sequence_af:
                                                                                        jmp   n58_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_release_α:
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
.Lx197_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx197_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx197_1:
                        test             rax, rax
                                                                                        je    .Lx197_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx197_3]
                        lea              rdx, [rip + .Lx197_4]
                                                                                        jmp   rax
.Lx197_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx197_1
.Lx197_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx197_1
.Lx197_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx197_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx197_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]
                        mov              r14, qword ptr [rbp + 424]
                        mov              r15, qword ptr [rbp + 432]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                        add              rsp, 608
                                                                                        jmp   n61_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n72_var_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rsp + 576], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n64_match_rpos_α
n63_lit_integer_β:
                                                                                        jmp   n65_match_arbno_β
.Lx200_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n65_match_arbno_β
                                                                                        jmp   n60_match_release_α
n64_match_rpos_β:
                                                                                        jmp   n65_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_arbno_α:
                        mov              dword ptr [rbp + 496], r14d
                        mov              dword ptr [rbp + 500], r14d
                        mov              dword ptr [rbp + 504], 0
                        mov              qword ptr [rbp + 520], rsp
                        mov              qword ptr [rbp + 512], 0
                                                                                        jmp   n63_lit_integer_α
n65_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 500]
                        mov              rax, qword ptr [rbp + 512]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 512], rsp
                        mov              rbp, rsp
                        add              rbp, -504
                                                                                        jmp   n67_match_defer_α
n65_match_arbno_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              r14d, eax
                                                                                        je    n67_match_defer_β
                        mov              rbp, qword ptr [rbp + 504]
                        mov              eax, dword ptr [rbp + 504]
                        add              eax, 1
                        mov              dword ptr [rbp + 504], eax
                        mov              dword ptr [rbp + 500], r14d
                                                                                        jmp   n63_lit_integer_α
n65_match_arbno_af:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 504]
                        test             ecx, ecx
                                                                                        jz    .Lx203_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 504], ecx
                        mov              qword ptr [rbp + 512], rax
                        lea              rbp, [rax + -504]
                                                                                        jmp   n67_match_defer_β
.Lx203_2:
                        mov              r14d, dword ptr [rbp + 496]
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   n69_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   main_γ
n66_lit_string_β:
                                                                                        jmp   main_ω
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx205_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx205_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx205_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx205_10
.Lx205_9:
                        xor              eax, eax
.Lx205_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx205_11:
                        test             rax, rax
                                                                                        jz    .Lx205_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx205_4]
                        lea              rdx, [rip + .Lx205_5]
                                                                                        jmp   rax
.Lx205_4:
                                                                                        jmp   n65_match_arbno_as
.Lx205_5:
                                                                                        jmp   n65_match_arbno_af
.Lx205_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx205_2:
                        test             rax, rax
                                                                                        je    .Lx205_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx205_7]
                        lea              rdx, [rip + .Lx205_8]
                                                                                        jmp   rax
.Lx205_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx205_2
.Lx205_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx205_2
.Lx205_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n65_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx205_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n65_match_arbno_as
.Lx205_6:
                        add              rsp, 16
                                                                                        jmp   n65_match_arbno_af
n67_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rsp + 464], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n69_match_pos_α
n68_lit_integer_β:
                                                                                        jmp   n58_match_head_β
.Lx206_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n69_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n58_match_head_β
                                                                                        jmp   n65_match_arbno_α
n69_match_pos_β:
                                                                                        jmp   n58_match_head_β
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_assign_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx209_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n72_var_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*P) RPOS(0)    :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        sub              rsp, 896
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n73_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 696], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 704], r13
                        mov              qword ptr [rbp + 712], r14
                        mov              qword ptr [rbp + 720], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 728], rax
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
                        mov              qword ptr [rbp + 672], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax
                        mov              dword ptr [rbp + 656], 0
.Lx212_0:
                        mov              r14d, dword ptr [rbp + 656]
                                                                                        jmp   n74_match_sequence_α
n73_match_head_β:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, r15d
                                                                                        jg    .Lx212_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx212_1
                                                                                        jmp   .Lx212_0
.Lx212_1:
                        mov              rax, qword ptr [rbp + 664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 672]
                        mov              r10, qword ptr [1879048192]
.Lx212_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx212_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]
                        add              rsp, 896
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_match_sequence_α:
                        mov              dword ptr [rbp + 736], r14d
                                                                                        jmp   n83_lit_integer_α
n74_match_sequence_as:
                                                                                        jmp   n75_match_release_α
n74_match_sequence_β:
                                                                                        jmp   n79_match_rpos_β
n74_match_sequence_af:
                                                                                        jmp   n73_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_release_α:
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
.Lx216_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx216_1:
                        test             rax, rax
                                                                                        je    .Lx216_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx216_3]
                        lea              rdx, [rip + .Lx216_4]
                                                                                        jmp   rax
.Lx216_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx216_1
.Lx216_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx216_1
.Lx216_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx216_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]
                        add              rsp, 896
                                                                                        jmp   n76_lit_string_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_assign_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rsp + 864], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n79_match_rpos_α
n78_lit_integer_β:
                                                                                        jmp   n80_match_arbno_β
.Lx219_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n79_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n80_match_arbno_β
                                                                                        jmp   n75_match_release_α
n79_match_rpos_β:
                                                                                        jmp   n80_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n80_match_arbno_α:
                        mov              dword ptr [rbp + 784], r14d
                        mov              dword ptr [rbp + 788], r14d
                        mov              dword ptr [rbp + 792], 0
                        mov              qword ptr [rbp + 808], rsp
                        mov              qword ptr [rbp + 800], 0
                                                                                        jmp   n78_lit_integer_α
n80_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 788]
                        mov              rax, qword ptr [rbp + 800]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 800], rsp
                        mov              rbp, rsp
                        add              rbp, -792
                                                                                        jmp   n82_match_defer_α
n80_match_arbno_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              r14d, eax
                                                                                        je    n82_match_defer_β
                        mov              rbp, qword ptr [rbp + 792]
                        mov              eax, dword ptr [rbp + 792]
                        add              eax, 1
                        mov              dword ptr [rbp + 792], eax
                        mov              dword ptr [rbp + 788], r14d
                                                                                        jmp   n78_lit_integer_α
n80_match_arbno_af:
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              rsp, [rbp + 872]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 792]
                        test             ecx, ecx
                                                                                        jz    .Lx222_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 792], ecx
                        mov              qword ptr [rbp + 800], rax
                        lea              rbp, [rax + -792]
                                                                                        jmp   n82_match_defer_β
.Lx222_2:
                        mov              r14d, dword ptr [rbp + 784]
                        mov              rsp, qword ptr [rbp + 808]
                                                                                        jmp   n84_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 848], 1
                        mov              dword ptr [rsp + 852], 5
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   main_γ
n81_lit_string_β:
                                                                                        jmp   main_ω
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n82_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx224_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx224_10
.Lx224_9:
                        xor              eax, eax
.Lx224_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx224_11:
                        test             rax, rax
                                                                                        jz    .Lx224_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx224_4]
                        lea              rdx, [rip + .Lx224_5]
                                                                                        jmp   rax
.Lx224_4:
                                                                                        jmp   n80_match_arbno_as
.Lx224_5:
                                                                                        jmp   n80_match_arbno_af
.Lx224_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx224_2:
                        test             rax, rax
                                                                                        je    .Lx224_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx224_7]
                        lea              rdx, [rip + .Lx224_8]
                                                                                        jmp   rax
.Lx224_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n80_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx224_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n80_match_arbno_as
.Lx224_6:
                        add              rsp, 16
                                                                                        jmp   n80_match_arbno_af
n82_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rsp + 752], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n84_match_pos_α
n83_lit_integer_β:
                                                                                        jmp   n73_match_head_β
.Lx225_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n84_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n73_match_head_β
                                                                                        jmp   n80_match_arbno_α
n84_match_pos_β:
                                                                                        jmp   n73_match_head_β
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx228_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n87_var_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*Q) RPOS(0)    :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 1184
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n88_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 992], r13
                        mov              qword ptr [rbp + 1000], r14
                        mov              qword ptr [rbp + 1008], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1016], rax
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
                        mov              qword ptr [rbp + 960], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 952], rax
                        mov              dword ptr [rbp + 944], 0
.Lx231_0:
                        mov              r14d, dword ptr [rbp + 944]
                                                                                        jmp   n89_match_sequence_α
n88_match_head_β:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, r15d
                                                                                        jg    .Lx231_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx231_1
                                                                                        jmp   .Lx231_0
.Lx231_1:
                        mov              rax, qword ptr [rbp + 952]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 960]
                        mov              r10, qword ptr [1879048192]
.Lx231_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx231_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]
                        add              rsp, 1184
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_match_sequence_α:
                        mov              dword ptr [rbp + 1024], r14d
                                                                                        jmp   n98_lit_integer_α
n89_match_sequence_as:
                                                                                        jmp   n90_match_release_α
n89_match_sequence_β:
                                                                                        jmp   n94_match_rpos_β
n89_match_sequence_af:
                                                                                        jmp   n88_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_release_α:
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
.Lx235_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx235_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx235_1:
                        test             rax, rax
                                                                                        je    .Lx235_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx235_1
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx235_1
.Lx235_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx235_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx235_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]
                        mov              r14, qword ptr [rbp + 1000]
                        mov              r15, qword ptr [rbp + 1008]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]
                        add              rsp, 1184
                                                                                        jmp   n91_lit_string_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_assign_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx237_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n102_var_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n94_match_rpos_α
n93_lit_integer_β:
                                                                                        jmp   n95_match_arbno_β
.Lx238_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n95_match_arbno_β
                                                                                        jmp   n90_match_release_α
n94_match_rpos_β:
                                                                                        jmp   n95_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_arbno_α:
                        mov              dword ptr [rbp + 1072], r14d
                        mov              dword ptr [rbp + 1076], r14d
                        mov              dword ptr [rbp + 1080], 0
                        mov              qword ptr [rbp + 1096], rsp
                        mov              qword ptr [rbp + 1088], 0
                                                                                        jmp   n93_lit_integer_α
n95_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1076]
                        mov              rax, qword ptr [rbp + 1088]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1088], rsp
                        mov              rbp, rsp
                        add              rbp, -1080
                                                                                        jmp   n97_match_defer_α
n95_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              r14d, eax
                                                                                        je    n97_match_defer_β
                        mov              rbp, qword ptr [rbp + 1080]
                        mov              eax, dword ptr [rbp + 1080]
                        add              eax, 1
                        mov              dword ptr [rbp + 1080], eax
                        mov              dword ptr [rbp + 1076], r14d
                                                                                        jmp   n93_lit_integer_α
n95_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              rsp, [rbp + 1160]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1080]
                        test             ecx, ecx
                                                                                        jz    .Lx241_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1080], ecx
                        mov              qword ptr [rbp + 1088], rax
                        lea              rbp, [rax + -1080]
                                                                                        jmp   n97_match_defer_β
.Lx241_2:
                        mov              r14d, dword ptr [rbp + 1072]
                        mov              rsp, qword ptr [rbp + 1096]
                                                                                        jmp   n99_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 1136], 1
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   main_γ
n96_lit_string_β:
                                                                                        jmp   main_ω
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n97_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx243_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx243_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx243_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx243_10
.Lx243_9:
                        xor              eax, eax
.Lx243_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx243_11:
                        test             rax, rax
                                                                                        jz    .Lx243_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx243_4]
                        lea              rdx, [rip + .Lx243_5]
                                                                                        jmp   rax
.Lx243_4:
                                                                                        jmp   n95_match_arbno_as
.Lx243_5:
                                                                                        jmp   n95_match_arbno_af
.Lx243_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx243_2:
                        test             rax, rax
                                                                                        je    .Lx243_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx243_7]
                        lea              rdx, [rip + .Lx243_8]
                                                                                        jmp   rax
.Lx243_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx243_2
.Lx243_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx243_2
.Lx243_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n95_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx243_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n95_match_arbno_as
.Lx243_6:
                        add              rsp, 16
                                                                                        jmp   n95_match_arbno_af
n97_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n99_match_pos_α
n98_lit_integer_β:
                                                                                        jmp   n88_match_head_β
.Lx244_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n88_match_head_β
                                                                                        jmp   n95_match_arbno_α
n99_match_pos_β:
                                                                                        jmp   n88_match_head_β
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_assign_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx247_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n102_var_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*R) RPOS(0)    :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        sub              rsp, 1472
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n103_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1280], r13
                        mov              qword ptr [rbp + 1288], r14
                        mov              qword ptr [rbp + 1296], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1304], rax
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
                        mov              qword ptr [rbp + 1248], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1240], rax
                        mov              dword ptr [rbp + 1232], 0
.Lx250_0:
                        mov              r14d, dword ptr [rbp + 1232]
                                                                                        jmp   n104_match_sequence_α
n103_match_head_β:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, r15d
                                                                                        jg    .Lx250_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx250_1
                                                                                        jmp   .Lx250_0
.Lx250_1:
                        mov              rax, qword ptr [rbp + 1240]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1248]
                        mov              r10, qword ptr [1879048192]
.Lx250_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx250_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]
                        add              rsp, 1472
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_match_sequence_α:
                        mov              dword ptr [rbp + 1312], r14d
                                                                                        jmp   n113_lit_integer_α
n104_match_sequence_as:
                                                                                        jmp   n105_match_release_α
n104_match_sequence_β:
                                                                                        jmp   n109_match_rpos_β
n104_match_sequence_af:
                                                                                        jmp   n103_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_release_α:
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
.Lx254_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx254_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx254_1:
                        test             rax, rax
                                                                                        je    .Lx254_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4]
                                                                                        jmp   rax
.Lx254_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx254_1
.Lx254_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx254_1
.Lx254_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx254_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx254_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]
                        add              rsp, 1472
                                                                                        jmp   n106_lit_string_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_assign_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n117_var_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n109_match_rpos_α
n108_lit_integer_β:
                                                                                        jmp   n110_match_arbno_β
.Lx257_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n110_match_arbno_β
                                                                                        jmp   n105_match_release_α
n109_match_rpos_β:
                                                                                        jmp   n110_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n110_match_arbno_α:
                        mov              dword ptr [rbp + 1360], r14d
                        mov              dword ptr [rbp + 1364], r14d
                        mov              dword ptr [rbp + 1368], 0
                        mov              qword ptr [rbp + 1384], rsp
                        mov              qword ptr [rbp + 1376], 0
                                                                                        jmp   n108_lit_integer_α
n110_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1364]
                        mov              rax, qword ptr [rbp + 1376]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1376], rsp
                        mov              rbp, rsp
                        add              rbp, -1368
                                                                                        jmp   n112_match_defer_α
n110_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              r14d, eax
                                                                                        je    n112_match_defer_β
                        mov              rbp, qword ptr [rbp + 1368]
                        mov              eax, dword ptr [rbp + 1368]
                        add              eax, 1
                        mov              dword ptr [rbp + 1368], eax
                        mov              dword ptr [rbp + 1364], r14d
                                                                                        jmp   n108_lit_integer_α
n110_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              rsp, [rbp + 1448]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1368]
                        test             ecx, ecx
                                                                                        jz    .Lx260_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1368], ecx
                        mov              qword ptr [rbp + 1376], rax
                        lea              rbp, [rax + -1368]
                                                                                        jmp   n112_match_defer_β
.Lx260_2:
                        mov              r14d, dword ptr [rbp + 1360]
                        mov              rsp, qword ptr [rbp + 1384]
                                                                                        jmp   n114_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rsp + 1424], 1
                        mov              dword ptr [rsp + 1428], 5
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   main_γ
n111_lit_string_β:
                                                                                        jmp   main_ω
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n112_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx262_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx262_10
.Lx262_9:
                        xor              eax, eax
.Lx262_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx262_11:
                        test             rax, rax
                                                                                        jz    .Lx262_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx262_4]
                        lea              rdx, [rip + .Lx262_5]
                                                                                        jmp   rax
.Lx262_4:
                                                                                        jmp   n110_match_arbno_as
.Lx262_5:
                                                                                        jmp   n110_match_arbno_af
.Lx262_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx262_2:
                        test             rax, rax
                                                                                        je    .Lx262_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx262_7]
                        lea              rdx, [rip + .Lx262_8]
                                                                                        jmp   rax
.Lx262_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx262_2
.Lx262_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx262_2
.Lx262_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n110_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx262_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n110_match_arbno_as
.Lx262_6:
                        add              rsp, 16
                                                                                        jmp   n110_match_arbno_af
n112_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rsp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n114_match_pos_α
n113_lit_integer_β:
                                                                                        jmp   n103_match_head_β
.Lx263_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n114_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n103_match_head_β
                                                                                        jmp   n110_match_arbno_α
n114_match_pos_β:
                                                                                        jmp   n103_match_head_β
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_assign_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n117_var_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)    :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        sub              rsp, 1760
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n118_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n118_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1560], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1568], r13
                        mov              qword ptr [rbp + 1576], r14
                        mov              qword ptr [rbp + 1584], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1592], rax
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
                        mov              qword ptr [rbp + 1536], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1528], rax
                        mov              dword ptr [rbp + 1520], 0
.Lx269_0:
                        mov              r14d, dword ptr [rbp + 1520]
                                                                                        jmp   n119_match_sequence_α
n118_match_head_β:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, r15d
                                                                                        jg    .Lx269_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx269_1
                                                                                        jmp   .Lx269_0
.Lx269_1:
                        mov              rax, qword ptr [rbp + 1528]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1536]
                        mov              r10, qword ptr [1879048192]
.Lx269_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx269_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]
                        mov              r14, qword ptr [rbp + 1576]
                        mov              r15, qword ptr [rbp + 1584]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]
                        add              rsp, 1760
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_sequence_α:
                        mov              dword ptr [rbp + 1600], r14d
                                                                                        jmp   n128_lit_integer_α
n119_match_sequence_as:
                                                                                        jmp   n120_match_release_α
n119_match_sequence_β:
                                                                                        jmp   n124_match_rpos_β
n119_match_sequence_af:
                                                                                        jmp   n118_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n120_match_release_α:
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
.Lx273_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx273_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx273_1:
                        test             rax, rax
                                                                                        je    .Lx273_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx273_3]
                        lea              rdx, [rip + .Lx273_4]
                                                                                        jmp   rax
.Lx273_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx273_1
.Lx273_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx273_1
.Lx273_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx273_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx273_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]
                        mov              r14, qword ptr [rbp + 1576]
                        mov              r15, qword ptr [rbp + 1584]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]
                        add              rsp, 1760
                                                                                        jmp   n121_lit_string_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n122_assign_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n132_var_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n124_match_rpos_α
n123_lit_integer_β:
                                                                                        jmp   n125_match_arbno_β
.Lx276_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n124_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n125_match_arbno_β
                                                                                        jmp   n120_match_release_α
n124_match_rpos_β:
                                                                                        jmp   n125_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_arbno_α:
                        mov              dword ptr [rbp + 1648], r14d
                        mov              dword ptr [rbp + 1652], r14d
                        mov              dword ptr [rbp + 1656], 0
                        mov              qword ptr [rbp + 1672], rsp
                        mov              qword ptr [rbp + 1664], 0
                                                                                        jmp   n123_lit_integer_α
n125_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1652]
                        mov              rax, qword ptr [rbp + 1664]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1664], rsp
                        mov              rbp, rsp
                        add              rbp, -1656
                                                                                        jmp   n127_match_defer_α
n125_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              r14d, eax
                                                                                        je    n127_match_defer_β
                        mov              rbp, qword ptr [rbp + 1656]
                        mov              eax, dword ptr [rbp + 1656]
                        add              eax, 1
                        mov              dword ptr [rbp + 1656], eax
                        mov              dword ptr [rbp + 1652], r14d
                                                                                        jmp   n123_lit_integer_α
n125_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              rsp, [rbp + 1736]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1656]
                        test             ecx, ecx
                                                                                        jz    .Lx279_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1656], ecx
                        mov              qword ptr [rbp + 1664], rax
                        lea              rbp, [rax + -1656]
                                                                                        jmp   n127_match_defer_β
.Lx279_2:
                        mov              r14d, dword ptr [rbp + 1648]
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   n129_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rsp + 1712], 1
                        mov              dword ptr [rsp + 1716], 5
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   main_γ
n126_lit_string_β:
                                                                                        jmp   main_ω
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n127_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx281_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx281_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx281_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx281_10
.Lx281_9:
                        xor              eax, eax
.Lx281_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx281_11:
                        test             rax, rax
                                                                                        jz    .Lx281_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx281_4]
                        lea              rdx, [rip + .Lx281_5]
                                                                                        jmp   rax
.Lx281_4:
                                                                                        jmp   n125_match_arbno_as
.Lx281_5:
                                                                                        jmp   n125_match_arbno_af
.Lx281_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx281_2:
                        test             rax, rax
                                                                                        je    .Lx281_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx281_7]
                        lea              rdx, [rip + .Lx281_8]
                                                                                        jmp   rax
.Lx281_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx281_2
.Lx281_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx281_2
.Lx281_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n125_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx281_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n125_match_arbno_as
.Lx281_6:
                        add              rsp, 16
                                                                                        jmp   n125_match_arbno_af
n127_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rsp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n129_match_pos_α
n128_lit_integer_β:
                                                                                        jmp   n118_match_head_β
.Lx282_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n129_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n118_match_head_β
                                                                                        jmp   n125_match_arbno_α
n129_match_pos_β:
                                                                                        jmp   n118_match_head_β
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_assign_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx285_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n132_var_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N5      S1 "ab" ARBNO(*P) "bc" RPOS(0) :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        sub              rsp, 2032
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n133_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1848], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1856], r13
                        mov              qword ptr [rbp + 1864], r14
                        mov              qword ptr [rbp + 1872], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1880], rax
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
                        mov              qword ptr [rbp + 1824], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1816], rax
                        mov              dword ptr [rbp + 1808], 0
.Lx288_0:
                        mov              r14d, dword ptr [rbp + 1808]
                                                                                        jmp   n134_match_sequence_α
n133_match_head_β:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, r15d
                                                                                        jg    .Lx288_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx288_1
                                                                                        jmp   .Lx288_0
.Lx288_1:
                        mov              rax, qword ptr [rbp + 1816]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1824]
                        mov              r10, qword ptr [1879048192]
.Lx288_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx288_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]
                        mov              r14, qword ptr [rbp + 1864]
                        mov              r15, qword ptr [rbp + 1872]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]
                        add              rsp, 2032
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_match_sequence_α:
                        mov              dword ptr [rbp + 1888], r14d
                                                                                        jmp   n144_match_lit_α
n134_match_sequence_as:
                                                                                        jmp   n135_match_release_α
n134_match_sequence_β:
                                                                                        jmp   n139_match_rpos_β
n134_match_sequence_af:
                                                                                        jmp   n133_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_release_α:
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
.Lx292_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx292_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx292_1:
                        test             rax, rax
                                                                                        je    .Lx292_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx292_3]
                        lea              rdx, [rip + .Lx292_4]
                                                                                        jmp   rax
.Lx292_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx292_1
.Lx292_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx292_1
.Lx292_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx292_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx292_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]
                        mov              r14, qword ptr [rbp + 1864]
                        mov              r15, qword ptr [rbp + 1872]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]
                        add              rsp, 2032
                                                                                        jmp   n136_lit_string_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_assign_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n139_match_rpos_α
n138_lit_integer_β:
                                                                                        jmp   n140_match_lit_β
.Lx295_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n139_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n140_match_lit_β
                                                                                        jmp   n135_match_release_α
n139_match_rpos_β:
                                                                                        jmp   n140_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n140_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n141_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n141_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99
                                                                                        jne   n141_match_arbno_β
                        add              r14d, 2
                                                                                        jmp   n138_lit_integer_α
n140_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n141_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n141_match_arbno_α:
                        mov              dword ptr [rbp + 1920], r14d
                        mov              dword ptr [rbp + 1924], r14d
                        mov              dword ptr [rbp + 1928], 0
                        mov              qword ptr [rbp + 1944], rsp
                        mov              qword ptr [rbp + 1936], 0
                                                                                        jmp   n140_match_lit_α
n141_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1924]
                        mov              rax, qword ptr [rbp + 1936]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1936], rsp
                        mov              rbp, rsp
                        add              rbp, -1928
                                                                                        jmp   n143_match_defer_α
n141_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              r14d, eax
                                                                                        je    n143_match_defer_β
                        mov              rbp, qword ptr [rbp + 1928]
                        mov              eax, dword ptr [rbp + 1928]
                        add              eax, 1
                        mov              dword ptr [rbp + 1928], eax
                        mov              dword ptr [rbp + 1924], r14d
                                                                                        jmp   n140_match_lit_α
n141_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              rsp, [rbp + 2008]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1928]
                        test             ecx, ecx
                                                                                        jz    .Lx300_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1928], ecx
                        mov              qword ptr [rbp + 1936], rax
                        lea              rbp, [rax + -1928]
                                                                                        jmp   n143_match_defer_β
.Lx300_2:
                        mov              r14d, dword ptr [rbp + 1920]
                        mov              rsp, qword ptr [rbp + 1944]
                                                                                        jmp   n144_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rsp + 1984], 1
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   main_γ
n142_lit_string_β:
                                                                                        jmp   main_ω
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx302_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx302_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx302_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx302_10
.Lx302_9:
                        xor              eax, eax
.Lx302_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx302_11:
                        test             rax, rax
                                                                                        jz    .Lx302_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx302_4]
                        lea              rdx, [rip + .Lx302_5]
                                                                                        jmp   rax
.Lx302_4:
                                                                                        jmp   n141_match_arbno_as
.Lx302_5:
                                                                                        jmp   n141_match_arbno_af
.Lx302_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx302_2:
                        test             rax, rax
                                                                                        je    .Lx302_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx302_7]
                        lea              rdx, [rip + .Lx302_8]
                                                                                        jmp   rax
.Lx302_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx302_2
.Lx302_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx302_2
.Lx302_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n141_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx302_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n141_match_arbno_as
.Lx302_6:
                        add              rsp, 16
                                                                                        jmp   n141_match_arbno_af
n143_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n144_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n133_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n133_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n133_match_head_β
                        add              r14d, 2
                                                                                        jmp   n141_match_arbno_α
n144_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n133_match_head_β
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n146_assign_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n147_goto_α:
                                                                                        jmp   n61_lit_string_α
n147_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_goto_α:
                                                                                        jmp   n70_lit_string_α
n148_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_goto_α:
                                                                                        jmp   n72_var_α
n149_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_goto_α:
                                                                                        jmp   n76_lit_string_α
n150_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_goto_α:
                                                                                        jmp   n85_lit_string_α
n151_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_goto_α:
                                                                                        jmp   n87_var_α
n152_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_goto_α:
                                                                                        jmp   n91_lit_string_α
n153_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_goto_α:
                                                                                        jmp   n100_lit_string_α
n154_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_goto_α:
                                                                                        jmp   n102_var_α
n155_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_α:
                                                                                        jmp   n106_lit_string_α
n156_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_goto_α:
                                                                                        jmp   n115_lit_string_α
n157_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_goto_α:
                                                                                        jmp   n117_var_α
n158_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_goto_α:
                                                                                        jmp   n121_lit_string_α
n159_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:
                                                                                        jmp   n130_lit_string_α
n160_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:
                                                                                        jmp   n132_var_α
n161_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:
                                                                                        jmp   n136_lit_string_α
n162_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_α:
                                                                                        jmp   n145_lit_string_α
n163_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_goto_α:
                                                                                        jmp   main_γ
n164_goto_β:
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
.S0:                    .string          "P"
.S1:                    .string          "Q"
.S2:                    .string          "R"
.S3:                    .string          "W"
                        .text
                        .section         .note.GNU-stack,"",@progbits
