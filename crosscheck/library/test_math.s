                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_α:
proc_LBL__max_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx13_1
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
.Lx13_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n3_coerce_numeric_α
.Lx13_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx15_1
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
.Lx15_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_cmp_test_α
.Lx15_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n4_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx17_240
                        add              rsp, 16
                                                                                        jmp   n9_save_restore_α
.Lx17_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n8_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_α:
                                                                                        jmp   n9_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_β:
                                                                                        jmp   proc_LBL__max_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_α:
proc_LBL__min_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx38_1
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
.Lx38_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n28_coerce_numeric_α
.Lx38_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx40_1
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
.Lx40_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n29_cmp_test_α
.Lx40_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n29_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx42_240
                        add              rsp, 16
                                                                                        jmp   n34_save_restore_α
.Lx42_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n33_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_α:
                                                                                        jmp   n34_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n34_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_β:
                                                                                        jmp   proc_LBL__min_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_α:
proc_LBL__abs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_coerce_numeric_α
.Lx62_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx64_1
                        cmp              eax, 3
                                                                                        jne   .Lx64_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n53_coerce_numeric_α
.Lx64_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx66_1
                        cmp              eax, 3
                                                                                        jne   .Lx66_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx66_0
.Lx66_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n54_cmp_test_α
.Lx66_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n54_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx68_240
                        add              rsp, 16
                                                                                        jmp   n60_save_restore_α
.Lx68_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n59_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_α:
                                                                                        jmp   n60_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n60_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_β:
                                                                                        jmp   proc_LBL__abs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_α:
proc_LBL__sign_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_coerce_numeric_α
.Lx98_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx100_1
                        cmp              eax, 3
                                                                                        jne   .Lx100_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx100_0
.Lx100_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n80_coerce_numeric_α
.Lx100_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n80_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx102_1
                        cmp              eax, 3
                                                                                        jne   .Lx102_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx102_0
.Lx102_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n81_cmp_test_α
.Lx102_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n81_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n81_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx104_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n87_var_α
.Lx104_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_unop_α
.Lx105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n86_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_α:
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n89_coerce_numeric_α
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx114_1
                        cmp              eax, 3
                                                                                        jne   .Lx114_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx114_0
.Lx114_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n90_coerce_numeric_α
.Lx114_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n90_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx116_1
                        cmp              eax, 3
                                                                                        jne   .Lx116_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx116_0
.Lx116_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n91_cmp_test_α
.Lx116_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n91_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n96_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n93_binop_α
.Lx119_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n95_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_α:
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n96_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_β:
                                                                                        jmp   proc_LBL__sign_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_α:
proc_LBL__gcd_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n128_call_α
.Lx143_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:
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
.Lrkfnzd145:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd145]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx144_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n141_save_restore_α
.Lx144_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_statement_α
n128_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n141_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_α:
                                                                                        jmp   n130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_call_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
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
.Lrkfnzd151:            .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd151]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                        add              rsp, 16
                                                                                        jmp   n135_var_α
.Lx150_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_assign_α
n132_call_β:
                        add              rsp, 16
                                                                                        jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n134_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_α:
                                                                                        jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n137_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_α:
                                                                                        jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n140_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_α:
                        add              rsp, 128
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_β:
                                                                                        jmp   proc_LBL__gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_α:
proc_LBL__lcm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n167_call_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # var
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx181_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx181_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx181_6]
                        lea              rdx, [rip + .Lx181_7]
                                                                                        jmp   rax
.Lx181_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx181_2
.Lx181_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx181_2
.Lx181_5:
                        add              rsp, 48
.Lx181_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx181_240
                        add              rsp, 16
                                                                                        jmp   n170_var_α
.Lx181_240:
                                                                                        jmp   n168_assign_α
n167_call_β:
                                                                                        jmp   n170_var_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n169_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_α:
                                                                                        jmp   n170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_var_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n172_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx187_240
                        add              rsp, 16
                                                                                        jmp   n177_save_restore_α
