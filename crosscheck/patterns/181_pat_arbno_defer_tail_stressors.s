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
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx3_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx3_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx3_10
                        cmp              esi, 98
                                                                                        je    .Lx3_10
                                                                                        jmp   .Lx3_1
.Lx3_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx3_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx3_11
                        cmp              esi, 98
                                                                                        je    .Lx3_11
                                                                                        jmp   .Lx3_1
.Lx3_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx3_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx3_12
                        cmp              esi, 98
                                                                                        je    .Lx3_12
                                                                                        jmp   .Lx3_1
.Lx3_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx3_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx3_13
                        cmp              esi, 98
                                                                                        je    .Lx3_13
                                                                                        jmp   .Lx3_1
.Lx3_13:
                        add              ecx, 1
                                                                                        jmp   .Lx3_0
.Lx3_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx3_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx3_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n1_match_lit_α
n0_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n0_match_span_β
                        add              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanhit
n1_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_span_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx6_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx6_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx7_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx7_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx7_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx7_0:
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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n8_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx12_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n10_match_span_α
.Lx12_21:
                        lea              rax, [rip + .Lx12_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n9_match_lit_α
n8_match_alternate_s0:
                        lea              rax, [rip + .Lx12_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n8_match_alternate_as
n8_match_alternate_s1:
                        lea              rax, [rip + .Lx12_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n8_match_alternate_as
.Lx12_40:
                                                                                        jmp   n10_match_span_β
.Lx12_41:
                                                                                        jmp   n9_match_lit_β
n8_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n8_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n8_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx12_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                                                                                        jmp   n8_match_alternate_s1
n9_match_lit_β:
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:
                        movsxd           rcx, r14d
.Lx16_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx16_10
                        cmp              esi, 98
                                                                                        je    .Lx16_10
                                                                                        jmp   .Lx16_1
.Lx16_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx16_11
                        cmp              esi, 98
                                                                                        je    .Lx16_11
                                                                                        jmp   .Lx16_1
.Lx16_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx16_12
                        cmp              esi, 98
                                                                                        je    .Lx16_12
                                                                                        jmp   .Lx16_1
.Lx16_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx16_13
                        cmp              esi, 98
                                                                                        je    .Lx16_13
                                                                                        jmp   .Lx16_1
.Lx16_13:
                        add              ecx, 1
                                                                                        jmp   .Lx16_0
.Lx16_1:
                        cmp              ecx, r14d
                                                                                        jle   n8_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n8_match_alternate_s0
n10_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n8_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx17_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx17_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx18_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx18_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx18_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx18_0:
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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx24_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n22_match_lit_α
.Lx24_21:
                        lea              rax, [rip + .Lx24_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_span_α
n19_match_alternate_s0:
                        lea              rax, [rip + .Lx24_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s1:
                        lea              rax, [rip + .Lx24_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
.Lx24_40:
                                                                                        jmp   n22_match_lit_β
.Lx24_41:
                                                                                        jmp   n21_match_span_β
n19_match_alternate_as:
                                                                                        jmp   n20_match_lit_α
n19_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n19_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx24_19:
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
                                                                                        jmp   proc_PAT$2_scanhit
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_span_α:
                        movsxd           rcx, r14d
.Lx28_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx28_10
                        cmp              esi, 98
                                                                                        je    .Lx28_10
                                                                                        jmp   .Lx28_1
.Lx28_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx28_11
                        cmp              esi, 98
                                                                                        je    .Lx28_11
                                                                                        jmp   .Lx28_1
.Lx28_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx28_12
                        cmp              esi, 98
                                                                                        je    .Lx28_12
                                                                                        jmp   .Lx28_1
.Lx28_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx28_13
                        cmp              esi, 98
                                                                                        je    .Lx28_13
                                                                                        jmp   .Lx28_1
.Lx28_13:
                        add              ecx, 1
                                                                                        jmp   .Lx28_0
.Lx28_1:
                        cmp              ecx, r14d
                                                                                        jle   n19_match_alternate_af
                        mov              dword ptr [rbp + 68], r14d
                        mov              r14d, ecx
                                                                                        jmp   n19_match_alternate_s1
n21_match_span_β:
                        mov              r14d, dword ptr [rbp + 68]
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
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
n22_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx31_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx31_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx32_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx32_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx32_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
                                                                                        jne   .Lx35_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx35_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx36_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx36_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx36_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx36_0:
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
                        mov              esi, 96
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
n37_statement_begin_α:
                                                                                        jmp   n38_lit_string_α
n37_statement_begin_β:
                                                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_call_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd221:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd221]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx220_240
                                                                                        jmp   n41_statement_end_α
.Lx220_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_assign_α
n39_call_β:
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # P
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n42_statement_begin_α
#=======================================================================================================================
#         Q = SPAN("ab") | ""
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:
                                                                                        jmp   n43_lit_string_α
n42_statement_begin_β:
                                                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_call_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
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
                                                                                        jmp   n46_statement_end_α
.Lx228_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_assign_α
n44_call_β:
                                                                                        jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # Q
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n47_statement_begin_α
#=======================================================================================================================
#         R = ("x" | SPAN("ab")) "y"
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:
                                                                                        jmp   n48_lit_string_α
n47_statement_begin_β:
                                                                                        jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_call_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd237:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd237]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx236_240
                                                                                        jmp   n51_statement_end_α
.Lx236_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
n49_call_β:
                                                                                        jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # R
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n52_statement_begin_α
#=======================================================================================================================
#         W = LEN(3)
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:
                                                                                        jmp   n53_lit_string_α
n52_statement_begin_β:
                                                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd245:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd245]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx244_240
                                                                                        jmp   n56_statement_end_α
.Lx244_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_call_β:
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # W
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n57_statement_begin_α
#=======================================================================================================================
#         S1 = "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:
                                                                                        jmp   n58_lit_string_α
n57_statement_begin_β:
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_assign_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S1
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n61_statement_begin_α
#=======================================================================================================================
#         S2 = "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:
                                                                                        jmp   n62_lit_string_α
n61_statement_begin_β:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S2
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n65_statement_begin_α
#=======================================================================================================================
#         S3 = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_lit_string_α
n65_statement_begin_β:
                                                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_assign_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S3
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_α
#=======================================================================================================================
#         S4 = "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
n69_statement_begin_β:
                                                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_assign_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S4
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n73_statement_begin_α
#=======================================================================================================================
#         S5 = "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:
                                                                                        jmp   n74_lit_string_α
n73_statement_begin_β:
                                                                                        jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n75_assign_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S5
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n76_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n77_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*P) RPOS(0)     :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:
                                                                                        jmp   n78_var_α
n77_statement_begin_β:
                                                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        sub              rsp, 608
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 416], r13                     # outer_Σ
                        mov              qword ptr [rbp + 424], r14                     # outer_δ
                        mov              qword ptr [rbp + 432], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax                     # cap_gen
                        mov              qword ptr [rbp + 408], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 384], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 368], 0                       # start_δ
