                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__RSUM_α
proc_LBL__RSUM_α:
                        .global          proc_LBL__RSUM_α
                        .global          proc_LBL__RSUM_β
                        .global          proc_LBL__RSUM_γ
                        .global          proc_LBL__RSUM_ω
                        sub              rsp, 1648
                        mov              [rsp + 1624], rcx
                        mov              [rsp + 1632], rdx
                        mov              [rsp + 1640], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n4_op75_α
.Lx19_0:
                        .quad            0
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op75_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx22_1
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n7_op75_α
.Lx22_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n7_op75_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx27_1
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n9_op77_α
.Lx27_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n10_binop_α
.Lx28_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op77_α:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n3_var_α
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 100
                                                                                        je    .Lx31_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx31_2
.Lx31_1:
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n12_call_α
.Lx31_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 1
                        lea              r9, [rsp + 416]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n12_call_α
.Lx31_2:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n12_call_α
n10_binop_β:
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n13_binop_α
.Lx32_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx34_5
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_6]
                        lea              rdx, [rip + .Lx34_7]
                                                                                        jmp   rax
.Lx34_6:
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
                                                                                        jmp   .Lx34_2
.Lx34_7:
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
                                                                                        jmp   .Lx34_2
.Lx34_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                                                                                        jmp   n14_binop_α
n12_call_β:
                                                                                        jmp   n6_op14_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 100
                                                                                        je    .Lx36_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 100
                                                                                        je    .Lx36_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx36_2
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx36_2
.Lx36_1:
                        mov              rax, qword ptr [rsp + 360]
                        mov              rcx, qword ptr [rsp + 376]
                        add              rax, rcx
                        mov              qword ptr [rsp + 336], 6
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n16_assign_α
.Lx36_0:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 0
                        lea              r9, [rsp + 336]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n16_assign_α
.Lx36_2:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n16_assign_α
n14_binop_β:
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1624]
                        lea              rsp, [rbp + 1648]
                        mov              rbp, [rbp + 1640]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_ω:
                        mov              rax, [rbp + 1632]
                        lea              rsp, [rbp + 1648]
                        mov              rbp, [rbp + 1640]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_RSUM_α
proc_RSUM_α:
                        .global          proc_RSUM_α
                        .global          proc_RSUM_β
                        .global          proc_RSUM_γ
                        .global          proc_RSUM_ω
                        sub              rsp, 1648
                        mov              [rsp + 1624], rcx
                        mov              [rsp + 1632], rdx
                        mov              rdi, rsp
                        mov              ecx, 1616
                        xor              eax, eax
                        rep stosb
proc_RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n39_op14_α:
                        mov              rdi, qword ptr [rsp + 1624]
                        mov              rsi, qword ptr [rsp + 1632]
                        lea              rdx, [rsp + 1648]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n40_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx44_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx44_1
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "RSUM"
.Lx44_1:
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1624]
                        add              rsp, 1648
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_ω:
                        mov              rax, [rsp + 1632]
                        add              rsp, 1648
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n45_match_sequence_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n45_match_sequence_α:
                                                                                        jmp   n46_match_assign_save_α
n45_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n45_match_sequence_β:
                                                                                        jmp   n48_match_lit_β
n45_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n49_match_break_α
n46_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n48_match_lit_α
n47_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n49_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n47_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n47_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n48_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n47_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx59_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx59_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx59_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx59_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx59_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx59_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx59_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx59_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx59_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx59_1
                        add              ecx, 1
                                                                                        jmp   .Lx59_0
.Lx59_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n47_match_assign_cond_α
n49_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
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
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rsp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
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
                        mov              esi, 1616
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
                        mov              esi, 128
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
                        sub              rsp, 1624
                        mov              rdi, rsp
                        mov              ecx, 1624
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1616], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n68_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n61_goto_α:
                                                                                        jmp   n69_var_α
