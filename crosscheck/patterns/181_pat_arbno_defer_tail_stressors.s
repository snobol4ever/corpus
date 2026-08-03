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
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rbp + 72]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rbp + 72]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rbp + 72], eax
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
                        lea              rax, [rip + n11_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx15_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n13_match_span_α
.Lx15_21:
                        lea              rax, [rip + .Lx15_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_lit_α
n11_match_alternate_s0:
                        lea              rax, [rip + .Lx15_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s1:
                        lea              rax, [rip + .Lx15_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
.Lx15_40:
                                                                                        jmp   n13_match_span_β
.Lx15_41:
                                                                                        jmp   n12_match_lit_β
n11_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n11_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n11_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx15_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                                                                                        jmp   n11_match_alternate_s1
n12_match_lit_β:
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:
                        movsxd           rcx, r14d
.Lx19_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_10
                        cmp              esi, 98
                                                                                        je    .Lx19_10
                                                                                        jmp   .Lx19_1
.Lx19_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_11
                        cmp              esi, 98
                                                                                        je    .Lx19_11
                                                                                        jmp   .Lx19_1
.Lx19_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_12
                        cmp              esi, 98
                                                                                        je    .Lx19_12
                                                                                        jmp   .Lx19_1
.Lx19_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_13
                        cmp              esi, 98
                                                                                        je    .Lx19_13
                                                                                        jmp   .Lx19_1
.Lx19_13:
                        add              ecx, 1
                                                                                        jmp   .Lx19_0
.Lx19_1:
                        cmp              ecx, r14d
                                                                                        jle   n11_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n11_match_alternate_s0
n13_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n11_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx20_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx20_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx21_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx21_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx21_0:
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
                        lea              rax, [rip + n22_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n22_match_sequence_α:
                                                                                        jmp   n24_match_alternate_α
n22_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n22_match_sequence_β:
                                                                                        jmp   n23_match_lit_β
n22_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 121
                                                                                        jne   n24_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n23_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx32_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n26_match_lit_α
.Lx32_21:
                        lea              rax, [rip + .Lx32_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n25_match_span_α
n24_match_alternate_s0:
                        lea              rax, [rip + .Lx32_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n24_match_alternate_as
n24_match_alternate_s1:
                        lea              rax, [rip + .Lx32_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n24_match_alternate_as
.Lx32_40:
                                                                                        jmp   n26_match_lit_β
.Lx32_41:
                                                                                        jmp   n25_match_span_β
n24_match_alternate_as:
                                                                                        jmp   n23_match_lit_α
n24_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n24_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx32_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_match_span_α:
                        movsxd           rcx, r14d
.Lx34_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx34_10
                        cmp              esi, 98
                                                                                        je    .Lx34_10
                                                                                        jmp   .Lx34_1
.Lx34_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx34_11
                        cmp              esi, 98
                                                                                        je    .Lx34_11
                                                                                        jmp   .Lx34_1
.Lx34_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx34_12
                        cmp              esi, 98
                                                                                        je    .Lx34_12
                                                                                        jmp   .Lx34_1
.Lx34_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx34_13
                        cmp              esi, 98
                                                                                        je    .Lx34_13
                                                                                        jmp   .Lx34_1
.Lx34_13:
                        add              ecx, 1
                                                                                        jmp   .Lx34_0
.Lx34_1:
                        cmp              ecx, r14d
                                                                                        jle   n24_match_alternate_af
                        mov              dword ptr [rbp + 84], r14d
                        mov              r14d, ecx
                                                                                        jmp   n24_match_alternate_s1
n25_match_span_β:
                        mov              r14d, dword ptr [rbp + 84]
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n24_match_alternate_s0
n26_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx37_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx37_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx38_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx38_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx38_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx38_0:
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
                        lea              rax, [rip + n39_match_len_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_match_len_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$3_scanfail
                        add              r14d, 3
                                                                                        jmp   proc_PAT$3_scanhit
n39_match_len_β:
                        sub              r14d, 3
                                                                                        jmp   proc_PAT$3_scanfail
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx41_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx41_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx42_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx42_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx42_0:
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
#         P = SPAN("ab") "c"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_call_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
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
                                                                                        jmp   n48_statement_begin_α
.Lx232_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_assign_α
n45_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # P
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n48_statement_begin_α
#=======================================================================================================================
#         Q = SPAN("ab") | ""
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_call_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
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
.Lrkfnzd241:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd241]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx240_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n53_statement_begin_α
.Lx240_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_assign_α
n50_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # Q
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n53_statement_begin_α
#=======================================================================================================================
#         R = ("x" | SPAN("ab")) "y"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_call_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd249:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd249]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx248_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_statement_begin_α
.Lx248_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_assign_α
n55_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # R
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n58_statement_begin_α
#=======================================================================================================================
#         W = LEN(3)
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_call_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd257:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd257]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx256_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_statement_begin_α
.Lx256_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_assign_α
n60_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # W
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n63_statement_begin_α
#=======================================================================================================================
#         S1 = "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_assign_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S1
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n67_statement_begin_α
#=======================================================================================================================
#         S2 = "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_assign_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S2
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n70_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n71_statement_begin_α
#=======================================================================================================================
#         S3 = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_assign_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S3
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n75_statement_begin_α
#=======================================================================================================================
#         S4 = "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_assign_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S4
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n78_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n79_statement_begin_α
#=======================================================================================================================
#         S5 = "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_assign_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S5
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n83_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*P) RPOS(0)     :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_match_begin_α:
                        sub              rsp, 592
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              rdi, qword ptr [rsp + 592]                     # var
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 408], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 416], r13                     # outer_Σ
                        mov              qword ptr [rbp + 424], r14                     # outer_δ
                        mov              qword ptr [rbp + 432], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 384], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax                     # patstk_mark
                        mov              dword ptr [rbp + 368], 0                       # start_δ
.Lx295_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n86_match_sequence_α
n85_match_begin_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx295_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx295_1
                                                                                        jmp   .Lx295_0
.Lx295_1:
                        mov              rax, qword ptr [rbp + 376]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r10, qword ptr [1879048192]
.Lx295_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx295_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 608
                                                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_match_sequence_α:
                        mov              dword ptr [rbp + 448], r14d
                                                                                        jmp   n98_lit_integer_α
n86_match_sequence_as:
                                                                                        jmp   n87_match_end_α
n86_match_sequence_β:
                                                                                        jmp   n94_match_rpos_β
n86_match_sequence_af:
                                                                                        jmp   n85_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_end_α:
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
.Lx299_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx299_1:
                        test             rax, rax
                                                                                        je    .Lx299_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4]
                                                                                        jmp   rax
.Lx299_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx299_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 608
                                                                                        jmp   n89_statement_begin_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_assign_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n92_statement_end_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n94_match_rpos_α
n93_lit_integer_β:
                                                                                        jmp   n95_match_arbno_β
.Lx308_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n95_match_arbno_β
                                                                                        jmp   n87_match_end_α
n94_match_rpos_β:
                                                                                        jmp   n95_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_arbno_α:
                        mov              dword ptr [rbp + 496], r14d
                        mov              dword ptr [rbp + 500], r14d
                        mov              dword ptr [rbp + 504], 0
                        mov              qword ptr [rbp + 520], rsp
                        mov              qword ptr [rbp + 512], 0
                                                                                        jmp   n93_lit_integer_α
n95_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 500]
                        mov              rax, qword ptr [rbp + 512]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 512], rsp
                        mov              rbp, rsp
                        add              rbp, -504
                                                                                        jmp   n97_match_defer_α