.Lx283_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n80_lit_integer_α
n79_match_begin_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx283_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx283_1
                                                                                        jmp   .Lx283_0
.Lx283_1:
n79_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 608
                                                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rsp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n81_match_pos_α
.Lx284_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n81_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n79_match_begin_β
                                                                                        jmp   n82_match_arbno_α
n81_match_pos_β:
                                                                                        jmp   n79_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_arbno_α:
                        mov              dword ptr [rbp + 480], r14d
                        mov              dword ptr [rbp + 484], r14d
                        mov              dword ptr [rbp + 488], 0
                        mov              qword ptr [rbp + 504], rsp
                        mov              qword ptr [rbp + 512], rbp
                        mov              qword ptr [rbp + 496], 0
                                                                                        jmp   n83_lit_integer_α
n82_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 484]
                        mov              rax, qword ptr [rbp + 496]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 496], rsp
                        mov              rbp, rsp
                        add              rbp, -504
                                                                                        jmp   n92_match_defer_α
n82_match_arbno_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              r14d, eax
                                                                                        je    n92_match_defer_β
                        mov              rbp, qword ptr [rbp + 504]
                        mov              eax, dword ptr [rbp + 488]
                        add              eax, 1
                        mov              dword ptr [rbp + 488], eax
                        mov              dword ptr [rbp + 484], r14d
                                                                                        jmp   n83_lit_integer_α
n82_match_arbno_af:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 488]
                        test             ecx, ecx
                                                                                        jz    .Lx287_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 488], ecx
                        mov              qword ptr [rbp + 496], rax
                        lea              rbp, [rax + -504]
                                                                                        jmp   n92_match_defer_β
.Lx287_2:
                        mov              r14d, dword ptr [rbp + 480]
                        mov              rbp, qword ptr [rbp + 512]
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   n81_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n84_match_rpos_α
.Lx288_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n84_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n82_match_arbno_β
                                                                                        jmp   n85_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_match_end_α:
                        mov              r10, r12