.Lx187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n174_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx189_240
                        add              rsp, 16
                                                                                        jmp   n177_save_restore_α
.Lx189_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n176_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_α:
                                                                                        jmp   n177_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n177_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_β:
                                                                                        jmp   proc_LBL__lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_max_α
proc_max_α:
proc_max_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n195_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n196_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n196_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx200_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx200_1
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "max"
.Lx200_1:
                                                                                        jmp   proc_max_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_max_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_max_β:
                                                                                        jmp   proc_max_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_max_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_max_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_min_α
proc_min_α:
proc_min_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n201_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n202_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx206_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx206_1
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "min"
.Lx206_1:
                                                                                        jmp   proc_min_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_min_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_min_β:
                                                                                        jmp   proc_min_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_min_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_min_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_abs_α
proc_abs_α:
proc_abs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n207_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n208_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n208_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx212_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx212_1
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "abs"
.Lx212_1:
                                                                                        jmp   proc_abs_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_β:
                                                                                        jmp   proc_abs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sign_α
proc_sign_α:
proc_sign_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n213_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n214_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n214_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx218_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx218_1
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "sign"
.Lx218_1:
                                                                                        jmp   proc_sign_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_β:
                                                                                        jmp   proc_sign_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gcd_α
proc_gcd_α:
proc_gcd_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n219_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n220_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n220_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx224_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx224_1
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "gcd"
.Lx224_1:
                                                                                        jmp   proc_gcd_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_β:
                                                                                        jmp   proc_gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lcm_α
proc_lcm_α:
proc_lcm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n225_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n226_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n226_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx230_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx230_1
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "lcm"
.Lx230_1:
                                                                                        jmp   proc_lcm_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_β:
                                                                                        jmp   proc_lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__max"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__max_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__min"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__min_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__abs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__sign"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__sign_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__gcd"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__gcd_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__lcm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__lcm_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "max"
.Lstartup_pp6_0:        .string          "max"
.Lstartup_pp6_1:        .string          "x"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            .Lstartup_pp6_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_max_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "min"
.Lstartup_pp7_0:        .string          "min"
.Lstartup_pp7_1:        .string          "x"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            .Lstartup_pp7_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_min_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "abs"
.Lstartup_pp8_0:        .string          "abs"
                        .align           8
.Lstartup_pnames8:
                        .quad            .Lstartup_pp8_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + .Lstartup_pnames8]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_abs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "sign"
.Lstartup_pp9_0:        .string          "sign"
                        .align           8
.Lstartup_pnames9:
                        .quad            .Lstartup_pp9_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + .Lstartup_pnames9]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_sign_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gcd"
.Lstartup_pp10_0:       .string          "gcd"
.Lstartup_pp10_1:       .string          "b"
.Lstartup_pp10_2:       .string          "r"
                        .align           8
.Lstartup_pnames10:
                        .quad            .Lstartup_pp10_0
                        .quad            .Lstartup_pp10_1
                        .quad            .Lstartup_pp10_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + .Lstartup_pnames10]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gcd_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "lcm"
.Lstartup_pp11_0:       .string          "a"
.Lstartup_pp11_1:       .string          "b"
.Lstartup_pp11_2:       .string          "g"
                        .align           8
.Lstartup_pnames11:
                        .quad            .Lstartup_pp11_0
                        .quad            .Lstartup_pp11_1
                        .quad            .Lstartup_pp11_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + .Lstartup_pnames11]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_lcm_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "max"
