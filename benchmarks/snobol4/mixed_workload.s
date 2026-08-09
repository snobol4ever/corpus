                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_α:
proc_LBL__RSUM_α_body:
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_coerce_numeric_α
n2_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n0_statement_begin_β
.Lx23_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx25_1
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_coerce_numeric_α
.Lx25_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
n3_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx27_1
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n5_cmp_test_α
.Lx27_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
n4_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n3_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx29_240
                        add              rsp, 16
                                                                                        jmp   n4_coerce_numeric_β
.Lx29_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n6_lit_integer_α
n5_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n4_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_binop_α
n6_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n5_cmp_test_β
.Lx30_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                                                                                        jmp   n19_save_restore_α
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_var_α
n10_statement_begin_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_lit_integer_α
n12_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_binop_α
n13_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n12_var_β
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n13_lit_integer_β
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_call_α
n14_binop_β:
                        add              rsp, 16
                                                                                        jmp   n13_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # binop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # RSUM
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx42_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx42_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx42_6]
                        lea              rdx, [rip + .Lx42_7]
                                                                                        jmp   rax
.Lx42_6:
                        mov              rdi, qword ptr [1879052288]                    # RSUM
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx42_2
.Lx42_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx42_2
.Lx42_5:
                        add              rsp, 32
.Lx42_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx42_240
                        add              rsp, 16
                                                                                        jmp   n14_binop_β
.Lx42_240:
                                                                                        jmp   n16_binop_α
n15_call_β:
                                                                                        jmp   n14_binop_β
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx43_240
                        add              rsp, 32
                                                                                        jmp   n14_binop_β
.Lx43_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n19_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx48_0
                        mov              cl, 0
                        mov              rax, qword ptr [rcx + -64]
                                                                                        jmp   rax
.Lx48_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_RSUM_α
proc_RSUM_α:
proc_RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n49_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n50_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx54_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx54_1
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "RSUM"
.Lx54_1:
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_β:
                                                                                        jmp   proc_RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n55_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n56_match_break_α
n55_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n56_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx62_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx62_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx62_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx62_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx62_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx62_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx62_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx62_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx62_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx62_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx62_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx62_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx62_1
                        add              ecx, 1
                                                                                        jmp   .Lx62_0
.Lx62_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n57_match_assign_cond_α
n56_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n57_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n58_match_lit_α
n57_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n56_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n57_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n57_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_scanhit
n58_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n57_match_assign_cond_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx67_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx67_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx68_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx68_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx68_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx68_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__RSUM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1664
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "RSUM"
.Lstartup_pp1_0:        .string          "N"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$0_α]
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
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
n69_statement_begin_β:
                                                                                        jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_lit_integer_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_call_α
n71_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_β
.Lx229_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:
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
.Lrkfnzd231:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd231]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx230_240
                        add              rsp, 16
                                                                                        jmp   n71_lit_integer_β
.Lx230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_statement_end_α
n72_call_β:
                        add              rsp, 16
                                                                                        jmp   n71_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n74_statement_begin_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_lit_string_α
n74_statement_begin_β:
                                                                                        jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_lit_integer_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_call_α
n76_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n74_statement_begin_β
.Lx237_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:
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
.Lrkfnzd239:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd239]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx238_240
                        add              rsp, 16
                                                                                        jmp   n76_lit_integer_β
.Lx238_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_statement_end_α
n77_call_β:
                        add              rsp, 16
                                                                                        jmp   n76_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n79_statement_begin_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:
                                                                                        jmp   n80_func_activate_α
n79_statement_begin_β:
                                                                                        jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_func_activate_α:
                        lea              rax, [rip + RSUM_act_α]
                        mov              r11, qword ptr [rip + fn_cell$RSUM@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n81_statement_end_α
n80_func_activate_β:
                                                                                        jmp   n79_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:
                                                                                        jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:
                                                                                        jmp   n83_statement_end_α
n82_statement_begin_β:
                                                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_lit_string_α
n84_statement_begin_β:
                                                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_call_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd256:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd256]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx255_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_β
.Lx255_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_assign_α
n86_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # PAT
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n89_statement_begin_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:
                                                                                        jmp   n90_call_α
n89_statement_begin_β:
                                                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd263:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd263]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx262_240
                        add              rsp, 16
                                                                                        jmp   n89_statement_begin_β
.Lx262_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_assign_α
n90_call_β:
                        add              rsp, 16
                                                                                        jmp   n89_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T1
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n93_statement_begin_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:
                                                                                        jmp   n94_lit_integer_α
n93_statement_begin_β:
                                                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n95_assign_α
.Lx269_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # OUTER
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n97_statement_begin_α
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:
                                                                                        jmp   n98_lit_integer_α
