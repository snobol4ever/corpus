                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_range_α
proc_range_α:
proc_range_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 144
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n2_to_α
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lx13_0:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jle   .Lx13_240
                        add              rsp, 144
                                                                                        jmp   proc_range_ω
.Lx13_240:
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n3_assign_α
n2_to_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx13_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n6_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 144
                                                                                        jmp   proc_range_γ
n6_suspend_β:
                                                                                        jmp   n7_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n7_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_range_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_range_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_range_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_range_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_divisors_α
proc_divisors_α:
proc_divisors_α_body:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        sub              rsp, 256
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
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n24_var_α
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n25_to_α
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx43_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   .Lx43_240
                        add              rsp, 256
                                                                                        jmp   proc_divisors_ω
.Lx43_240:
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n26_assign_α
n25_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx43_0
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n27_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n27_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n29_var_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx48_0
                                                                                        jmp   n38_unmark_α
.Lx48_0:
                                                                                        jmp   n38_unmark_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n38_unmark_α
n28_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n30_var_α
n29_var_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx54_1
                        cmp              eax, 3
                                                                                        jne   .Lx54_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx54_0
.Lx54_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n32_coerce_numeric_α
.Lx54_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 336]                               # other
                        lea              rdx, [rbp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx56_1
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
.Lx56_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n33_binop_α
.Lx56_0:
                        lea              rdi, [rbp + 336]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 240]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n33_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n35_binop_test_α
.Lx58_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_test_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 112
                                                                                        je    .Lx59_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 112
                                                                                        je    .Lx59_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx59_2
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx59_2
.Lx59_1:
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jne   n28_disjunction_af
                        mov              rcx, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rcx
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rcx
                                                                                        jmp   n36_var_α
.Lx59_0:
                        mov              rdi, qword ptr [rbp + 224]                     # a
                        mov              rsi, qword ptr [rbp + 232]                     # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 208]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx59_1
                        cmp              eax, 1
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n36_var_α
.Lx59_2:
                        mov              rdi, qword ptr [rbp + 224]                     # lhs
                        mov              rsi, qword ptr [rbp + 232]                     # lhs
                        mov              rdx, qword ptr [rbp + 304]                     # rhs
                        mov              rcx, qword ptr [rbp + 312]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n28_disjunction_af
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n37_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n37_suspend_α:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_divisors_γ
n37_suspend_β:
                                                                                        jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n38_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_divisors_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_divisors_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_divisors_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_divisors_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fibs_α
proc_fibs_α:
proc_fibs_α_body:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 256
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
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n67_assign_α
.Lx86_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n69_assign_α
.Lx88_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n72_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_test_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 112
                                                                                        je    .Lx94_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx94_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx94_2
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx94_2
.Lx94_1:
                        mov              rax, qword ptr [rbp + 312]
                        mov              rcx, qword ptr [rbp + 24]
                        cmp              rax, rcx
                                                                                        jle   .Lx94_238
                        add              rsp, 256
                                                                                        jmp   proc_fibs_ω
.Lx94_238:
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rcx
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rcx
                                                                                        jmp   n73_var_α
.Lx94_0:
                        mov              rdi, qword ptr [rbp + 304]                     # a
                        mov              rsi, qword ptr [rbp + 312]                     # a
                        mov              rdx, qword ptr [rbp + 16]                      # b
                        mov              rcx, qword ptr [rbp + 24]                      # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 32]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx94_1
                        cmp              eax, 1
                                                                                        jne   .Lx94_239
                        add              rsp, 256
                                                                                        jmp   proc_fibs_ω
.Lx94_239:
                                                                                        jmp   n73_var_α
.Lx94_2:
                        mov              rdi, qword ptr [rbp + 304]                     # lhs
                        mov              rsi, qword ptr [rbp + 312]                     # lhs
                        mov              rdx, qword ptr [rbp + 16]                      # rhs
                        mov              rcx, qword ptr [rbp + 24]                      # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx94_240
                        add              rsp, 256
                                                                                        jmp   proc_fibs_ω
.Lx94_240:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n74_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n74_suspend_α:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 256
                                                                                        jmp   proc_fibs_γ