.Lgvan1:                .string          "x"
.Lgvan2:                .string          "min"
.Lgvan3:                .string          "abs"
.Lgvan4:                .string          "sign"
.Lgvan5:                .string          "gcd"
.Lgvan6:                .string          "b"
.Lgvan7:                .string          "r"
.Lgvan8:                .string          "lcm"
.Lgvan9:                .string          "a"
.Lgvan10:               .string          "g"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 11
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 11
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_α:
                                                                                        jmp   n232_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_α:
                                                                                        jmp   n233_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_α:
                                                                                        jmp   n234_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_α:
                                                                                        jmp   n235_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_α:
                                                                                        jmp   n236_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_α:
                                                                                        jmp   n237_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_α:
                                                                                        jmp   n238_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_α:
                                                                                        jmp   n239_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_α:
                                                                                        jmp   n240_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_α:
                                                                                        jmp   n241_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_α:
                                                                                        jmp   n242_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_α:
                                                                                        jmp   n243_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_α:
                                                                                        jmp   n244_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_α:
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n246_lit_integer_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n247_call_α
.Lx419_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:
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
.Lrkfnzd421:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd421]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx420_240
                        add              rsp, 16
                                                                                        jmp   n249_statement_α
.Lx420_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_statement_α
n247_call_β:
                        add              rsp, 16
                                                                                        jmp   n249_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_α:
                                                                                        jmp   n249_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_α:
                                                                                        jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_lit_integer_α
.Lx426_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n252_call_α
.Lx427_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx429_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx429_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx429_6]
                        lea              rdx, [rip + .Lx429_7]
                                                                                        jmp   rax
.Lx429_6:
                        mov              rdi, qword ptr [1879052288]                    # max
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx429_2
.Lx429_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx429_2
.Lx429_5:
                        add              rsp, 32
.Lx429_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx429_240
                        add              rsp, 16
                                                                                        jmp   n255_lit_integer_α
.Lx429_240:
                                                                                        jmp   n253_assign_α
n252_call_β:
                                                                                        jmp   n255_lit_integer_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx430_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n254_statement_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_α:
                                                                                        jmp   n255_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n256_lit_integer_α
.Lx433_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n257_call_α
.Lx434_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx436_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx436_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx436_6]
                        lea              rdx, [rip + .Lx436_7]
                                                                                        jmp   rax
.Lx436_6:
                        mov              rdi, qword ptr [1879052320]                    # min
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx436_2
.Lx436_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx436_2
.Lx436_5:
                        add              rsp, 32
.Lx436_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx436_240
                        add              rsp, 16
                                                                                        jmp   n260_lit_real_α
.Lx436_240:
                                                                                        jmp   n258_assign_α
n257_call_β:
                                                                                        jmp   n260_lit_real_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx437_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n259_statement_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_α:
                                                                                        jmp   n260_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_lit_real_α
.Lx440_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n262_call_α
.Lx441_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_real
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx443_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx443_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx443_6]
                        lea              rdx, [rip + .Lx443_7]
                                                                                        jmp   rax
.Lx443_6:
                        mov              rdi, qword ptr [1879052288]                    # max
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx443_2
.Lx443_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx443_2
.Lx443_5:
                        add              rsp, 32
.Lx443_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx443_240
                        add              rsp, 16
                                                                                        jmp   n265_lit_real_α
.Lx443_240:
                                                                                        jmp   n263_assign_α
n262_call_β:
                                                                                        jmp   n265_lit_real_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx444_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n264_statement_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_α:
                                                                                        jmp   n265_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n266_lit_real_α
.Lx447_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n267_call_α
.Lx448_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_real
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx450_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx450_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx450_6]
                        lea              rdx, [rip + .Lx450_7]
                                                                                        jmp   rax
.Lx450_6:
                        mov              rdi, qword ptr [1879052320]                    # min
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_5:
                        add              rsp, 32
.Lx450_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx450_240
                        add              rsp, 16
                                                                                        jmp   n270_lit_integer_α
.Lx450_240:
                                                                                        jmp   n268_assign_α
n267_call_β:
                                                                                        jmp   n270_lit_integer_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx451_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n269_statement_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_α:
                                                                                        jmp   n270_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n271_unop_α
.Lx454_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n271_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n272_call_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # unop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx457_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx457_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx457_6]
                        lea              rdx, [rip + .Lx457_7]
                                                                                        jmp   rax