n95_match_arbno_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              r14d, eax
                                                                                        je    n97_match_defer_β
                        mov              rbp, qword ptr [rbp + 504]
                        mov              eax, dword ptr [rbp + 504]
                        add              eax, 1
                        mov              dword ptr [rbp + 504], eax
                        mov              dword ptr [rbp + 500], r14d
                                                                                        jmp   n93_lit_integer_α
n95_match_arbno_af:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 504]
                        test             ecx, ecx
                                                                                        jz    .Lx311_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 504], ecx
                        mov              qword ptr [rbp + 512], rax
                        lea              rbp, [rax + -504]
                                                                                        jmp   n97_match_defer_β
.Lx311_2:
                        mov              r14d, dword ptr [rbp + 496]
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   n99_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 560], 2                       # result
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   main_γ
n96_lit_string_β:
                                                                                        jmp   main_ω
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n97_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx313_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx313_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx313_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx313_10
.Lx313_9:
                        xor              eax, eax
.Lx313_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx313_11:
                        test             rax, rax
                                                                                        jz    .Lx313_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx313_4]
                        lea              rdx, [rip + .Lx313_5]
                                                                                        jmp   rax
.Lx313_4:
                                                                                        jmp   n95_match_arbno_as
.Lx313_5:
                                                                                        jmp   n95_match_arbno_af