n97_statement_begin_β:
                                                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_call_α
.Lx275_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd277:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd277]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx276_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n97_statement_begin_β
.Lx276_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_assign_α
n99_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n97_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # T
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n102_statement_begin_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:
                                                                                        jmp   n103_lit_string_α
n102_statement_begin_β:
                                                                                        jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_assign_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # DATA
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n106_statement_begin_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:
                                                                                        jmp   n107_lit_integer_α
n106_statement_begin_β:
                                                                                        jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_assign_α
.Lx289_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # IDX
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n110_statement_begin_α
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:
                                                                                        jmp   n111_var_α
n110_statement_begin_β:
                                                                                        jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # DATA
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # PAT
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_assign_α
n112_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx297_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n114_match_begin_α
n113_assign_β:
                                                                                        jmp   n112_var_β
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n114_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rbp + 848], rdi
                        mov              qword ptr [rbp + 856], rsi
                        mov              qword ptr [rbp + 752], r13                     # outer_Σ
                        mov              qword ptr [rbp + 760], r14                     # outer_δ
                        mov              qword ptr [rbp + 768], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 776], rax                     # cap_gen
                        mov              qword ptr [rbp + 744], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 720], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 704], 0                       # start_δ
.Lx299_0:
                        mov              r14d, dword ptr [rbp + 704]
                                                                                        jmp   n115_match_defer_α
n114_match_begin_β:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, r15d
                                                                                        jg    .Lx299_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx299_1
                                                                                        jmp   .Lx299_0
.Lx299_1:
n114_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 720]
                        mov              r13, qword ptr [rbp + 752]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 760]                     # outer_δ
                        mov              r15, qword ptr [rbp + 768]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 776]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 744]                     # old_rbp
                                                                                        jmp   n113_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx300_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx300_4]
                        lea              rdx, [rip + .Lx300_5]
                                                                                        jmp   rax
.Lx300_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 704], eax
                                                                                        jmp   n116_match_end_α
.Lx300_5:
                                                                                        jmp   n114_match_begin_β
.Lx300_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx300_2:
                        test             rax, rax
                                                                                        je    .Lx300_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx300_7]
                        lea              rdx, [rip + .Lx300_8]
                                                                                        jmp   rax
.Lx300_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx300_2
.Lx300_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx300_2
.Lx300_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n114_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx300_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n116_match_end_α
.Lx300_6:
                        add              rsp, 16
                                                                                        jmp   n114_match_begin_β
n115_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_match_end_α:
                        mov              r10, r12
.Lx302_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx302_9
                        mov              qword ptr [rbp + 728], r14
                        mov              rsp, qword ptr [rbp + 720]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx302_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx302_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx302_1:
                        test             rax, rax
                                                                                        je    .Lx302_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx302_3]
                        lea              rdx, [rip + .Lx302_4]
                                                                                        jmp   rax
.Lx302_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx302_1
.Lx302_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx302_1
.Lx302_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx302_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx302_10
                        mov              r13, qword ptr [rbp + 752]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 760]                     # outer_δ
                        mov              r15, qword ptr [rbp + 768]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_match_replace_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n118_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        mov              rsi, qword ptr [rbp + 848]                     # sub_lo
                        mov              rdx, qword ptr [rbp + 856]                     # sub_hi
                        mov              ecx, dword ptr [rbp + 704]                     # start
                        mov              r8, qword ptr [rbp + 728]                      # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx305_1
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "DATA"
.Lx305_1:
                        mov              rbp, qword ptr [rbp + 744]                     # old_rbp
                                                                                        jmp   n119_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n120_statement_begin_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α:
                                                                                        jmp   n121_var_α
n120_statement_begin_β:
                                                                                        jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # IDX
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_binop_α
n122_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n120_statement_begin_β
.Lx311_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx312_240
                        add              rsp, 16
                                                                                        jmp   n122_lit_integer_β
.Lx312_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # IDX
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n126_statement_begin_α
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α:
                                                                                        jmp   n127_var_α
n126_statement_begin_β:
                                                                                        jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # T
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # IDX
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_subscript_α
n128_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n126_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx320_240
                        add              rsp, 16
                                                                                        jmp   n128_var_β
.Lx320_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n130_var_α
n129_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n128_var_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # WORD
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_lit_integer_α
n130_var_β:
                        add              rsp, 16
                                                                                        jmp   n129_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n132_binop_α
n131_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n130_var_β
.Lx322_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx323_240
                        add              rsp, 16
                                                                                        jmp   n131_lit_integer_β
.Lx323_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_assign_var_α
n132_binop_β:
                        add              rsp, 16
                                                                                        jmp   n131_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # subscript
                        mov              rsi, qword ptr [rsp + 72]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx324_240
                        add              rsp, 16
                                                                                        jmp   n132_binop_β