.Lx291_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_9
                        mov              rsp, qword ptr [rbp + 384]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx291_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx291_1:
                        test             rax, rax
                                                                                        je    .Lx291_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx291_1
.Lx291_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx291_1
.Lx291_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                                                                                        jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:
                        add              rsp, 608
                                                                                        jmp   n87_statement_begin_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:
                                                                                        jmp   n88_lit_string_α
n87_statement_begin_β:
                                                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_assign_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx297_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n90_statement_end_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rsp + 560], 2                       # result
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   main_γ
n91_lit_string_β:
                                                                                        jmp   main_ω
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n92_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx301_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx301_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx301_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx301_10
.Lx301_9:
                        xor              eax, eax
.Lx301_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx301_11:
                        test             rax, rax
                                                                                        jz    .Lx301_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx301_4]
                        lea              rdx, [rip + .Lx301_5]
                                                                                        jmp   rax
.Lx301_4:
                                                                                        jmp   n82_match_arbno_as
.Lx301_5:
                                                                                        jmp   n82_match_arbno_af
.Lx301_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx301_2:
                        test             rax, rax
                                                                                        je    .Lx301_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx301_7]
                        lea              rdx, [rip + .Lx301_8]
                                                                                        jmp   rax
.Lx301_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx301_2
.Lx301_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx301_2
.Lx301_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n82_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx301_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n82_match_arbno_as
.Lx301_6:
                        add              rsp, 16
                                                                                        jmp   n82_match_arbno_af
n92_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:
                                                                                        jmp   n94_lit_string_α
n93_statement_begin_β:
                                                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n95_assign_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n96_statement_end_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n97_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*P) RPOS(0)    :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:
                                                                                        jmp   n98_var_α
n97_statement_begin_β:
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        sub              rsp, 896
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S2
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 704], r13                     # outer_Σ
                        mov              qword ptr [rbp + 712], r14                     # outer_δ
                        mov              qword ptr [rbp + 720], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 728], rax                     # cap_gen
                        mov              qword ptr [rbp + 696], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 672], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 656], 0                       # start_δ
.Lx312_0:
                        mov              r14d, dword ptr [rbp + 656]
                                                                                        jmp   n100_lit_integer_α
n99_match_begin_β:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, r15d
                                                                                        jg    .Lx312_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx312_1
                                                                                        jmp   .Lx312_0
.Lx312_1:
n99_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 672]
                        mov              r13, qword ptr [rbp + 704]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 712]                     # outer_δ
                        mov              r15, qword ptr [rbp + 720]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 728]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]                     # old_rbp
                        add              rsp, 896
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n101_match_pos_α
.Lx313_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n101_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n99_match_begin_β
                                                                                        jmp   n102_match_arbno_α
n101_match_pos_β:
                                                                                        jmp   n99_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_arbno_α:
                        mov              dword ptr [rbp + 768], r14d
                        mov              dword ptr [rbp + 772], r14d
                        mov              dword ptr [rbp + 776], 0
                        mov              qword ptr [rbp + 792], rsp
                        mov              qword ptr [rbp + 800], rbp
                        mov              qword ptr [rbp + 784], 0
                                                                                        jmp   n103_lit_integer_α
n102_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 772]
                        mov              rax, qword ptr [rbp + 784]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 784], rsp
                        mov              rbp, rsp
                        add              rbp, -792
                                                                                        jmp   n112_match_defer_α
n102_match_arbno_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              r14d, eax
                                                                                        je    n112_match_defer_β
                        mov              rbp, qword ptr [rbp + 792]
                        mov              eax, dword ptr [rbp + 776]
                        add              eax, 1
                        mov              dword ptr [rbp + 776], eax
                        mov              dword ptr [rbp + 772], r14d
                                                                                        jmp   n103_lit_integer_α
n102_match_arbno_af:
                        mov              rax, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              rsp, [rbp + 872]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 776]
                        test             ecx, ecx
                                                                                        jz    .Lx316_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 776], ecx
                        mov              qword ptr [rbp + 784], rax
                        lea              rbp, [rax + -792]
                                                                                        jmp   n112_match_defer_β
.Lx316_2:
                        mov              r14d, dword ptr [rbp + 768]
                        mov              rbp, qword ptr [rbp + 800]
                        mov              rsp, qword ptr [rbp + 792]
                                                                                        jmp   n101_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n104_match_rpos_α