.Lx313_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx313_2:
                        test             rax, rax
                                                                                        je    .Lx313_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx313_7]
                        lea              rdx, [rip + .Lx313_8]
                                                                                        jmp   rax
.Lx313_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx313_2
.Lx313_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx313_2
.Lx313_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n95_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx313_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n95_match_arbno_as
.Lx313_6:
                        add              rsp, 16
                                                                                        jmp   n95_match_arbno_af
n97_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n99_match_pos_α
n98_lit_integer_β:
                                                                                        jmp   n85_match_begin_β
.Lx314_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n85_match_begin_β
                                                                                        jmp   n95_match_arbno_α
n99_match_pos_β:
                                                                                        jmp   n85_match_begin_β
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_assign_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx319_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n103_statement_end_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n104_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*P) RPOS(0)    :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:
                                                                                        jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S2
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_match_begin_α:
                        sub              rsp, 880
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              rdi, qword ptr [rsp + 880]                     # var
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 696], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 704], r13                     # outer_Σ
                        mov              qword ptr [rbp + 712], r14                     # outer_δ
                        mov              qword ptr [rbp + 720], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 728], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 672], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax                     # patstk_mark
                        mov              dword ptr [rbp + 656], 0                       # start_δ
.Lx326_0:
                        mov              r14d, dword ptr [rbp + 656]
                                                                                        jmp   n107_match_sequence_α
n106_match_begin_β:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, r15d
                                                                                        jg    .Lx326_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx326_1
                                                                                        jmp   .Lx326_0
.Lx326_1:
                        mov              rax, qword ptr [rbp + 664]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 672]
                        mov              r10, qword ptr [1879048192]
.Lx326_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx326_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 712]                     # outer_δ
                        mov              r15, qword ptr [rbp + 720]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 728]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]                     # old_rbp
                        add              rsp, 896
                                                                                        jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_match_sequence_α:
                        mov              dword ptr [rbp + 736], r14d
                                                                                        jmp   n119_lit_integer_α
n107_match_sequence_as:
                                                                                        jmp   n108_match_end_α
n107_match_sequence_β:
                                                                                        jmp   n115_match_rpos_β
n107_match_sequence_af:
                                                                                        jmp   n106_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n108_match_end_α:
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
.Lx330_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx330_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx330_1:
                        test             rax, rax
                                                                                        je    .Lx330_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx330_3]
                        lea              rdx, [rip + .Lx330_4]
                                                                                        jmp   rax
.Lx330_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx330_1
.Lx330_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx330_1
.Lx330_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx330_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx330_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 704]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 712]                     # outer_δ
                        mov              r15, qword ptr [rbp + 720]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 728]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:
                        mov              rbp, qword ptr [rbp + 696]                     # old_rbp
                        add              rsp, 896
                                                                                        jmp   n110_statement_begin_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_assign_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx336_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n113_statement_end_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rsp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n115_match_rpos_α
n114_lit_integer_β:
                                                                                        jmp   n116_match_arbno_β
.Lx339_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n116_match_arbno_β
                                                                                        jmp   n108_match_end_α
n115_match_rpos_β:
                                                                                        jmp   n116_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n116_match_arbno_α:
                        mov              dword ptr [rbp + 784], r14d
                        mov              dword ptr [rbp + 788], r14d
                        mov              dword ptr [rbp + 792], 0
                        mov              qword ptr [rbp + 808], rsp
                        mov              qword ptr [rbp + 800], 0
                                                                                        jmp   n114_lit_integer_α
n116_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 788]
                        mov              rax, qword ptr [rbp + 800]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 800], rsp
                        mov              rbp, rsp
                        add              rbp, -792
                                                                                        jmp   n118_match_defer_α
n116_match_arbno_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              r14d, eax
                                                                                        je    n118_match_defer_β
                        mov              rbp, qword ptr [rbp + 792]
                        mov              eax, dword ptr [rbp + 792]
                        add              eax, 1
                        mov              dword ptr [rbp + 792], eax
                        mov              dword ptr [rbp + 788], r14d
                                                                                        jmp   n114_lit_integer_α
n116_match_arbno_af:
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              rsp, [rbp + 872]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 792]
                        test             ecx, ecx
                                                                                        jz    .Lx342_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 792], ecx
                        mov              qword ptr [rbp + 800], rax
                        lea              rbp, [rax + -792]
                                                                                        jmp   n118_match_defer_β
.Lx342_2:
                        mov              r14d, dword ptr [rbp + 784]
                        mov              rsp, qword ptr [rbp + 808]
                                                                                        jmp   n120_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 848], 2                       # result
                        mov              dword ptr [rsp + 852], 5
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   main_γ
n117_lit_string_β:
                                                                                        jmp   main_ω
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n118_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx344_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx344_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx344_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx344_10
.Lx344_9:
                        xor              eax, eax
