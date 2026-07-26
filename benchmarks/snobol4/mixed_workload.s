                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_RSUM_α
proc_RSUM_α:
                        .global          proc_RSUM_α
                        .global          proc_RSUM_β
                        .global          proc_RSUM_γ
                        .global          proc_RSUM_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_RSUM_α_body:
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n3_op74_α
.Lx16_0:
                        .quad            0
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op74_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx19_1
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
.Lx19_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n5_op74_α
.Lx19_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 80]
                        lea              rdx, [rbp + 64]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op74_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 7
                                                                                        je    .Lx22_1
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n7_op76_α
.Lx22_0:
                        lea              rdi, [rbp + 80]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n8_binop_α
.Lx23_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_op76_α:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 48]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n2_var_α
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 100
                                                                                        je    .Lx26_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx26_2
.Lx26_1:
                        mov              rax, qword ptr [rbp + 248]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 224], 6
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n10_call_α
.Lx26_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              r8d, 1
                        lea              r9, [rbp + 224]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n10_call_α
.Lx26_2:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_RSUM_γ
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n10_call_α
n8_binop_β:
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n11_binop_α
.Lx27_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx29_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx29_5
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_6]
                        lea              rdx, [rip + .Lx29_7]
                                                                                        jmp   rax
.Lx29_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx29_21
.Lx29_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx29_21:
                        mov              rdi, qword ptr [rip + .Lx29_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx29_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4]
                                                                                        jmp   rax
.Lx29_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_1:
                        call             rt_faildescr@PLT
.Lx29_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_RSUM_γ
                                                                                        jmp   n12_binop_α
n10_call_β:
                                                                                        jmp   proc_RSUM_γ
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 100
                                                                                        je    .Lx31_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 100
                                                                                        je    .Lx31_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx31_2
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx31_2
.Lx31_1:
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 184]
                        add              rax, rcx
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n14_assign_α
.Lx31_0:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        lea              r9, [rbp + 144]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n14_assign_α
.Lx31_2:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_RSUM_γ
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n14_assign_α
n12_binop_β:
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_β:
                                                                                        jmp   proc_RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n34_match_sequence_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                                                                                        jmp   n35_match_assign_save_α
n34_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n34_match_sequence_β:
                                                                                        jmp   n37_match_lit_β
n34_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n38_match_break_α
n35_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n37_match_lit_α
n36_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n38_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n36_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n36_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n37_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n36_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx48_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx48_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx48_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx48_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx48_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx48_1
                        add              ecx, 1
                                                                                        jmp   .Lx48_0
.Lx48_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n36_match_assign_cond_α
n38_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
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
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "RSUM"
.Lstartup_pp0_0:        .string          "N"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "PAT"
.Lgvan3:                .string          "WORD"
.Lgvan4:                .string          "T1"
.Lgvan5:                .string          "OUTER"
.Lgvan6:                .string          "T"
.Lgvan7:                .string          "DATA"
.Lgvan8:                .string          "IDX"
.Lgvan9:                .string          "TOTAL"
.Lgvan10:               .string          "I"
.Lgvan11:               .string          "CHECK"
.Lgvan12:               .string          "T2"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 13
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 13
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
                        sub              rsp, 1608
                        mov              rdi, rsp
                        mov              ecx, 1608
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1600], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n50_lit_integer_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n51_call_α
.Lx133_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn135:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n52_lit_string_α
                                                                                        jmp   n52_lit_string_α
n51_call_β:
                                                                                        jmp   n52_lit_string_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n53_lit_integer_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n54_call_α
.Lx137_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn139:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n55_lit_string_α
n54_call_β:
                                                                                        jmp   n55_lit_string_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n56_call_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn142:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n58_call_α
                                                                                        jmp   n57_assign_α
n56_call_β:
                                                                                        jmp   n58_call_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n58_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        .section         .rodata
.Lrkfn145:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 304]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n60_lit_integer_α
                                                                                        jmp   n59_assign_α
n58_call_β:
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n60_lit_integer_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n61_assign_α
.Lx147_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n62_lit_integer_α
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n63_call_α
.Lx149_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn151:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n65_lit_string_α
                                                                                        jmp   n64_assign_α
n63_call_β:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n65_lit_string_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n66_assign_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n67_lit_integer_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n68_assign_α
.Lx155_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n69_var_α
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n70_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n70_match_head_α:
                        mov              qword ptr [rbp + 552], rbp
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 544], r12
                        mov              qword ptr [rbp + 528], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 520], rax
                        mov              dword ptr [rbp + 512], 0
.Lx159_0:
                        mov              r14d, dword ptr [rbp + 512]
                                                                                        jmp   n72_match_defer_α
n70_match_head_β:
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, r15d
                                                                                        jg    .Lx159_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx159_1
                                                                                        jmp   .Lx159_0
.Lx159_1:
                        mov              rax, qword ptr [rbp + 520]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 528]
                        mov              r12, qword ptr [rbp + 544]
                        mov              rbp, qword ptr [rbp + 552]
                                                                                        jmp   n71_lit_integer_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n73_assign_α
.Lx160_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx161_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx161_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx161_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx161_10
.Lx161_9:
                        xor              eax, eax
.Lx161_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx161_11:
                        test             rax, rax
                                                                                        jz    .Lx161_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx161_4]
                        lea              rdx, [rip + .Lx161_5]
                                                                                        jmp   rax
.Lx161_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 512], eax
                                                                                        jmp   n74_match_release_α
.Lx161_5:
                                                                                        jmp   n70_match_head_β
.Lx161_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx161_2:
                        test             rax, rax
                                                                                        je    .Lx161_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx161_7]
                        lea              rdx, [rip + .Lx161_8]
                                                                                        jmp   rax