.Lx317_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n104_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n102_match_arbno_β
                                                                                        jmp   n105_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_match_end_α:
                        mov              r10, r12
.Lx320_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx320_9
                        mov              rsp, qword ptr [rbp + 672]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx320_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx320_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx320_1:
                        test             rax, rax
                                                                                        je    .Lx320_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx320_3]
                        lea              rdx, [rip + .Lx320_4]
                                                                                        jmp   rax
.Lx320_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx320_1
.Lx320_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx320_1
.Lx320_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 704]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 712]                     # outer_δ
                        mov              r15, qword ptr [rbp + 720]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 728]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 696]                     # old_rbp
                                                                                        jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:
                        add              rsp, 896
                                                                                        jmp   n107_statement_begin_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:
                                                                                        jmp   n108_lit_string_α
n107_statement_begin_β:
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx326_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n110_statement_end_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rsp + 848], 2                       # result
                        mov              dword ptr [rsp + 852], 5
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   main_γ
n111_lit_string_β:
                                                                                        jmp   main_ω
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n112_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx330_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx330_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx330_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx330_10
.Lx330_9:
                        xor              eax, eax
.Lx330_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx330_11:
                        test             rax, rax
                                                                                        jz    .Lx330_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx330_4]
                        lea              rdx, [rip + .Lx330_5]
                                                                                        jmp   rax
.Lx330_4:
                                                                                        jmp   n102_match_arbno_as
.Lx330_5:
                                                                                        jmp   n102_match_arbno_af
.Lx330_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx330_2:
                        test             rax, rax
                                                                                        je    .Lx330_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx330_7]
                        lea              rdx, [rip + .Lx330_8]
                                                                                        jmp   rax
.Lx330_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx330_2
.Lx330_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx330_2
.Lx330_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n102_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx330_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n102_match_arbno_as
.Lx330_6:
                        add              rsp, 16
                                                                                        jmp   n102_match_arbno_af
n112_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:
                                                                                        jmp   n114_lit_string_α
n113_statement_begin_β:
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_assign_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx334_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n116_statement_end_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*Q) RPOS(0)    :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_var_α
n117_statement_begin_β:
                                                                                        jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        sub              rsp, 1184
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S3
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 992], r13                     # outer_Σ
                        mov              qword ptr [rbp + 1000], r14                    # outer_δ
                        mov              qword ptr [rbp + 1008], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1016], rax                    # cap_gen
                        mov              qword ptr [rbp + 984], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 960], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 944], 0                       # start_δ
.Lx341_0:
                        mov              r14d, dword ptr [rbp + 944]
                                                                                        jmp   n120_lit_integer_α
n119_match_begin_β:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, r15d
                                                                                        jg    .Lx341_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx341_1
                                                                                        jmp   .Lx341_0
.Lx341_1:
n119_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 960]
                        mov              r13, qword ptr [rbp + 992]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 1000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]                     # old_rbp
                        add              rsp, 1184
                                                                                        jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rsp + 1024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n121_match_pos_α
.Lx342_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n121_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n119_match_begin_β
                                                                                        jmp   n122_match_arbno_α
n121_match_pos_β:
                                                                                        jmp   n119_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_arbno_α:
                        mov              dword ptr [rbp + 1056], r14d
                        mov              dword ptr [rbp + 1060], r14d
                        mov              dword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1080], rsp
                        mov              qword ptr [rbp + 1088], rbp
                        mov              qword ptr [rbp + 1072], 0
                                                                                        jmp   n123_lit_integer_α
n122_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1060]
                        mov              rax, qword ptr [rbp + 1072]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1072], rsp
                        mov              rbp, rsp
                        add              rbp, -1080
                                                                                        jmp   n132_match_defer_α
n122_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              r14d, eax
                                                                                        je    n132_match_defer_β
                        mov              rbp, qword ptr [rbp + 1080]
                        mov              eax, dword ptr [rbp + 1064]
                        add              eax, 1
                        mov              dword ptr [rbp + 1064], eax
                        mov              dword ptr [rbp + 1060], r14d
                                                                                        jmp   n123_lit_integer_α
n122_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              rsp, [rbp + 1160]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1064]
                        test             ecx, ecx
                                                                                        jz    .Lx345_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1064], ecx
                        mov              qword ptr [rbp + 1072], rax
                        lea              rbp, [rax + -1080]
                                                                                        jmp   n132_match_defer_β