.Lx344_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx344_11:
                        test             rax, rax
                                                                                        jz    .Lx344_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx344_4]
                        lea              rdx, [rip + .Lx344_5]
                                                                                        jmp   rax
.Lx344_4:
                                                                                        jmp   n116_match_arbno_as
.Lx344_5:
                                                                                        jmp   n116_match_arbno_af
.Lx344_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx344_2:
                        test             rax, rax
                                                                                        je    .Lx344_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx344_7]
                        lea              rdx, [rip + .Lx344_8]
                                                                                        jmp   rax
.Lx344_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx344_2
.Lx344_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx344_2
.Lx344_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n116_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx344_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n116_match_arbno_as
.Lx344_6:
                        add              rsp, 16
                                                                                        jmp   n116_match_arbno_af
n118_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rsp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n120_match_pos_α
n119_lit_integer_β:
                                                                                        jmp   n106_match_begin_β
.Lx345_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n106_match_begin_β
                                                                                        jmp   n116_match_arbno_α
n120_match_pos_β:
                                                                                        jmp   n106_match_begin_β
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_assign_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx350_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n124_statement_end_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n125_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*Q) RPOS(0)    :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S3
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_match_begin_α:
                        sub              rsp, 1168
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              rdi, qword ptr [rsp + 1168]                    # var
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 984], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 992], r13                     # outer_Σ
                        mov              qword ptr [rbp + 1000], r14                    # outer_δ
                        mov              qword ptr [rbp + 1008], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1016], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 960], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 952], rax                     # patstk_mark
                        mov              dword ptr [rbp + 944], 0                       # start_δ
.Lx357_0:
                        mov              r14d, dword ptr [rbp + 944]
                                                                                        jmp   n128_match_sequence_α
n127_match_begin_β:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, r15d
                                                                                        jg    .Lx357_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx357_1
                                                                                        jmp   .Lx357_0
.Lx357_1:
                        mov              rax, qword ptr [rbp + 952]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 960]
                        mov              r10, qword ptr [1879048192]
.Lx357_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx357_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 1000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]                     # old_rbp
                        add              rsp, 1184
                                                                                        jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_match_sequence_α:
                        mov              dword ptr [rbp + 1024], r14d
                                                                                        jmp   n140_lit_integer_α
n128_match_sequence_as:
                                                                                        jmp   n129_match_end_α
n128_match_sequence_β:
                                                                                        jmp   n136_match_rpos_β
n128_match_sequence_af:
                                                                                        jmp   n127_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_end_α:
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
.Lx361_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx361_1:
                        test             rax, rax
                                                                                        je    .Lx361_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4]
                                                                                        jmp   rax
.Lx361_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx361_1
.Lx361_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx361_1
.Lx361_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx361_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 992]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 1000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:
                        mov              rbp, qword ptr [rbp + 984]                     # old_rbp
                        add              rsp, 1184
                                                                                        jmp   n131_statement_begin_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_assign_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx367_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n134_statement_end_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n136_match_rpos_α
n135_lit_integer_β:
                                                                                        jmp   n137_match_arbno_β
.Lx370_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n136_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n137_match_arbno_β
                                                                                        jmp   n129_match_end_α
n136_match_rpos_β:
                                                                                        jmp   n137_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n137_match_arbno_α:
                        mov              dword ptr [rbp + 1072], r14d
                        mov              dword ptr [rbp + 1076], r14d
                        mov              dword ptr [rbp + 1080], 0
                        mov              qword ptr [rbp + 1096], rsp
                        mov              qword ptr [rbp + 1088], 0
                                                                                        jmp   n135_lit_integer_α
n137_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1076]
                        mov              rax, qword ptr [rbp + 1088]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1088], rsp
                        mov              rbp, rsp
                        add              rbp, -1080
                                                                                        jmp   n139_match_defer_α
n137_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              r14d, eax
                                                                                        je    n139_match_defer_β
                        mov              rbp, qword ptr [rbp + 1080]
                        mov              eax, dword ptr [rbp + 1080]
                        add              eax, 1
                        mov              dword ptr [rbp + 1080], eax
                        mov              dword ptr [rbp + 1076], r14d
                                                                                        jmp   n135_lit_integer_α