n74_suspend_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n77_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 5
                                                                                        je    .Lx104_1
                        cmp              eax, 3
                                                                                        jne   .Lx104_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx104_0
.Lx104_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n78_coerce_numeric_α
.Lx104_0:
                        lea              rdi, [rbp + 304]                               # self
                        lea              rsi, [rbp + 320]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx106_1
                        cmp              eax, 3
                                                                                        jne   .Lx106_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx106_0
.Lx106_1:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n79_binop_α
.Lx106_0:
                        lea              rdi, [rbp + 320]                               # self
                        lea              rsi, [rbp + 304]                               # other
                        lea              rdx, [rbp + 176]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n79_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx107_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 184]
                        add              rax, rcx
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n80_assign_α
.Lx107_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n81_var_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n85_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n85_conjunction_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n70_var_α
n85_conjunction_β:
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_fibs_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fibs_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_fibs_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fibs_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_perfect_α
proc_perfect_α:
proc_perfect_α_body:
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        sub              rsp, 528
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
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n117_var_α
.Lx144_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n118_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n118_proc_gen_α:
                        mov              qword ptr [rbp + 96], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx148_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx148_21
.Lx148_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx148_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx148_22
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx148_23
.Lx148_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx148_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx148_1
                        lea              rcx, [rip + .Lx148_3]
                        lea              rdx, [rip + .Lx148_4]
                                                                                        jmp   rax
.Lx148_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx148_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx148_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_1:
                        call             rt_faildescr@PLT
.Lx148_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx148_240
                        add              rsp, 528
                                                                                        jmp   proc_perfect_ω
.Lx148_240:
                                                                                        jmp   n119_assign_α
n118_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n120_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n120_bound_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n122_assign_α
.Lx152_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n125_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n125_proc_gen_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx159_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx159_21
.Lx159_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 528]                     # v
                        mov              rdx, qword ptr [rbp + 536]                     # v
                        call             rt_arg_stage@PLT
.Lx159_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx159_1
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4]
                                                                                        jmp   rax
.Lx159_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx159_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx159_2
.Lx159_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx159_2
.Lx159_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx159_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx159_2
.Lx159_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx159_2
.Lx159_1:
                        call             rt_faildescr@PLT
.Lx159_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx159_240
                        add              rsp, 528
                                                                                        jmp   n130_var_α
.Lx159_240:
                                                                                        jmp   n126_coerce_numeric_α
n125_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "divisors"
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx161_1
                        cmp              eax, 3
                                                                                        jne   .Lx161_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx161_0
.Lx161_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n127_coerce_numeric_α
.Lx161_0:
                        lea              rdi, [rbp + 592]                               # self
                        lea              rsi, [rbp + 464]                               # other
                        lea              rdx, [rbp + 432]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n127_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx163_1
                        cmp              eax, 3
                                                                                        jne   .Lx163_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx163_0
.Lx163_1:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n128_binop_α
.Lx163_0:
                        lea              rdi, [rbp + 464]                               # self
                        lea              rsi, [rbp + 592]                               # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n128_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx164_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx164_0
                        mov              rax, qword ptr [rbp + 440]
                        mov              rcx, qword ptr [rbp + 424]
                        add              rax, rcx
                        mov              qword ptr [rbp + 400], 3
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n129_assign_α
.Lx164_0:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx164_240
                        add              rsp, 528
                                                                                        jmp   n130_var_α
.Lx164_240:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n125_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n132_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n132_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx171_1
                        cmp              eax, 3
                                                                                        jne   .Lx171_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx171_0
.Lx171_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n133_coerce_numeric_α
.Lx171_0:
                        lea              rdi, [rbp + 592]                               # self
                        lea              rsi, [rbp + 576]                               # other
                        lea              rdx, [rbp + 352]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n133_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n133_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx173_1
                        cmp              eax, 3
                                                                                        jne   .Lx173_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx173_0