.Lx345_2:
                        mov              r14d, dword ptr [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1088]
                        mov              rsp, qword ptr [rbp + 1080]
                                                                                        jmp   n121_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n124_match_rpos_α
.Lx346_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n124_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n122_match_arbno_β
                                                                                        jmp   n125_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_match_end_α:
                        mov              r10, r12
.Lx349_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_9
                        mov              rsp, qword ptr [rbp + 960]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx349_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx349_1:
                        test             rax, rax
                                                                                        je    .Lx349_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx349_3]
                        lea              rdx, [rip + .Lx349_4]
                                                                                        jmp   rax
.Lx349_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx349_1
.Lx349_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx349_1
.Lx349_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 992]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 1000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 984]                     # old_rbp
                                                                                        jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:
                        add              rsp, 1184
                                                                                        jmp   n127_statement_begin_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:
                                                                                        jmp   n128_lit_string_α
n127_statement_begin_β:
                                                                                        jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n129_assign_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx355_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n130_statement_end_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rsp + 1136], 2                      # result
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   main_γ
n131_lit_string_β:
                                                                                        jmp   main_ω
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n132_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx359_11
                        mov              rax, qword ptr [1879052304]                    # Q
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx359_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx359_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx359_10
.Lx359_9:
                        xor              eax, eax
.Lx359_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx359_11:
                        test             rax, rax
                                                                                        jz    .Lx359_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx359_4]
                        lea              rdx, [rip + .Lx359_5]
                                                                                        jmp   rax
.Lx359_4:
                                                                                        jmp   n122_match_arbno_as
.Lx359_5:
                                                                                        jmp   n122_match_arbno_af
.Lx359_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx359_2:
                        test             rax, rax
                                                                                        je    .Lx359_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx359_7]
                        lea              rdx, [rip + .Lx359_8]
                                                                                        jmp   rax
.Lx359_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx359_2
.Lx359_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx359_2
.Lx359_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n122_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx359_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n122_match_arbno_as
.Lx359_6:
                        add              rsp, 16
                                                                                        jmp   n122_match_arbno_af
n132_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α:
                                                                                        jmp   n134_lit_string_α
n133_statement_begin_β:
                                                                                        jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_assign_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx363_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n136_statement_end_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n137_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*R) RPOS(0)    :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:
                                                                                        jmp   n138_var_α
n137_statement_begin_β:
                                                                                        jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 1472
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S4
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1280], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1288], r14                    # outer_δ
                        mov              qword ptr [rbp + 1296], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1304], rax                    # cap_gen
                        mov              qword ptr [rbp + 1272], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1248], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1232], 0                      # start_δ
.Lx370_0:
                        mov              r14d, dword ptr [rbp + 1232]
                                                                                        jmp   n140_lit_integer_α
n139_match_begin_β:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, r15d
                                                                                        jg    .Lx370_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx370_1
                                                                                        jmp   .Lx370_0
.Lx370_1:
n139_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1248]
                        mov              r13, qword ptr [rbp + 1280]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1288]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1296]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1304]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]                    # old_rbp
                        add              rsp, 1472
                                                                                        jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rsp + 1312], 3                      # result
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 1320], rax
                                                                                        jmp   n141_match_pos_α
.Lx371_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n141_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n139_match_begin_β
                                                                                        jmp   n142_match_arbno_α
n141_match_pos_β:
                                                                                        jmp   n139_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_arbno_α:
                        mov              dword ptr [rbp + 1344], r14d
                        mov              dword ptr [rbp + 1348], r14d
                        mov              dword ptr [rbp + 1352], 0
                        mov              qword ptr [rbp + 1368], rsp
                        mov              qword ptr [rbp + 1376], rbp
                        mov              qword ptr [rbp + 1360], 0
                                                                                        jmp   n143_lit_integer_α
n142_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1348]
                        mov              rax, qword ptr [rbp + 1360]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1360], rsp
                        mov              rbp, rsp
                        add              rbp, -1368
                                                                                        jmp   n152_match_defer_α
n142_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              r14d, eax
                                                                                        je    n152_match_defer_β
                        mov              rbp, qword ptr [rbp + 1368]
                        mov              eax, dword ptr [rbp + 1352]
                        add              eax, 1
                        mov              dword ptr [rbp + 1352], eax
                        mov              dword ptr [rbp + 1348], r14d
                                                                                        jmp   n143_lit_integer_α