n137_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              rsp, [rbp + 1160]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1080]
                        test             ecx, ecx
                                                                                        jz    .Lx373_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1080], ecx
                        mov              qword ptr [rbp + 1088], rax
                        lea              rbp, [rax + -1080]
                                                                                        jmp   n139_match_defer_β
.Lx373_2:
                        mov              r14d, dword ptr [rbp + 1072]
                        mov              rsp, qword ptr [rbp + 1096]
                                                                                        jmp   n141_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rsp + 1136], 2                      # result
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   main_γ
n138_lit_string_β:
                                                                                        jmp   main_ω
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n139_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_11
                        mov              rax, qword ptr [1879052304]                    # Q
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx375_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx375_10
.Lx375_9:
                        xor              eax, eax
.Lx375_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx375_11:
                        test             rax, rax
                                                                                        jz    .Lx375_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx375_4]
                        lea              rdx, [rip + .Lx375_5]
                                                                                        jmp   rax
.Lx375_4:
                                                                                        jmp   n137_match_arbno_as
.Lx375_5:
                                                                                        jmp   n137_match_arbno_af
.Lx375_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx375_2:
                        test             rax, rax
                                                                                        je    .Lx375_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_7]
                        lea              rdx, [rip + .Lx375_8]
                                                                                        jmp   rax
.Lx375_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx375_2
.Lx375_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx375_2
.Lx375_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n137_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx375_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n137_match_arbno_as
.Lx375_6:
                        add              rsp, 16
                                                                                        jmp   n137_match_arbno_af
n139_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n141_match_pos_α
n140_lit_integer_β:
                                                                                        jmp   n127_match_begin_β
.Lx376_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n141_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n127_match_begin_β
                                                                                        jmp   n137_match_arbno_α
n141_match_pos_β:
                                                                                        jmp   n127_match_begin_β
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:
                                                                                        jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n144_assign_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx381_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n145_statement_end_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n146_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*R) RPOS(0)    :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S4
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_match_begin_α:
                        sub              rsp, 1456
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              rdi, qword ptr [rsp + 1456]                    # var
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1272], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1280], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1288], r14                    # outer_δ
                        mov              qword ptr [rbp + 1296], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1304], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1248], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1240], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1232], 0                      # start_δ
.Lx388_0:
                        mov              r14d, dword ptr [rbp + 1232]
                                                                                        jmp   n149_match_sequence_α
n148_match_begin_β:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, r15d
                                                                                        jg    .Lx388_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx388_1
                                                                                        jmp   .Lx388_0
.Lx388_1:
                        mov              rax, qword ptr [rbp + 1240]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1248]
                        mov              r10, qword ptr [1879048192]
.Lx388_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx388_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1288]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1296]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1304]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]                    # old_rbp
                        add              rsp, 1472
                                                                                        jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_match_sequence_α:
                        mov              dword ptr [rbp + 1312], r14d
                                                                                        jmp   n161_lit_integer_α
n149_match_sequence_as:
                                                                                        jmp   n150_match_end_α
n149_match_sequence_β:
                                                                                        jmp   n157_match_rpos_β
n149_match_sequence_af:
                                                                                        jmp   n148_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_end_α:
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
.Lx392_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx392_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx392_1:
                        test             rax, rax
                                                                                        je    .Lx392_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx392_3]
                        lea              rdx, [rip + .Lx392_4]
                                                                                        jmp   rax
.Lx392_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx392_1
.Lx392_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx392_1
.Lx392_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx392_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx392_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1280]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1288]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1296]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1304]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1272]                    # old_rbp
                        add              rsp, 1472
                                                                                        jmp   n152_statement_begin_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_assign_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx398_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n155_statement_end_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n157_match_rpos_α
n156_lit_integer_β:
                                                                                        jmp   n158_match_arbno_β
.Lx401_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n157_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n158_match_arbno_β
                                                                                        jmp   n150_match_end_α
n157_match_rpos_β:
                                                                                        jmp   n158_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n158_match_arbno_α:
                        mov              dword ptr [rbp + 1360], r14d
                        mov              dword ptr [rbp + 1364], r14d
                        mov              dword ptr [rbp + 1368], 0
                        mov              qword ptr [rbp + 1384], rsp
                        mov              qword ptr [rbp + 1376], 0
                                                                                        jmp   n156_lit_integer_α
n158_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1364]
                        mov              rax, qword ptr [rbp + 1376]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1376], rsp
                        mov              rbp, rsp
                        add              rbp, -1368
                                                                                        jmp   n160_match_defer_α