n61_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n70_lit_string_α
n62_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n71_lit_integer_α
n63_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_α:
                                                                                        jmp   n72_var_α
n64_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_goto_α:
                                                                                        jmp   n73_lit_integer_α
n65_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_goto_α:
                                                                                        jmp   n74_var_α
n66_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n75_lit_integer_α
n67_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n76_call_α
.Lx174_0:
                        .quad            1
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n77_lit_integer_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n79_call_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "PAT$0"
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rsp + 624], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n80_call_α
.Lx177_0:
                        .quad            16
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n81_match_head_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx179_0:
                        .quad            0
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n83_var_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rsp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 1304], rax
                                                                                        jmp   n84_call_α
.Lx181_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn183:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n85_lit_string_α
                                                                                        jmp   n85_lit_string_α
n76_call_β:
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n86_op75_α
.Lx184_0:
                        .quad            0
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn187:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n90_call_α
                                                                                        jmp   n89_assign_α
n79_call_β:
                                                                                        jmp   n90_call_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn189:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n92_lit_string_α
                                                                                        jmp   n91_assign_α
n80_call_β:
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_head_α:
                        mov              qword ptr [rsp + 728], rbp
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 720], r12
                        mov              qword ptr [rsp + 704], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 696], rax
                        mov              dword ptr [rsp + 688], 0
.Lx191_0:
                        mov              r14d, dword ptr [rsp + 688]
                                                                                        jmp   n93_match_defer_α
n81_match_head_β:
                        add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, r15d
                                                                                        jg    .Lx191_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx191_1
                                                                                        jmp   .Lx191_0
.Lx191_1:
                        mov              rax, qword ptr [rsp + 696]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 704]
                        mov              r12, qword ptr [rsp + 720]
                        mov              rbp, qword ptr [rsp + 728]
                                                                                        jmp   n73_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                                                                                        jmp   n95_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx195_5
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_6]
                        lea              rdx, [rip + .Lx195_7]
                                                                                        jmp   rax
.Lx195_6:
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
                                                                                        jmp   .Lx195_2
.Lx195_7:
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
                                                                                        jmp   .Lx195_2
.Lx195_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_20
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx195_21
.Lx195_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        call             rt_arg_stage@PLT
.Lx195_21:
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx195_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4]
                                                                                        jmp   rax
.Lx195_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_1:
                        call             rt_faildescr@PLT
.Lx195_2:
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n97_var_α
                                                                                        jmp   n96_assign_α
n84_call_β:
                                                                                        jmp   n97_var_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "RSUM"
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rsp + 176], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n98_lit_integer_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n86_op75_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx198_1
                        cmp              eax, 6
                                                                                        jne   .Lx198_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx198_0
.Lx198_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n99_op75_α
.Lx198_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n99_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n90_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        .section         .rodata
.Lrkfn204:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rsp + 544]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n102_lit_integer_α
                                                                                        jmp   n101_assign_α
n90_call_β:
                                                                                        jmp   n102_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n92_lit_string_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_assign_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx207_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx207_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx207_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx207_10
.Lx207_9:
                        xor              eax, eax
.Lx207_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx207_11:
                        test             rax, rax
                                                                                        jz    .Lx207_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx207_4]
                        lea              rdx, [rip + .Lx207_5]
                                                                                        jmp   rax
.Lx207_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 688], eax
                                                                                        jmp   n104_match_release_α
.Lx207_5:
                                                                                        jmp   n81_match_head_β
.Lx207_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx207_2:
                        test             rax, rax
                                                                                        je    .Lx207_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx207_7]
                        lea              rdx, [rip + .Lx207_8]
                                                                                        jmp   rax
.Lx207_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx207_2
.Lx207_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx207_2
.Lx207_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n81_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx207_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n104_match_release_α
.Lx207_6:
                        add              rsp, 16
                                                                                        jmp   n81_match_head_β