.Lx173_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n134_binop_α
.Lx173_0:
                        lea              rdi, [rbp + 576]                               # self
                        lea              rsi, [rbp + 592]                               # other
                        lea              rdx, [rbp + 336]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 3
                                                                                        jne   .Lx174_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx174_0
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, qword ptr [rbp + 344]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 320], 3
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n135_assign_α
.Lx174_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n136_disjunction_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n135_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n136_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n138_var_α
n136_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx177_0
                                                                                        jmp   n137_conjunction_α
.Lx177_0:
                                                                                        jmp   n137_conjunction_α
n136_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n143_unmark_α
n136_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n143_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n137_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n143_unmark_α
n137_conjunction_β:
                                                                                        jmp   n143_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n139_var_α
n138_var_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n140_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_test_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 112
                                                                                        je    .Lx183_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 112
                                                                                        je    .Lx183_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx183_2
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx183_2
.Lx183_1:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 584]
                        cmp              rax, rcx
                                                                                        jne   n136_disjunction_af
                        mov              rcx, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n141_var_α
.Lx183_0:
                        mov              rdi, qword ptr [rbp + 592]                     # a
                        mov              rsi, qword ptr [rbp + 600]                     # a
                        mov              rdx, qword ptr [rbp + 576]                     # b
                        mov              rcx, qword ptr [rbp + 584]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 272]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx183_1
                        cmp              eax, 1
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n141_var_α
.Lx183_2:
                        mov              rdi, qword ptr [rbp + 592]                     # lhs
                        mov              rsi, qword ptr [rbp + 600]                     # lhs
                        mov              rdx, qword ptr [rbp + 576]                     # rhs
                        mov              rcx, qword ptr [rbp + 584]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n136_disjunction_af
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n142_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n142_suspend_α:
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_perfect_γ
n142_suspend_β:
                                                                                        jmp   n136_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n143_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n118_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "range"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_range_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "divisors"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_divisors_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fibs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fibs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "perfect"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_perfect_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        sub              rsp, 1232
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
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 12
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n191_call_builtin_icon_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "Fibs to 100:"
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn254:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]                         # fn
                        lea              rsi, [rbp + 1328]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n192_lit_string_α
                                                                                        jmp   n192_lit_string_α
n191_call_builtin_icon_β:
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 0
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n193_assign_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n196_lit_integer_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n197_proc_gen_α
.Lx260_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n197_proc_gen_α:
                        mov              qword ptr [rbp + 1248], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1280]                    # v
                        mov              rdx, qword ptr [rbp + 1288]                    # v
                        call             rt_arg_stage@PLT
.Lx262_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        mov              qword ptr [rbp + 1256], rsp
                        mov              rax, qword ptr [rbp + 1248]
                        test             rax, rax
                                                                                        jne   .Lx262_5
                        mov              qword ptr [rbp + 1248], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        mov              rax, qword ptr [rbp + 1248]
                        test             rax, rax
                                                                                        jne   .Lx262_6
                        mov              qword ptr [rbp + 1248], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx262_240
                        add              rsp, 1232
                                                                                        jmp   n201_lit_string_α
.Lx262_240:
                                                                                        jmp   n198_binop_α
n197_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1256]
                                                                                        jmp   qword ptr [rsp]
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "fibs"
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # a
                        mov              rsi, qword ptr [rbp + 1208]                    # a
                        mov              rdx, qword ptr [rbp + 1216]                    # b
                        mov              rcx, qword ptr [rbp + 1224]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n199_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:
                        mov              rdi, qword ptr [rbp + 1376]                    # a
                        mov              rsi, qword ptr [rbp + 1384]                    # a
                        mov              rdx, qword ptr [rbp + 1184]                    # b
                        mov              rcx, qword ptr [rbp + 1192]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n200_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n197_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n202_var_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n204_lit_integer_α
.Lx269_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n205_subscript_α
.Lx270_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n205_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # arr
                        mov              rsi, qword ptr [rbp + 1112]                    # arr
                        mov              rdx, qword ptr [rbp + 1120]                    # i
                        mov              rcx, qword ptr [rbp + 1128]                    # i
                        mov              r8, qword ptr [rbp + 1136]                     # j
                        mov              r9, qword ptr [rbp + 1144]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n208_lit_string_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n206_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # a
                        mov              rsi, qword ptr [rbp + 1080]                    # a
                        mov              rdx, qword ptr [rbp + 1088]                    # b
                        mov              rcx, qword ptr [rbp + 1096]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n207_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn274:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]                         # fn
                        lea              rsi, [rbp + 1024]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n208_lit_string_α
                                                                                        jmp   n208_lit_string_α