n142_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              rsp, [rbp + 1448]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1352]
                        test             ecx, ecx
                                                                                        jz    .Lx374_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1352], ecx
                        mov              qword ptr [rbp + 1360], rax
                        lea              rbp, [rax + -1368]
                                                                                        jmp   n152_match_defer_β
.Lx374_2:
                        mov              r14d, dword ptr [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1376]
                        mov              rsp, qword ptr [rbp + 1368]
                                                                                        jmp   n141_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n144_match_rpos_α
.Lx375_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n144_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n142_match_arbno_β
                                                                                        jmp   n145_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_match_end_α:
                        mov              r10, r12
.Lx378_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx378_9
                        mov              rsp, qword ptr [rbp + 1248]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx378_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx378_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx378_1:
                        test             rax, rax
                                                                                        je    .Lx378_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx378_3]
                        lea              rdx, [rip + .Lx378_4]
                                                                                        jmp   rax
.Lx378_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx378_1
.Lx378_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx378_1
.Lx378_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1280]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1288]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1296]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1304]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1272]                    # old_rbp
                                                                                        jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:
                        add              rsp, 1472
                                                                                        jmp   n147_statement_begin_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α:
                                                                                        jmp   n148_lit_string_α
n147_statement_begin_β:
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n149_assign_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx384_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n150_statement_end_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rsp + 1424], 2                      # result
                        mov              dword ptr [rsp + 1428], 5
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   main_γ
n151_lit_string_β:
                                                                                        jmp   main_ω
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n152_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx388_11
                        mov              rax, qword ptr [1879052320]                    # R
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx388_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx388_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx388_10
.Lx388_9:
                        xor              eax, eax
.Lx388_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx388_11:
                        test             rax, rax
                                                                                        jz    .Lx388_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx388_4]
                        lea              rdx, [rip + .Lx388_5]
                                                                                        jmp   rax
.Lx388_4:
                                                                                        jmp   n142_match_arbno_as
.Lx388_5:
                                                                                        jmp   n142_match_arbno_af
.Lx388_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx388_2:
                        test             rax, rax
                                                                                        je    .Lx388_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx388_7]
                        lea              rdx, [rip + .Lx388_8]
                                                                                        jmp   rax
.Lx388_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx388_2
.Lx388_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx388_2
.Lx388_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n142_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx388_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n142_match_arbno_as
.Lx388_6:
                        add              rsp, 16
                                                                                        jmp   n142_match_arbno_af
n152_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α:
                                                                                        jmp   n154_lit_string_α
n153_statement_begin_β:
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n155_assign_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx392_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n156_statement_end_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n157_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)    :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:
                                                                                        jmp   n158_var_α
n157_statement_begin_β:
                                                                                        jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        sub              rsp, 1760
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S5
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n159_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1568], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1576], r14                    # outer_δ
                        mov              qword ptr [rbp + 1584], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1592], rax                    # cap_gen
                        mov              qword ptr [rbp + 1560], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1536], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1520], 0                      # start_δ
.Lx399_0:
                        mov              r14d, dword ptr [rbp + 1520]
                                                                                        jmp   n160_lit_integer_α
n159_match_begin_β:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, r15d
                                                                                        jg    .Lx399_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx399_1
                                                                                        jmp   .Lx399_0
.Lx399_1:
n159_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1536]
                        mov              r13, qword ptr [rbp + 1568]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1576]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1584]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1592]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]                    # old_rbp
                        add              rsp, 1760
                                                                                        jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 1600], 3                      # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n161_match_pos_α
.Lx400_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n161_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n159_match_begin_β
                                                                                        jmp   n162_match_arbno_α
n161_match_pos_β:
                                                                                        jmp   n159_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n162_match_arbno_α:
                        mov              dword ptr [rbp + 1632], r14d
                        mov              dword ptr [rbp + 1636], r14d
                        mov              dword ptr [rbp + 1640], 0
                        mov              qword ptr [rbp + 1656], rsp
                        mov              qword ptr [rbp + 1664], rbp
                        mov              qword ptr [rbp + 1648], 0
                                                                                        jmp   n163_lit_integer_α
n162_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1636]
                        mov              rax, qword ptr [rbp + 1648]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1648], rsp
                        mov              rbp, rsp
                        add              rbp, -1656
                                                                                        jmp   n172_match_defer_α
n162_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              r14d, eax
                                                                                        je    n172_match_defer_β
                        mov              rbp, qword ptr [rbp + 1656]
                        mov              eax, dword ptr [rbp + 1640]
                        add              eax, 1
                        mov              dword ptr [rbp + 1640], eax
                        mov              dword ptr [rbp + 1636], r14d
                                                                                        jmp   n163_lit_integer_α