n158_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              r14d, eax
                                                                                        je    n160_match_defer_β
                        mov              rbp, qword ptr [rbp + 1368]
                        mov              eax, dword ptr [rbp + 1368]
                        add              eax, 1
                        mov              dword ptr [rbp + 1368], eax
                        mov              dword ptr [rbp + 1364], r14d
                                                                                        jmp   n156_lit_integer_α
n158_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              rsp, [rbp + 1448]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1368]
                        test             ecx, ecx
                                                                                        jz    .Lx404_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1368], ecx
                        mov              qword ptr [rbp + 1376], rax
                        lea              rbp, [rax + -1368]
                                                                                        jmp   n160_match_defer_β
.Lx404_2:
                        mov              r14d, dword ptr [rbp + 1360]
                        mov              rsp, qword ptr [rbp + 1384]
                                                                                        jmp   n162_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rsp + 1424], 2                      # result
                        mov              dword ptr [rsp + 1428], 5
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   main_γ
n159_lit_string_β:
                                                                                        jmp   main_ω
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n160_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx406_11
                        mov              rax, qword ptr [1879052320]                    # R
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx406_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx406_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx406_10
.Lx406_9:
                        xor              eax, eax
.Lx406_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx406_11:
                        test             rax, rax
                                                                                        jz    .Lx406_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx406_4]
                        lea              rdx, [rip + .Lx406_5]
                                                                                        jmp   rax
.Lx406_4:
                                                                                        jmp   n158_match_arbno_as
.Lx406_5:
                                                                                        jmp   n158_match_arbno_af
.Lx406_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx406_2:
                        test             rax, rax
                                                                                        je    .Lx406_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx406_7]
                        lea              rdx, [rip + .Lx406_8]
                                                                                        jmp   rax
.Lx406_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx406_2
.Lx406_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx406_2
.Lx406_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n158_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx406_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_as
.Lx406_6:
                        add              rsp, 16
                                                                                        jmp   n158_match_arbno_af
n160_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rsp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n162_match_pos_α
n161_lit_integer_β:
                                                                                        jmp   n148_match_begin_β
.Lx407_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n148_match_begin_β
                                                                                        jmp   n158_match_arbno_α
n162_match_pos_β:
                                                                                        jmp   n148_match_begin_β
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_assign_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx412_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n166_statement_end_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n167_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)    :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:
                                                                                        jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S5
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n169_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_match_begin_α:
                        sub              rsp, 1744
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              rdi, qword ptr [rsp + 1744]                    # var
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1560], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1568], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1576], r14                    # outer_δ
                        mov              qword ptr [rbp + 1584], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1592], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1536], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1528], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1520], 0                      # start_δ
.Lx419_0:
                        mov              r14d, dword ptr [rbp + 1520]
                                                                                        jmp   n170_match_sequence_α
n169_match_begin_β:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, r15d
                                                                                        jg    .Lx419_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx419_1
                                                                                        jmp   .Lx419_0
.Lx419_1:
                        mov              rax, qword ptr [rbp + 1528]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1536]
                        mov              r10, qword ptr [1879048192]
.Lx419_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx419_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1576]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1584]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1592]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]                    # old_rbp
                        add              rsp, 1760
                                                                                        jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_match_sequence_α:
                        mov              dword ptr [rbp + 1600], r14d
                                                                                        jmp   n182_lit_integer_α
n170_match_sequence_as:
                                                                                        jmp   n171_match_end_α
n170_match_sequence_β:
                                                                                        jmp   n178_match_rpos_β
n170_match_sequence_af:
                                                                                        jmp   n169_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n171_match_end_α:
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
.Lx423_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx423_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx423_1:
                        test             rax, rax
                                                                                        je    .Lx423_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx423_3]
                        lea              rdx, [rip + .Lx423_4]
                                                                                        jmp   rax
.Lx423_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx423_1
.Lx423_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx423_1
.Lx423_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx423_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx423_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1568]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1576]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1584]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1592]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1560]                    # old_rbp
                        add              rsp, 1760
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_assign_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx429_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n176_statement_end_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n178_match_rpos_α
n177_lit_integer_β:
                                                                                        jmp   n179_match_arbno_β
.Lx432_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n178_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n179_match_arbno_β
                                                                                        jmp   n171_match_end_α
n178_match_rpos_β:
                                                                                        jmp   n179_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n179_match_arbno_α:
                        mov              dword ptr [rbp + 1648], r14d
                        mov              dword ptr [rbp + 1652], r14d
                        mov              dword ptr [rbp + 1656], 0
                        mov              qword ptr [rbp + 1672], rsp
                        mov              qword ptr [rbp + 1664], 0
                                                                                        jmp   n177_lit_integer_α