n207_call_builtin_icon_β:
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 25
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n209_call_builtin_icon_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "Perfect numbers to 10000:"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn277:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 960]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n210_lit_string_α
                                                                                        jmp   n210_lit_string_α
n209_call_builtin_icon_β:
                                                                                        jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 2
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n211_lit_integer_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rbp + 928], 3                       # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n212_proc_gen_α
.Lx279_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n212_proc_gen_α:
                        mov              qword ptr [rbp + 896], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx281_20
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx281_21
.Lx281_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 928]                     # v
                        mov              rdx, qword ptr [rbp + 936]                     # v
                        call             rt_arg_stage@PLT
.Lx281_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx281_1
                        lea              rcx, [rip + .Lx281_3]
                        lea              rdx, [rip + .Lx281_4]
                                                                                        jmp   rax
.Lx281_3:
                        mov              qword ptr [rbp + 904], rsp
                        mov              rax, qword ptr [rbp + 896]
                        test             rax, rax
                                                                                        jne   .Lx281_5
                        mov              qword ptr [rbp + 896], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx281_2
.Lx281_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx281_2
.Lx281_4:
                        mov              rax, qword ptr [rbp + 896]
                        test             rax, rax
                                                                                        jne   .Lx281_6
                        mov              qword ptr [rbp + 896], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx281_2
.Lx281_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx281_2
.Lx281_1:
                        call             rt_faildescr@PLT
.Lx281_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n215_lit_string_α
                                                                                        jmp   n213_binop_α
n212_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 904]
                                                                                        jmp   qword ptr [rsp]
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "perfect"
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:
                        mov              rdi, qword ptr [rbp + 848]                     # a
                        mov              rsi, qword ptr [rbp + 856]                     # a
                        mov              rdx, qword ptr [rbp + 864]                     # b
                        mov              rcx, qword ptr [rbp + 872]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n214_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn284:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]                         # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n212_proc_gen_β
                                                                                        jmp   n212_proc_gen_β
n214_call_builtin_icon_β:
                                                                                        jmp   n212_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 44
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n216_call_builtin_icon_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "Primes to 50 (trial division by generators):"
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn287:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]                         # fn
                        lea              rsi, [rbp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n217_lit_string_α
n216_call_builtin_icon_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 0
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n218_assign_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n221_lit_integer_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n222_lit_integer_α
.Lx293_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:
                        mov              qword ptr [rbp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n223_proc_gen_α
.Lx294_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n223_proc_gen_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx296_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx296_21
.Lx296_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx296_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx296_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx296_23
.Lx296_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 688]                     # v
                        mov              rdx, qword ptr [rbp + 696]                     # v
                        call             rt_arg_stage@PLT
.Lx296_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx296_1
                        lea              rcx, [rip + .Lx296_3]
                        lea              rdx, [rip + .Lx296_4]
                                                                                        jmp   rax
.Lx296_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx296_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx296_2
.Lx296_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx296_2
.Lx296_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx296_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx296_2
.Lx296_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx296_2
.Lx296_1:
                        call             rt_faildescr@PLT
.Lx296_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n225_lit_integer_α
                                                                                        jmp   n224_assign_α
n223_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n225_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n226_var_α
.Lx298_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n228_var_α
.Lx301_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n229_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_real_α:
                        mov              qword ptr [rbp + 576], 5                       # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n230_coerce_numeric_α
.Lx304_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n230_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 5
                                                                                        je    .Lx306_1
                        cmp              eax, 3
                                                                                        jne   .Lx306_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx306_0
.Lx306_1:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n231_binop_α
.Lx306_0:
                        lea              rdi, [rbp + 1392]                              # self
                        lea              rsi, [rbp + 576]                               # other
                        lea              rdx, [rbp + 544]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n231_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n238_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n232_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn309:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]                         # fn
                        lea              rsi, [rbp + 496]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n238_var_α
                                                                                        jmp   n233_proc_gen_α