.Lx457_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx457_2
.Lx457_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx457_2
.Lx457_5:
                        add              rsp, 16
.Lx457_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx457_240
                        add              rsp, 16
                                                                                        jmp   n275_lit_integer_α
.Lx457_240:
                                                                                        jmp   n273_assign_α
n272_call_β:
                                                                                        jmp   n275_lit_integer_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "abs"
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx458_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n274_statement_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_α:
                                                                                        jmp   n275_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n276_call_α
.Lx461_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx463_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx463_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx463_6]
                        lea              rdx, [rip + .Lx463_7]
                                                                                        jmp   rax
.Lx463_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx463_2
.Lx463_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx463_2
.Lx463_5:
                        add              rsp, 16
.Lx463_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx463_240
                        add              rsp, 16
                                                                                        jmp   n279_lit_integer_α
.Lx463_240:
                                                                                        jmp   n277_assign_α
n276_call_β:
                                                                                        jmp   n279_lit_integer_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx464_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n278_statement_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_α:
                                                                                        jmp   n279_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n280_call_α
.Lx467_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n280_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx469_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx469_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx469_6]
                        lea              rdx, [rip + .Lx469_7]
                                                                                        jmp   rax
.Lx469_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx469_2
.Lx469_5:
                        add              rsp, 16
.Lx469_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx469_240
                        add              rsp, 16
                                                                                        jmp   n283_lit_integer_α
.Lx469_240:
                                                                                        jmp   n281_assign_α
n280_call_β:
                                                                                        jmp   n283_lit_integer_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx470_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n282_statement_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_α:
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n284_unop_α
.Lx473_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n284_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n285_call_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # unop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx476_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx476_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx476_6]
                        lea              rdx, [rip + .Lx476_7]
                                                                                        jmp   rax
.Lx476_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx476_2
.Lx476_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx476_2
.Lx476_5:
                        add              rsp, 16
.Lx476_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx476_240
                        add              rsp, 16
                                                                                        jmp   n288_lit_integer_α
.Lx476_240:
                                                                                        jmp   n286_assign_α
n285_call_β:
                                                                                        jmp   n288_lit_integer_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx477_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n287_statement_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_α:
                                                                                        jmp   n288_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n289_lit_integer_α
.Lx480_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n290_call_α
.Lx481_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx483_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx483_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx483_6]
                        lea              rdx, [rip + .Lx483_7]
                                                                                        jmp   rax
.Lx483_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx483_2
.Lx483_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx483_2
.Lx483_5:
                        add              rsp, 48
.Lx483_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx483_240
                        add              rsp, 16
                                                                                        jmp   n293_lit_integer_α
.Lx483_240:
                                                                                        jmp   n291_assign_α
n290_call_β:
                                                                                        jmp   n293_lit_integer_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx484_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n292_statement_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_α:
                                                                                        jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n294_lit_integer_α
.Lx487_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n295_call_α
.Lx488_0:
                        .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx490_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx490_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_6]
                        lea              rdx, [rip + .Lx490_7]
                                                                                        jmp   rax
.Lx490_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx490_2
.Lx490_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx490_2
.Lx490_5:
                        add              rsp, 48
.Lx490_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx490_240
                        add              rsp, 16
                                                                                        jmp   n298_lit_integer_α
.Lx490_240:
                                                                                        jmp   n296_assign_α
n295_call_β:
                                                                                        jmp   n298_lit_integer_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx491_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n297_statement_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_α:
                                                                                        jmp   n298_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n299_lit_integer_α
.Lx494_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n300_call_α
.Lx495_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052416]                    # lcm
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx497_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx497_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052440], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx497_6]
                        lea              rdx, [rip + .Lx497_7]
                                                                                        jmp   rax
.Lx497_6:
                        mov              rdi, qword ptr [1879052416]                    # lcm
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx497_2
.Lx497_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx497_2
.Lx497_5:
                        add              rsp, 64
.Lx497_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx497_240
                        add              rsp, 16
                        add              rsp, 528
                                                                                        jmp   main_γ