n93_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_assign_α
.Lx208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_op75_α:
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 7
                                                                                        je    .Lx210_1
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n106_op75_α
.Lx210_0:
                        lea              rdi, [rsp + 1088]
                        lea              rsi, [rsp + 1072]
                        lea              rdx, [rsp + 1056]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n106_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n97_var_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                                                                                        jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n109_call_α
.Lx213_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n99_op75_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx215_1
                        cmp              eax, 6
                                                                                        jne   .Lx215_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx215_0
.Lx215_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n110_op77_α
.Lx215_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n110_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n111_binop_α
.Lx216_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n102_lit_integer_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_assign_α
.Lx218_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_match_release_α:
                        mov              rax, qword ptr [rsp + 696]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rsp + 712], r14
                        mov              rsp, qword ptr [rsp + 704]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx221_1:
                        test             rax, rax
                                                                                        je    .Lx221_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx221_1
.Lx221_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx221_1
.Lx221_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 720]
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n74_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_op75_α:
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 7
                                                                                        je    .Lx224_1
                        cmp              eax, 6
                                                                                        jne   .Lx224_0
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 6
                                                                                        jne   .Lx224_0
.Lx224_1:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n115_op77_α
.Lx224_0:
                        lea              rdi, [rsp + 1072]
                        lea              rsi, [rsp + 1088]
                        lea              rdx, [rsp + 1040]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n115_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n116_op75_α
.Lx225_0:
                        .quad            50000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
                        .section         .rodata
.Lrkfn227:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n118_lit_string_α
                                                                                        jmp   n117_assign_α
n108_call_β:
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn229:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rsp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n70_lit_string_α
                                                                                        jmp   n70_lit_string_α
n109_call_β:
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_op77_α:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n78_var_α
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                                                                                        jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 100
                                                                                        je    .Lx232_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx232_2
.Lx232_1:
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n120_call_α
.Lx232_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 1
                        lea              r9, [rsp + 416]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n120_call_α
.Lx232_2:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n88_op14_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n120_call_α
n111_binop_β:
                                                                                        jmp   n88_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n71_lit_integer_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n121_assign_α
.Lx234_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 752], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n122_match_replace_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_op77_α:
                        lea              rdi, [rsp + 1056]
                        lea              rsi, [rsp + 1040]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n75_lit_integer_α
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_op75_α:
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 7
                                                                                        je    .Lx239_1
                        cmp              eax, 6
                                                                                        jne   .Lx239_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx239_0
.Lx239_1:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n124_op75_α
.Lx239_0:
                        lea              rdi, [rsp + 1392]
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1360]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n124_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n118_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_var_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n126_binop_α
.Lx242_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx244_5
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx244_6]
                        lea              rdx, [rip + .Lx244_7]
                                                                                        jmp   rax
.Lx244_6:
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
                                                                                        jmp   .Lx244_2
.Lx244_7:
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
                                                                                        jmp   .Lx244_2
.Lx244_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx244_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx244_21
.Lx244_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx244_21:
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx244_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx244_3]
                        lea              rdx, [rip + .Lx244_4]
                                                                                        jmp   rax
.Lx244_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx244_2
.Lx244_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx244_2
.Lx244_1:
                        call             rt_faildescr@PLT
.Lx244_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n88_op14_α
                                                                                        jmp   n127_binop_α
n120_call_β:
                                                                                        jmp   n88_op14_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx247_0]
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              ecx, dword ptr [rsp + 688]
                        mov              r8, qword ptr [rsp + 712]
                        lea              r9, [rsp + 752]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx247_1
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "DATA"
.Lx247_1:
                        mov              rbp, qword ptr [rsp + 728]
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_op75_α:
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx250_1
                        cmp              eax, 6
                                                                                        jne   .Lx250_0
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 6
                                                                                        jne   .Lx250_0