n162_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              rsp, [rbp + 1736]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1640]
                        test             ecx, ecx
                                                                                        jz    .Lx403_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1640], ecx
                        mov              qword ptr [rbp + 1648], rax
                        lea              rbp, [rax + -1656]
                                                                                        jmp   n172_match_defer_β
.Lx403_2:
                        mov              r14d, dword ptr [rbp + 1632]
                        mov              rbp, qword ptr [rbp + 1664]
                        mov              rsp, qword ptr [rbp + 1656]
                                                                                        jmp   n161_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n164_match_rpos_α
.Lx404_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n164_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n162_match_arbno_β
                                                                                        jmp   n165_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_match_end_α:
                        mov              r10, r12
.Lx407_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx407_9
                        mov              rsp, qword ptr [rbp + 1536]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx407_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx407_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx407_1:
                        test             rax, rax
                                                                                        je    .Lx407_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx407_1
.Lx407_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx407_1
.Lx407_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1568]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1576]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1584]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1592]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1560]                    # old_rbp
                                                                                        jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:
                        add              rsp, 1760
                                                                                        jmp   n167_statement_begin_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:
                                                                                        jmp   n168_lit_string_α
n167_statement_begin_β:
                                                                                        jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_assign_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx413_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n170_statement_end_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 1712], 2                      # result
                        mov              dword ptr [rsp + 1716], 5
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   main_γ
n171_lit_string_β:
                                                                                        jmp   main_ω
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n172_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx417_11
                        mov              rax, qword ptr [1879052336]                    # W
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx417_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx417_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx417_10
.Lx417_9:
                        xor              eax, eax
.Lx417_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx417_11:
                        test             rax, rax
                                                                                        jz    .Lx417_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx417_4]
                        lea              rdx, [rip + .Lx417_5]
                                                                                        jmp   rax
.Lx417_4:
                                                                                        jmp   n162_match_arbno_as
.Lx417_5:
                                                                                        jmp   n162_match_arbno_af
.Lx417_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx417_2:
                        test             rax, rax
                                                                                        je    .Lx417_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx417_7]
                        lea              rdx, [rip + .Lx417_8]
                                                                                        jmp   rax
.Lx417_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx417_2
.Lx417_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx417_2
.Lx417_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n162_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx417_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n162_match_arbno_as
.Lx417_6:
                        add              rsp, 16
                                                                                        jmp   n162_match_arbno_af
n172_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_lit_string_α
n173_statement_begin_β:
                                                                                        jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_assign_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx421_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n176_statement_end_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n177_statement_begin_α
#=======================================================================================================================
# N5      S1 "ab" ARBNO(*P) "bc" RPOS(0) :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:
                                                                                        jmp   n178_var_α
n177_statement_begin_β:
                                                                                        jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:
                        sub              rsp, 2032
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
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1856], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1864], r14                    # outer_δ
                        mov              qword ptr [rbp + 1872], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1880], rax                    # cap_gen
                        mov              qword ptr [rbp + 1848], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1824], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1808], 0                      # start_δ
.Lx428_0:
                        mov              r14d, dword ptr [rbp + 1808]
                                                                                        jmp   n180_match_lit_α
n179_match_begin_β:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, r15d
                                                                                        jg    .Lx428_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx428_1
                                                                                        jmp   .Lx428_0
.Lx428_1:
n179_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1824]
                        mov              r13, qword ptr [rbp + 1856]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1864]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1872]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1880]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]                    # old_rbp
                        add              rsp, 2032
                                                                                        jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n179_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n179_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n179_match_begin_β
                        add              r14d, 2
                                                                                        jmp   n181_match_arbno_α
n180_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n179_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n181_match_arbno_α:
                        mov              dword ptr [rbp + 1904], r14d
                        mov              dword ptr [rbp + 1908], r14d
                        mov              dword ptr [rbp + 1912], 0
                        mov              qword ptr [rbp + 1928], rsp
                        mov              qword ptr [rbp + 1936], rbp
                        mov              qword ptr [rbp + 1920], 0
                                                                                        jmp   n182_match_lit_α
n181_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1908]
                        mov              rax, qword ptr [rbp + 1920]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1920], rsp
                        mov              rbp, rsp
                        add              rbp, -1928
                                                                                        jmp   n192_match_defer_α