.Lx161_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx161_2
.Lx161_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx161_2
.Lx161_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n70_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx161_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n74_match_release_α
.Lx161_6:
                        add              rsp, 16
                                                                                        jmp   n70_match_head_β
n72_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_match_release_α:
                        mov              rax, qword ptr [rbp + 520]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 536], r14
                        mov              rsp, qword ptr [rbp + 528]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx164_1:
                        test             rax, rax
                                                                                        je    .Lx164_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx164_1
.Lx164_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx164_1
.Lx164_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 544]
                                                                                        jmp   n76_lit_string_α
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n77_assign_α
.Lx165_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n78_match_replace_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              ecx, dword ptr [rbp + 512]
                        mov              r8, qword ptr [rbp + 536]
                        lea              r9, [rbp + 576]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx169_1
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "DATA"
.Lx169_1:
                        mov              rbp, qword ptr [rbp + 552]
                                                                                        jmp   n80_var_α
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n81_var_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n85_op74_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n86_call_α
.Lx173_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n87_binop_α
.Lx174_0:
                        .quad            1
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op74_α:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 7
                                                                                        je    .Lx177_1
                        cmp              eax, 6
                                                                                        jne   .Lx177_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx177_0
.Lx177_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n89_op74_α
.Lx177_0:
                        lea              rdi, [rbp + 976]
                        lea              rsi, [rbp + 960]
                        lea              rdx, [rbp + 944]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n89_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx179_5
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx179_6]
                        lea              rdx, [rip + .Lx179_7]
                                                                                        jmp   rax
.Lx179_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx179_20
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx179_21
.Lx179_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_arg_stage@PLT
.Lx179_21:
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx179_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx179_3]
                        lea              rdx, [rip + .Lx179_4]
                                                                                        jmp   rax
.Lx179_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_1:
                        call             rt_faildescr@PLT
.Lx179_2:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n91_var_α
                                                                                        jmp   n90_assign_α
n86_call_β:
                                                                                        jmp   n91_var_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx180_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx180_2
.Lx180_1:
                        mov              rax, qword ptr [rbp + 680]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n92_assign_α
.Lx180_0:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 0
                        lea              r9, [rbp + 656]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n92_assign_α
.Lx180_2:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n84_var_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n92_assign_α
n87_binop_β:
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n93_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op74_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 7
                                                                                        je    .Lx183_1
                        cmp              eax, 6
                                                                                        jne   .Lx183_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx183_0
.Lx183_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n94_op76_α
.Lx183_0:
                        lea              rdi, [rbp + 960]
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 928]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n91_var_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n69_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op76_α:
                        lea              rdi, [rbp + 944]
                        lea              rsi, [rbp + 928]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n82_lit_integer_α
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n99_op74_α
.Lx190_0:
                        .quad            50000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:
                        .section         .rodata
.Lrkfn192:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n100_assign_α
n96_call_β:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n102_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op74_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 7
                                                                                        je    .Lx196_1
                        cmp              eax, 6
                                                                                        jne   .Lx196_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx196_0
.Lx196_1:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n104_op74_α
.Lx196_0:
                        lea              rdi, [rbp + 1328]
                        lea              rsi, [rbp + 1312]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n104_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n101_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n105_var_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n106_binop_α
.Lx199_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n107_binop_α
.Lx200_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_op74_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 7
                                                                                        je    .Lx202_1
                        cmp              eax, 6
                                                                                        jne   .Lx202_0
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx202_0
.Lx202_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n108_op76_α
.Lx202_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1328]
                        lea              rdx, [rbp + 1280]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n108_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx204_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx204_2
.Lx204_1:
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 0
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n111_assign_var_α
.Lx204_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              r8d, 0
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n111_assign_var_α
.Lx204_2:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n69_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n111_assign_var_α
n106_binop_β:
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx205_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx205_2
.Lx205_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 992], 6
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n112_binop_α
.Lx205_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              r8d, 0
                        lea              r9, [rbp + 992]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n112_binop_α
.Lx205_2:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n82_lit_integer_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n112_binop_α
n107_binop_β:
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op76_α:
                        lea              rdi, [rbp + 1296]
                        lea              rsi, [rbp + 1280]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n96_call_α
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n114_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n115_var_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_var_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n69_var_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n116_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n110_lit_string_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n120_binop_α
.Lx216_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n121_binop_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx219_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx219_2
.Lx219_1:
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1344], 6
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n123_binop_α
.Lx219_0:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              r8d, 0
                        lea              r9, [rbp + 1344]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n123_binop_α
.Lx219_2:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n96_call_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n123_binop_α
n120_binop_β:
                                                                                        jmp   n96_call_α
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_α:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 100
                                                                                        je    .Lx220_0
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 100
                                                                                        je    .Lx220_0
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 6
                                                                                        jne   .Lx220_2
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 6
                                                                                        jne   .Lx220_2
.Lx220_1:
                        mov              rax, qword ptr [rbp + 1576]
                        mov              rcx, qword ptr [rbp + 1592]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n124_binop_α
.Lx220_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              r8d, 1
                        lea              r9, [rbp + 1552]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n124_binop_α
.Lx220_2:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n124_binop_α
n121_binop_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n126_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n128_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   main_γ
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n128_subscript_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n79_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n129_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_deref_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n79_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n130_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx229_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 100
                                                                                        je    .Lx229_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx229_2
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx229_2
.Lx229_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, qword ptr [rbp + 1144]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1056], 6
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n131_assign_α
.Lx229_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              r8d, 0
                        lea              r9, [rbp + 1056]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n131_assign_α
.Lx229_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n79_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n131_assign_α
n130_binop_β:
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1600]
                        add              rsp, 1608
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1600]
                        add              rsp, 1608
                        ret
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PAT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