.Lx497_240:
                                                                                        jmp   n301_assign_α
n300_call_β:
                                                                                        jmp   main_γ
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "lcm"
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx498_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n302_statement_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_α:
                        add              rsp, 544
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:
                                                                                        jmp   n304_var_α
n303_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n306_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n306_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 5
                                                                                        je    .Lx505_1
                        cmp              eax, 3
                                                                                        jne   .Lx505_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx505_0
.Lx505_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n307_coerce_numeric_α
.Lx505_0:
                        lea              rdi, [rsp + 112]                               # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 80]                                # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n307_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n307_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx507_1
                        cmp              eax, 3
                                                                                        jne   .Lx507_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx507_0
.Lx507_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n308_cmp_test_α
.Lx507_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n308_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n308_cmp_test_α:
                        lea              rdi, [rsp + 80]                                # a
                        lea              rsi, [rsp + 64]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n313_save_restore_α
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n310_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n310_binop_α:
                        mov              rdi, qword ptr [rsp + 48]                      # a
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n311_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n312_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n313_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:
                                                                                        jmp   n233_statement_α
n314_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n316_var_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 224], rax                     # result
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n318_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n318_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx522_1
                        cmp              eax, 3
                                                                                        jne   .Lx522_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx522_0
.Lx522_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n319_coerce_numeric_α
.Lx522_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n319_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n319_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx524_1
                        cmp              eax, 3
                                                                                        jne   .Lx524_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx524_0
.Lx524_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n320_cmp_test_α
.Lx524_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n320_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n320_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n313_save_restore_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax                     # result
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n322_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 240]                     # b
                        mov              rcx, qword ptr [rsp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n323_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n324_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:
                                                                                        jmp   n235_statement_α
n325_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:
                                                                                        jmp   n327_var_α
n326_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 336], rax                     # result
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n328_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n329_coerce_numeric_α
.Lx535_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n329_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx537_1
                        cmp              eax, 3
                                                                                        jne   .Lx537_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx537_0
.Lx537_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n330_coerce_numeric_α
.Lx537_0:
                        lea              rdi, [rsp + 336]                               # self
                        lea              rsi, [rsp + 320]                               # other
                        lea              rdx, [rsp + 304]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n330_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n330_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx539_1
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
.Lx539_1:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n331_cmp_test_α
.Lx539_0:
                        lea              rdi, [rsp + 320]                               # self
                        lea              rsi, [rsp + 336]                               # other
                        lea              rdx, [rsp + 288]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n331_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n331_cmp_test_α:
                        lea              rdi, [rsp + 304]                               # a
                        lea              rsi, [rsp + 288]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n313_save_restore_α
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                                                                                        jmp   n332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n333_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n333_unop_α:
                        mov              rdi, qword ptr [rsp + 368]                     # a
                        mov              rsi, qword ptr [rsp + 376]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n334_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n334_binop_α:
                        mov              rdi, qword ptr [rsp + 272]                     # a
                        mov              rsi, qword ptr [rsp + 280]                     # a
                        mov              rdx, qword ptr [rsp + 352]                     # b
                        mov              rcx, qword ptr [rsp + 360]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n336_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:
                                                                                        jmp   n237_statement_α
n337_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:
                                                                                        jmp   n339_var_α