n181_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              r14d, eax
                                                                                        je    n192_match_defer_β
                        mov              rbp, qword ptr [rbp + 1928]
                        mov              eax, dword ptr [rbp + 1912]
                        add              eax, 1
                        mov              dword ptr [rbp + 1912], eax
                        mov              dword ptr [rbp + 1908], r14d
                                                                                        jmp   n182_match_lit_α
n181_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              rsp, [rbp + 2008]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1912]
                        test             ecx, ecx
                                                                                        jz    .Lx432_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1912], ecx
                        mov              qword ptr [rbp + 1920], rax
                        lea              rbp, [rax + -1928]
                                                                                        jmp   n192_match_defer_β
.Lx432_2:
                        mov              r14d, dword ptr [rbp + 1904]
                        mov              rbp, qword ptr [rbp + 1936]
                        mov              rsp, qword ptr [rbp + 1928]
                                                                                        jmp   n180_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n181_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n181_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99
                                                                                        jne   n181_match_arbno_β
                        add              r14d, 2
                                                                                        jmp   n183_lit_integer_α
n182_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n181_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n184_match_rpos_α
.Lx435_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n184_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n182_match_lit_β
                                                                                        jmp   n185_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n185_match_end_α:
                        mov              r10, r12
.Lx438_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_9
                        mov              rsp, qword ptr [rbp + 1824]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx438_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx438_1:
                        test             rax, rax
                                                                                        je    .Lx438_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx438_1
.Lx438_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx438_1
.Lx438_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1856]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1864]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1872]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1880]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1848]                    # old_rbp
                                                                                        jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:
                        add              rsp, 2032
                                                                                        jmp   n187_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:
                                                                                        jmp   n188_lit_string_α
n187_statement_begin_β:
                                                                                        jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n189_assign_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx444_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n190_statement_end_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:
                                                                                        jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   main_γ
n191_lit_string_β:
                                                                                        jmp   main_ω
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n192_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx448_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx448_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx448_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx448_10
.Lx448_9:
                        xor              eax, eax
.Lx448_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx448_11:
                        test             rax, rax
                                                                                        jz    .Lx448_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx448_4]
                        lea              rdx, [rip + .Lx448_5]
                                                                                        jmp   rax
.Lx448_4:
                                                                                        jmp   n181_match_arbno_as
.Lx448_5:
                                                                                        jmp   n181_match_arbno_af
.Lx448_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx448_2:
                        test             rax, rax
                                                                                        je    .Lx448_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_7]
                        lea              rdx, [rip + .Lx448_8]
                                                                                        jmp   rax
.Lx448_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx448_2
.Lx448_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx448_2
.Lx448_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n181_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx448_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n181_match_arbno_as
.Lx448_6:
                        add              rsp, 16
                                                                                        jmp   n181_match_arbno_af
n192_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α:
                                                                                        jmp   n194_lit_string_α
n193_statement_begin_β:
                                                                                        jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n195_assign_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx452_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n196_statement_end_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n197_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_begin_α:
                                                                                        jmp   n198_statement_end_α
n197_statement_begin_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_goto_α:
                                                                                        jmp   n87_statement_begin_α
n199_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_goto_α:
                                                                                        jmp   n93_statement_begin_α
n200_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_goto_α:
                                                                                        jmp   n97_statement_begin_α
n201_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_α:
                                                                                        jmp   n107_statement_begin_α
n202_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_goto_α:
                                                                                        jmp   n113_statement_begin_α
n203_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_goto_α:
                                                                                        jmp   n117_statement_begin_α
n204_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_goto_α:
                                                                                        jmp   n127_statement_begin_α
n205_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_goto_α:
                                                                                        jmp   n133_statement_begin_α
n206_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_goto_α:
                                                                                        jmp   n137_statement_begin_α
n207_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_goto_α:
                                                                                        jmp   n147_statement_begin_α
n208_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n209_goto_α:
                                                                                        jmp   n153_statement_begin_α
n209_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n210_goto_α:
                                                                                        jmp   n157_statement_begin_α
n210_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n211_goto_α:
                                                                                        jmp   n167_statement_begin_α
n211_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_goto_α:
                                                                                        jmp   n173_statement_begin_α
n212_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_goto_α:
                                                                                        jmp   n177_statement_begin_α
n213_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_goto_α:
                                                                                        jmp   n187_statement_begin_α
n214_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_goto_α:
                                                                                        jmp   n193_statement_begin_α
n215_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n216_goto_α:
                                                                                        jmp   n197_statement_begin_α
n216_goto_β:
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