n179_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1652]
                        mov              rax, qword ptr [rbp + 1664]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1664], rsp
                        mov              rbp, rsp
                        add              rbp, -1656
                                                                                        jmp   n181_match_defer_α
n179_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              r14d, eax
                                                                                        je    n181_match_defer_β
                        mov              rbp, qword ptr [rbp + 1656]
                        mov              eax, dword ptr [rbp + 1656]
                        add              eax, 1
                        mov              dword ptr [rbp + 1656], eax
                        mov              dword ptr [rbp + 1652], r14d
                                                                                        jmp   n177_lit_integer_α
n179_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              rsp, [rbp + 1736]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1656]
                        test             ecx, ecx
                                                                                        jz    .Lx435_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1656], ecx
                        mov              qword ptr [rbp + 1664], rax
                        lea              rbp, [rax + -1656]
                                                                                        jmp   n181_match_defer_β
.Lx435_2:
                        mov              r14d, dword ptr [rbp + 1648]
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   n183_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rsp + 1712], 2                      # result
                        mov              dword ptr [rsp + 1716], 5
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   main_γ
n180_lit_string_β:
                                                                                        jmp   main_ω
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n181_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx437_11
                        mov              rax, qword ptr [1879052336]                    # W
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx437_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx437_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx437_10
.Lx437_9:
                        xor              eax, eax
.Lx437_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx437_11:
                        test             rax, rax
                                                                                        jz    .Lx437_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx437_4]
                        lea              rdx, [rip + .Lx437_5]
                                                                                        jmp   rax
.Lx437_4:
                                                                                        jmp   n179_match_arbno_as
.Lx437_5:
                                                                                        jmp   n179_match_arbno_af
.Lx437_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx437_2:
                        test             rax, rax
                                                                                        je    .Lx437_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx437_7]
                        lea              rdx, [rip + .Lx437_8]
                                                                                        jmp   rax
.Lx437_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx437_2
.Lx437_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx437_2
.Lx437_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n179_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx437_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n179_match_arbno_as
.Lx437_6:
                        add              rsp, 16
                                                                                        jmp   n179_match_arbno_af
n181_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rsp + 1616], 3                      # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n183_match_pos_α
n182_lit_integer_β:
                                                                                        jmp   n169_match_begin_β
.Lx438_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n183_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n169_match_begin_β
                                                                                        jmp   n179_match_arbno_α
n183_match_pos_β:
                                                                                        jmp   n169_match_begin_β
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:
                                                                                        jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n186_assign_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx443_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n187_statement_end_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n188_statement_begin_α
#=======================================================================================================================
# N5      S1 "ab" ARBNO(*P) "bc" RPOS(0) :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n190_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_match_begin_α:
                        sub              rsp, 2016
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
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              rdi, qword ptr [rsp + 2016]                    # var
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1848], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1856], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1864], r14                    # outer_δ
                        mov              qword ptr [rbp + 1872], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1880], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1824], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1816], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1808], 0                      # start_δ
.Lx450_0:
                        mov              r14d, dword ptr [rbp + 1808]
                                                                                        jmp   n191_match_sequence_α
n190_match_begin_β:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, r15d
                                                                                        jg    .Lx450_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx450_1
                                                                                        jmp   .Lx450_0
.Lx450_1:
                        mov              rax, qword ptr [rbp + 1816]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1824]
                        mov              r10, qword ptr [1879048192]
.Lx450_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1864]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1872]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1880]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]                    # old_rbp
                        add              rsp, 2032
                                                                                        jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_match_sequence_α:
                        mov              dword ptr [rbp + 1888], r14d
                                                                                        jmp   n204_match_lit_α
n191_match_sequence_as:
                                                                                        jmp   n192_match_end_α
n191_match_sequence_β:
                                                                                        jmp   n199_match_rpos_β
n191_match_sequence_af:
                                                                                        jmp   n190_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_end_α:
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
.Lx454_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx454_1:
                        test             rax, rax
                                                                                        je    .Lx454_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx454_3]
                        lea              rdx, [rip + .Lx454_4]
                                                                                        jmp   rax
.Lx454_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx454_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1856]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1864]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1872]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1880]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n193_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1848]                    # old_rbp
                        add              rsp, 2032
                                                                                        jmp   n194_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n196_assign_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx460_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n197_statement_end_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:
                                                                                        jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n199_match_rpos_α
n198_lit_integer_β:
                                                                                        jmp   n200_match_lit_β