n338_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 464], rax                     # result
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:
                        mov              qword ptr [rsp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n341_coerce_numeric_α
.Lx551_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n341_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx553_1
                        cmp              eax, 3
                                                                                        jne   .Lx553_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx553_0
.Lx553_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n342_coerce_numeric_α
.Lx553_0:
                        lea              rdi, [rsp + 464]                               # self
                        lea              rsi, [rsp + 448]                               # other
                        lea              rdx, [rsp + 432]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n342_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n342_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx555_1
                        cmp              eax, 3
                                                                                        jne   .Lx555_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx555_0
.Lx555_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n343_cmp_test_α
.Lx555_0:
                        lea              rdi, [rsp + 448]                               # self
                        lea              rsi, [rsp + 464]                               # other
                        lea              rdx, [rsp + 416]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n343_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n343_cmp_test_α:
                        lea              rdi, [rsp + 432]                               # a
                        lea              rsi, [rsp + 416]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n349_var_α
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                                                                                        jmp   n344_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n345_unop_α
.Lx558_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n345_unop_α:
                        mov              rdi, qword ptr [rsp + 496]                     # a
                        mov              rsi, qword ptr [rsp + 504]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n346_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:
                        mov              rdi, qword ptr [rsp + 400]                     # a
                        mov              rsi, qword ptr [rsp + 408]                     # a
                        mov              rdx, qword ptr [rsp + 480]                     # b
                        mov              rcx, qword ptr [rsp + 488]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n347_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n348_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n351_coerce_numeric_α
.Lx565_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n351_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx567_1
                        cmp              eax, 3
                                                                                        jne   .Lx567_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx567_0
.Lx567_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n352_coerce_numeric_α
.Lx567_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n352_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n352_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx569_1
                        cmp              eax, 3
                                                                                        jne   .Lx569_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx569_0
.Lx569_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n353_cmp_test_α
.Lx569_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n353_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n353_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n313_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n354_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n355_binop_α
.Lx572_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n355_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n356_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n357_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n358_goto_α:
                                                                                        jmp   n239_statement_α
n358_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n359_goto_α:
                                                                                        jmp   n360_var_α
n359_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n361_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:
                        mov              qword ptr [rsp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n362_call_α
.Lx580_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn582:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]                         # fn
                        lea              rsi, [rsp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n313_save_restore_α
                                                                                        jmp   n363_statement_α
n362_call_β:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_α:
                                                                                        jmp   n364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 800], rax                     # result
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n366_call_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn588:              .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn588]                         # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n369_var_α
                                                                                        jmp   n367_assign_α
n366_call_β:
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n368_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_α:
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n370_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n371_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_α:
                                                                                        jmp   n372_var_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 832], rax                     # result
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n373_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n374_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_α:
                                                                                        jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_goto_α:
                                                                                        jmp   n241_statement_α
n375_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n376_goto_α:
                                                                                        jmp   n377_var_α
n376_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 912], rax                     # result
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 928], rax                     # result
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n379_call_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx605_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx605_5
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx605_6]
                        lea              rdx, [rip + .Lx605_7]
                                                                                        jmp   rax
.Lx605_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx605_2
.Lx605_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx605_2
.Lx605_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx605_20
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx605_21
.Lx605_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx605_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx605_22
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx605_23
.Lx605_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 928]                     # v
                        mov              rdx, qword ptr [rsp + 936]                     # v
                        call             rt_arg_stage@PLT
.Lx605_23:
                        mov              rdi, qword ptr [rip + .Lx605_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx605_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx605_3]
                        lea              rdx, [rip + .Lx605_4]
                                                                                        jmp   rax
.Lx605_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx605_2
.Lx605_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx605_2
.Lx605_1:
                        call             rt_faildescr@PLT
.Lx605_2:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n382_var_α
                                                                                        jmp   n380_assign_α
n379_call_β:
                                                                                        jmp   n382_var_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n381_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_α:
                                                                                        jmp   n382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 976], rax                     # result
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n384_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n384_binop_α:
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx611_240
                        add              rsp, 32
                                                                                        jmp   n313_save_restore_α
.Lx611_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1008], rax                    # result
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n386_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n386_binop_α:
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx613_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx613_0
                        mov              rax, qword ptr [rsp + 968]
                        mov              rcx, qword ptr [rsp + 1016]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n387_assign_α
.Lx613_0:
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx613_240
                        add              rsp, 32
                                                                                        jmp   n313_save_restore_α
.Lx613_240:
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n387_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n388_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_α:
                                                                                        jmp   n313_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n389_goto_α:
                                                                                        jmp   n243_statement_α
n389_goto_β:
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