.Lx324_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n110_statement_begin_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:
                                                                                        jmp   n136_lit_integer_α
n135_statement_begin_β:
                                                                                        jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_assign_α
.Lx329_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # TOTAL
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n139_statement_begin_α
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α:
                                                                                        jmp   n140_lit_integer_α
n139_statement_begin_β:
                                                                                        jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n141_assign_α
.Lx335_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # I
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n143_statement_begin_α
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α:
                                                                                        jmp   n144_var_α
n143_statement_begin_β:
                                                                                        jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # I
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # IDX
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_coerce_numeric_α
n145_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n143_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n146_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx344_1
                        cmp              eax, 3
                                                                                        jne   .Lx344_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx344_0
.Lx344_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n147_coerce_numeric_α
.Lx344_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n147_coerce_numeric_α
n146_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n145_var_β
#-----------------------------------------------------------------------------------------------------------------------
n147_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx346_1
                        cmp              eax, 3
                                                                                        jne   .Lx346_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx346_0
.Lx346_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n148_cmp_test_α
.Lx346_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n148_cmp_test_α
n147_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n146_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n148_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx348_240
                        add              rsp, 16
                                                                                        jmp   n147_coerce_numeric_β
.Lx348_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n149_var_α
n148_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n147_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # I
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_lit_integer_α
n149_var_β:
                        add              rsp, 16
                                                                                        jmp   n148_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_binop_α
n150_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n149_var_β
.Lx350_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx351_240
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_β
.Lx351_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_binop_α
n151_binop_β:
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n153_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # I
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n154_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n155_statement_begin_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_begin_α:
                                                                                        jmp   n156_var_α
n155_statement_begin_β:
                                                                                        jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # TOTAL
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # T
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_var_α
n157_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n155_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # I
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n159_subscript_α
n158_var_β:
                        add              rsp, 16
                                                                                        jmp   n157_var_β
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx361_240
                        add              rsp, 16
                                                                                        jmp   n158_var_β
.Lx361_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_deref_α
n159_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx362_240
                        add              rsp, 16
                                                                                        jmp   n159_subscript_β
.Lx362_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n161_binop_α
n160_deref_β:
                        add              rsp, 16
                                                                                        jmp   n159_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx363_240
                        add              rsp, 16
                                                                                        jmp   n160_deref_β
.Lx363_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n162_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # TOTAL
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n163_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n143_statement_begin_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α:
                                                                                        jmp   n165_lit_integer_α
n164_statement_begin_β:
                                                                                        jmp   n169_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_call_α
.Lx369_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # RSUM
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx371_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_6]
                        lea              rdx, [rip + .Lx371_7]
                                                                                        jmp   rax
.Lx371_6:
                        mov              rdi, qword ptr [1879052288]                    # RSUM
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        add              rsp, 32
.Lx371_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx371_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n164_statement_begin_β
.Lx371_240:
                                                                                        jmp   n167_assign_α
n166_call_β:
                                                                                        jmp   n164_statement_begin_β
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # CHECK
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n168_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n169_statement_begin_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α:
                                                                                        jmp   n170_var_α
n169_statement_begin_β:
                                                                                        jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # OUTER
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n172_coerce_numeric_α
n171_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n169_statement_begin_β
.Lx378_0:
                        .quad            50000
#-----------------------------------------------------------------------------------------------------------------------
n172_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx380_1
                        cmp              eax, 3
                                                                                        jne   .Lx380_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx380_0
.Lx380_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n173_coerce_numeric_α
.Lx380_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n173_coerce_numeric_α
n172_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n171_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n173_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx382_1
                        cmp              eax, 3
                                                                                        jne   .Lx382_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx382_0
.Lx382_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n174_cmp_test_α
.Lx382_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n174_cmp_test_α
n173_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n172_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n174_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx384_240
                        add              rsp, 16
                                                                                        jmp   n173_coerce_numeric_β
.Lx384_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n175_var_α
n174_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n173_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # OUTER
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_lit_integer_α
n175_var_β:
                        add              rsp, 16
                                                                                        jmp   n174_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n177_binop_α
n176_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n175_var_β
.Lx386_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx387_240
                        add              rsp, 16
                                                                                        jmp   n176_lit_integer_β
.Lx387_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n178_binop_α
n177_binop_β:
                        add              rsp, 16
                                                                                        jmp   n176_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # OUTER
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n97_statement_begin_α
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:
                                                                                        jmp   n182_call_α
n181_statement_begin_β:
                                                                                        jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd395:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd395]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 16
                                                                                        jmp   n181_statement_begin_β