n232_call_builtin_icon_β:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_proc_gen_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx311_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx311_21
.Lx311_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx311_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx311_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx311_23
.Lx311_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx311_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx311_1
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4]
                                                                                        jmp   rax
.Lx311_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx311_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx311_2
.Lx311_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx311_2
.Lx311_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx311_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx311_2
.Lx311_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx311_2
.Lx311_1:
                        call             rt_faildescr@PLT
.Lx311_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n238_var_α
                                                                                        jmp   n234_coerce_numeric_α
n233_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n234_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 5
                                                                                        je    .Lx313_1
                        cmp              eax, 3
                                                                                        jne   .Lx313_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx313_0
.Lx313_1:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n235_coerce_numeric_α
.Lx313_0:
                        lea              rdi, [rbp + 1392]                              # self
                        lea              rsi, [rbp + 384]                               # other
                        lea              rdx, [rbp + 352]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n235_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n235_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 5
                                                                                        je    .Lx315_1
                        cmp              eax, 3
                                                                                        jne   .Lx315_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 3
                                                                                        jne   .Lx315_0
.Lx315_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n236_binop_α
.Lx315_0:
                        lea              rdi, [rbp + 384]                               # self
                        lea              rsi, [rbp + 1392]                              # other
                        lea              rdx, [rbp + 336]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n236_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n238_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n237_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_test_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 112
                                                                                        je    .Lx317_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 112
                                                                                        je    .Lx317_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx317_2
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx317_2
.Lx317_1:
                        mov              rax, qword ptr [rbp + 312]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jne   n233_proc_gen_β
                        mov              rcx, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rcx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rcx
                                                                                        jmp   n245_lit_string_α
.Lx317_0:
                        mov              rdi, qword ptr [rbp + 304]                     # a
                        mov              rsi, qword ptr [rbp + 312]                     # a
                        mov              rdx, qword ptr [rbp + 320]                     # b
                        mov              rcx, qword ptr [rbp + 328]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 288]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx317_1
                        cmp              eax, 1
                                                                                        je    n233_proc_gen_β
                                                                                        jmp   n245_lit_string_α
.Lx317_2:
                        mov              rdi, qword ptr [rbp + 304]                     # lhs
                        mov              rsi, qword ptr [rbp + 312]                     # lhs
                        mov              rdx, qword ptr [rbp + 320]                     # rhs
                        mov              rcx, qword ptr [rbp + 328]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n233_proc_gen_β
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                                                                                        jmp   n239_var_α
n238_var_β:
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n240_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n240_conjunction_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n241_conjunction_α
n240_conjunction_β:
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_conjunction_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n242_binop_α
n241_conjunction_β:
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:
                        mov              rdi, qword ptr [rbp + 208]                     # a
                        mov              rsi, qword ptr [rbp + 216]                     # a
                        mov              rdx, qword ptr [rbp + 240]                     # b
                        mov              rcx, qword ptr [rbp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n243_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:
                        mov              rdi, qword ptr [rbp + 1376]                    # a
                        mov              rsi, qword ptr [rbp + 1384]                    # a
                        mov              rdx, qword ptr [rbp + 192]                     # b
                        mov              rcx, qword ptr [rbp + 200]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n246_var_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n247_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n248_lit_integer_α
.Lx329_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n249_subscript_α
.Lx330_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n249_subscript_α:
                        mov              rdi, qword ptr [rbp + 96]                      # arr
                        mov              rsi, qword ptr [rbp + 104]                     # arr
                        mov              rdx, qword ptr [rbp + 112]                     # i
                        mov              rcx, qword ptr [rbp + 120]                     # i
                        mov              r8, qword ptr [rbp + 128]                      # j
                        mov              r9, qword ptr [rbp + 136]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n250_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 80]                      # b
                        mov              rcx, qword ptr [rbp + 88]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn334:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n251_call_builtin_icon_β:
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
                        .section         .note.GNU-stack,"",@progbits