.Lx463_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n199_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n200_match_lit_β
                                                                                        jmp   n192_match_end_α
n199_match_rpos_β:
                                                                                        jmp   n200_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n200_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n201_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n201_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99
                                                                                        jne   n201_match_arbno_β
                        add              r14d, 2
                                                                                        jmp   n198_lit_integer_α
n200_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n201_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n201_match_arbno_α:
                        mov              dword ptr [rbp + 1920], r14d
                        mov              dword ptr [rbp + 1924], r14d
                        mov              dword ptr [rbp + 1928], 0
                        mov              qword ptr [rbp + 1944], rsp
                        mov              qword ptr [rbp + 1936], 0
                                                                                        jmp   n200_match_lit_α
n201_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1924]
                        mov              rax, qword ptr [rbp + 1936]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1936], rsp
                        mov              rbp, rsp
                        add              rbp, -1928
                                                                                        jmp   n203_match_defer_α
n201_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              r14d, eax
                                                                                        je    n203_match_defer_β
                        mov              rbp, qword ptr [rbp + 1928]
                        mov              eax, dword ptr [rbp + 1928]
                        add              eax, 1
                        mov              dword ptr [rbp + 1928], eax
                        mov              dword ptr [rbp + 1924], r14d
                                                                                        jmp   n200_match_lit_α
n201_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              rsp, [rbp + 2008]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1928]
                        test             ecx, ecx
                                                                                        jz    .Lx468_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1928], ecx
                        mov              qword ptr [rbp + 1936], rax
                        lea              rbp, [rax + -1928]
                                                                                        jmp   n203_match_defer_β
.Lx468_2:
                        mov              r14d, dword ptr [rbp + 1920]
                        mov              rsp, qword ptr [rbp + 1944]
                                                                                        jmp   n204_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   main_γ
n202_lit_string_β:
                                                                                        jmp   main_ω
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n203_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx470_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx470_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx470_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx470_10
.Lx470_9:
                        xor              eax, eax
.Lx470_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx470_11:
                        test             rax, rax
                                                                                        jz    .Lx470_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx470_4]
                        lea              rdx, [rip + .Lx470_5]
                                                                                        jmp   rax
.Lx470_4:
                                                                                        jmp   n201_match_arbno_as
.Lx470_5:
                                                                                        jmp   n201_match_arbno_af
.Lx470_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx470_2:
                        test             rax, rax
                                                                                        je    .Lx470_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx470_7]
                        lea              rdx, [rip + .Lx470_8]
                                                                                        jmp   rax
.Lx470_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx470_2
.Lx470_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx470_2
.Lx470_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n201_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx470_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n201_match_arbno_as
.Lx470_6:
                        add              rsp, 16
                                                                                        jmp   n201_match_arbno_af
n203_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n204_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n190_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n190_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n190_match_begin_β
                        add              r14d, 2
                                                                                        jmp   n201_match_arbno_α
n204_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n190_match_begin_β
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α:
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n207_assign_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx476_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n208_statement_end_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α:
                                                                                        jmp   n210_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n211_goto_α:
                                                                                        jmp   n89_statement_begin_α
n211_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_goto_α:
                                                                                        jmp   n100_statement_begin_α
n212_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_goto_α:
                                                                                        jmp   n104_statement_begin_α
n213_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_goto_α:
                                                                                        jmp   n110_statement_begin_α
n214_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_goto_α:
                                                                                        jmp   n121_statement_begin_α
n215_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n216_goto_α:
                                                                                        jmp   n125_statement_begin_α
n216_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_goto_α:
                                                                                        jmp   n131_statement_begin_α
n217_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n218_goto_α:
                                                                                        jmp   n142_statement_begin_α
n218_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_goto_α:
                                                                                        jmp   n146_statement_begin_α
n219_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_goto_α:
                                                                                        jmp   n152_statement_begin_α
n220_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_goto_α:
                                                                                        jmp   n163_statement_begin_α
n221_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_goto_α:
                                                                                        jmp   n167_statement_begin_α
n222_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_goto_α:
                                                                                        jmp   n173_statement_begin_α
n223_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_goto_α:
                                                                                        jmp   n184_statement_begin_α
n224_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_goto_α:
                                                                                        jmp   n188_statement_begin_α
n225_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n226_goto_α:
                                                                                        jmp   n194_statement_begin_α
n226_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n227_goto_α:
                                                                                        jmp   n205_statement_begin_α
n227_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n228_goto_α:
                                                                                        jmp   n209_statement_begin_α
n228_goto_β:
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