.Lx394_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n183_assign_α
n182_call_β:
                        add              rsp, 16
                                                                                        jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # T2
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n184_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n185_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α:
                                                                                        jmp   n186_lit_string_α
n185_statement_begin_β:
                                                                                        jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_var_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # TOTAL
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n188_binop_α
n187_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n185_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n189_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx404_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n190_statement_end_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n191_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:
                                                                                        jmp   n192_lit_string_α
n191_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_var_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # T2
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n194_var_α
n193_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n195_binop_α
n194_var_β:
                        add              rsp, 16
                                                                                        jmp   n193_var_β
#-----------------------------------------------------------------------------------------------------------------------
n195_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx412_240
                        add              rsp, 16
                                                                                        jmp   n194_var_β
.Lx412_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n196_binop_α
n195_binop_β:
                        add              rsp, 16
                                                                                        jmp   n194_var_β
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n197_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx414_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n198_statement_end_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_goto_α:
                                                                                        jmp   n200_statement_begin_α
n199_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:
                                                                                        jmp   n201_var_α
n200_statement_begin_β:
                                                                                        jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n203_coerce_numeric_α
n202_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n200_statement_begin_β
.Lx421_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx423_1
                        cmp              eax, 3
                                                                                        jne   .Lx423_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx423_0
.Lx423_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n204_coerce_numeric_α
.Lx423_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n202_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx425_1
                        cmp              eax, 3
                                                                                        jne   .Lx425_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx425_0
.Lx425_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n205_cmp_test_α
.Lx425_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n205_cmp_test_α
n204_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n203_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx427_240
                        add              rsp, 16
                                                                                        jmp   n204_coerce_numeric_β
.Lx427_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n206_lit_integer_α
n205_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n204_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n207_binop_α
n206_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n205_cmp_test_β
.Lx428_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n207_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n208_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n209_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:
                                                                                        jmp   n219_save_restore_α
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:
                                                                                        jmp   n211_var_α
n210_statement_begin_β:
                                                                                        jmp   n219_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n212_var_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n213_lit_integer_α
n212_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n214_binop_α
n213_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n212_var_β
.Lx437_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx438_240
                        add              rsp, 16
                                                                                        jmp   n213_lit_integer_β
.Lx438_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n215_call_α
n214_binop_β:
                        add              rsp, 16
                                                                                        jmp   n213_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # binop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # RSUM
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx440_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx440_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx440_6]
                        lea              rdx, [rip + .Lx440_7]
                                                                                        jmp   rax
.Lx440_6:
                        mov              rdi, qword ptr [1879052288]                    # RSUM
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx440_2
.Lx440_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx440_2
.Lx440_5:
                        add              rsp, 32
.Lx440_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx440_240
                        add              rsp, 16
                                                                                        jmp   n214_binop_β
.Lx440_240:
                                                                                        jmp   n216_binop_α
n215_call_β:
                                                                                        jmp   n214_binop_β
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx441_240
                        add              rsp, 32
                                                                                        jmp   n214_binop_β
.Lx441_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n217_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # RSUM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n218_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n219_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n219_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx446_0
                        mov              cl, 0
                        mov              rax, qword ptr [rcx + -64]
                                                                                        jmp   rax
.Lx446_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n220_goto_α:
                                                                                        jmp   n82_statement_begin_α
n220_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_goto_α:
                                                                                        jmp   n97_statement_begin_α
n221_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_goto_α:
                                                                                        jmp   n110_statement_begin_α
n222_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_goto_α:
                                                                                        jmp   n135_statement_begin_α
n223_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_goto_α:
                                                                                        jmp   n143_statement_begin_α
n224_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_goto_α:
                                                                                        jmp   n164_statement_begin_α
n225_goto_β:
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
                        .section         .data
                        .align           8
fn_cell$RSUM:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
RSUM_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx453_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052288]                    # RSUM
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # RSUM
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rax
                        xor              eax, eax                                       # N
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rax
                        movabs           rax, 140714033012108
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_2
                        mov              rdi, qword ptr [rip + .Lx453_0]
                        call             mon_emit_call_bin@PLT
.Lx453_2:
                                                                                        jmp   proc_RSUM_α
                                                                                        jmp   RSUM_act_γ
.Lx453_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx453_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx453_4
.Lx453_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx453_4:
                        mov              rcx, qword ptr [rbp + -112]                    # RSUM
                        mov              qword ptr [1879052288], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052296], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # N
                        mov              qword ptr [1879052304], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052312], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140714033012108
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_5
                        mov              rdi, qword ptr [rip + .Lx453_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx453_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx453_6
                                                                                        jmp   r10
.Lx453_6:
                                                                                        jmp   r11
RSUM_act_γ:
RSUM_act_ω:
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "RSUM"
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