.Lx250_1:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n130_op77_α
.Lx250_0:
                        lea              rdi, [rsp + 1376]
                        lea              rsi, [rsp + 1392]
                        lea              rdx, [rsp + 1344]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n130_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 100
                                                                                        je    .Lx253_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 100
                                                                                        je    .Lx253_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx253_2
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx253_2
.Lx253_1:
                        mov              rax, qword ptr [rsp + 360]
                        mov              rcx, qword ptr [rsp + 376]
                        add              rax, rcx
                        mov              qword ptr [rsp + 336], 6
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n134_assign_α
.Lx253_0:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 0
                        lea              r9, [rsp + 336]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n134_assign_α
.Lx253_2:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n88_op14_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n134_assign_α
n127_binop_β:
                                                                                        jmp   n88_op14_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rsp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n137_binop_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_op77_α:
                        lea              rdi, [rsp + 1360]
                        lea              rsi, [rsp + 1344]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n108_call_α
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                                                                                        jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_var_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n88_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n88_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n141_binop_α
.Lx262_0:
                        .quad            1
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 100
                                                                                        je    .Lx264_0
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 6
                                                                                        jne   .Lx264_2
.Lx264_1:
                        mov              rax, qword ptr [rsp + 1128]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1104], 6
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n143_binop_α
.Lx264_0:
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              r8d, 0
                        lea              r9, [rsp + 1104]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n143_binop_α
.Lx264_2:
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n75_lit_integer_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                                                                                        jmp   n143_binop_α
n137_binop_β:
                                                                                        jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n132_lit_string_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx268_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx268_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx268_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx268_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n146_assign_α
.Lx268_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx268_2
                        add              rsp, 16
                                                                                        jmp   n146_assign_α
.Lx268_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx268_240
                        add              rsp, 32
                                                                                        jmp   n136_var_α
.Lx268_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n147_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n149_binop_α
.Lx271_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n72_var_α
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 100
                                                                                        je    .Lx276_0
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx276_2
.Lx276_1:
                        mov              rax, qword ptr [rsp + 1432]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1408], 6
                        mov              qword ptr [rsp + 1416], rax
                                                                                        jmp   n153_binop_α
.Lx276_0:
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8d, 0
                        lea              r9, [rsp + 1408]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n153_binop_α
.Lx276_2:
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n108_call_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                                                                                        jmp   n153_binop_α
n149_binop_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx277_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx277_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx277_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx277_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_binop_α
.Lx277_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx277_2
                        add              rsp, 16
                                                                                        jmp   n154_binop_α
.Lx277_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx277_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx277_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n155_lit_integer_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 944], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n159_binop_α
.Lx282_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx285_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 100
                                                                                        je    .Lx286_0
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx286_2
.Lx286_1:
                        mov              rax, qword ptr [rsp + 936]
                        mov              rcx, 0
                        add              rax, rcx
                        mov              qword ptr [rsp + 912], 6
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n161_assign_var_α
.Lx286_0:
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        lea              r9, [rsp + 912]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n161_assign_var_α
.Lx286_2:
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n72_var_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n161_assign_var_α
n159_binop_β:
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n162_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_var_α:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n72_var_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_subscript_α:
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n74_var_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                                                                                        jmp   n163_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_deref_α:
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n74_var_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n164_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 100
                                                                                        je    .Lx291_0
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 100
                                                                                        je    .Lx291_0
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx291_2
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 6
                                                                                        jne   .Lx291_2
.Lx291_1:
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rax, rcx
                        mov              qword ptr [rsp + 1152], 6
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n165_assign_α
.Lx291_0:
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              r8d, 0
                        lea              r9, [rsp + 1152]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n165_assign_α
.Lx291_2:
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n74_var_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                                                                                        jmp   n165_assign_α
n164_binop_β:
                                                                                        jmp   n74_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n74_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1616]
                        add              rsp, 1624
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1616]
                        add              rsp, 1624
                        ret
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PAT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
