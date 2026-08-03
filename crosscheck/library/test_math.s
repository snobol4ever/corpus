                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__max_α
proc_LBL__max_α:
proc_LBL__max_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__max_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx15_1
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
.Lx15_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_coerce_numeric_α
.Lx15_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx17_1
                        cmp              eax, 3
                                                                                        jne   .Lx17_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx17_0
.Lx17_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n5_cmp_test_α
.Lx17_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx19_240
                        add              rsp, 16
                                                                                        jmp   n10_save_restore_α
.Lx19_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n9_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                                                                                        jmp   n10_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n10_save_restore_α:
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
                        .globl           proc_LBL__min_α
proc_LBL__min_α:
proc_LBL__min_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n28_var_α
n27_goto_β:
                                                                                        jmp   proc_LBL__min_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx42_1
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
.Lx42_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n31_coerce_numeric_α
.Lx42_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx44_1
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
.Lx44_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n32_cmp_test_α
.Lx44_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n32_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx46_240
                        add              rsp, 16
                                                                                        jmp   n37_save_restore_α
.Lx46_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n36_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_α:
                                                                                        jmp   n37_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n37_save_restore_α:
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
                        .globl           proc_LBL__abs_α
proc_LBL__abs_α:
proc_LBL__abs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n55_var_α
n54_goto_β:
                                                                                        jmp   proc_LBL__abs_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_coerce_numeric_α
.Lx68_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx70_1
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx70_0
.Lx70_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n58_coerce_numeric_α
.Lx70_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx72_1
                        cmp              eax, 3
                                                                                        jne   .Lx72_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx72_0
.Lx72_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n59_cmp_test_α
.Lx72_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n59_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n59_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx74_240
                        add              rsp, 16
                                                                                        jmp   n65_save_restore_α
.Lx74_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n64_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_α:
                                                                                        jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
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
                        .globl           proc_LBL__sign_α
proc_LBL__sign_α:
proc_LBL__sign_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n83_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n84_var_α
n83_goto_β:
                                                                                        jmp   proc_LBL__sign_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_coerce_numeric_α
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx108_1
                        cmp              eax, 3
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx108_0
.Lx108_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n87_coerce_numeric_α
.Lx108_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n87_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx110_1
                        cmp              eax, 3
                                                                                        jne   .Lx110_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx110_0
.Lx110_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n88_cmp_test_α
.Lx110_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n88_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n88_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx112_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n94_var_α
.Lx112_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_unop_α
.Lx113_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n93_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_α:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n96_coerce_numeric_α
.Lx120_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx122_1
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
.Lx122_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n97_coerce_numeric_α
.Lx122_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n97_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx124_1
                        cmp              eax, 3
                                                                                        jne   .Lx124_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx124_0
.Lx124_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n98_cmp_test_α
.Lx124_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n98_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n98_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n103_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n100_binop_α
.Lx127_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n102_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_α:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n103_save_restore_α:
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
                        .globl           proc_LBL__gcd_α
proc_LBL__gcd_α:
proc_LBL__gcd_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n135_var_α
n134_goto_β:
                                                                                        jmp   proc_LBL__gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_call_α
.Lx153_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
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
.Lrkfnzd155:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd155]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n150_save_restore_α
.Lx154_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_statement_α
n137_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n150_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_α:
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_call_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
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
.Lrkfnzd161:            .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd161]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                                                                                        jmp   n144_var_α
.Lx160_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
n141_call_β:
                        add              rsp, 16
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n143_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_α:
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n146_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_α:
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n149_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_α:
                        add              rsp, 144
                                                                                        jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_save_restore_α:
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
                        .globl           proc_LBL__lcm_α
proc_LBL__lcm_α:
proc_LBL__lcm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n175_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n176_var_α
n175_goto_β:
                                                                                        jmp   proc_LBL__lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n177_var_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n178_call_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx193_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx193_5
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
                        lea              rcx, [rip + .Lx193_6]
                        lea              rdx, [rip + .Lx193_7]
                                                                                        jmp   rax
.Lx193_6:
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
                                                                                        jmp   .Lx193_2
.Lx193_7:
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
                                                                                        jmp   .Lx193_2
.Lx193_5:
                        add              rsp, 48
.Lx193_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                                                                                        jmp   n181_var_α
.Lx193_240:
                                                                                        jmp   n179_assign_α
n178_call_β:
                                                                                        jmp   n181_var_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n180_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_α:
                                                                                        jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n182_var_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n183_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx199_240
                        add              rsp, 16
                                                                                        jmp   n188_save_restore_α
.Lx199_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n184_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n185_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx201_240
                        add              rsp, 16
                                                                                        jmp   n188_save_restore_α
.Lx201_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n187_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_α:
                                                                                        jmp   n188_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n188_save_restore_α:
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
                        .string          "max"
.Lx212_1:
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
                        .string          "min"
.Lx218_1:
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
                        .string          "abs"
.Lx224_1:
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
                        .string          "sign"
.Lx230_1:
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
n231_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n232_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n232_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx236_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx236_1
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "gcd"
.Lx236_1:
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
n237_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n238_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx242_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx242_1
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "lcm"
.Lx242_1:
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
n243_statement_α:
                                                                                        jmp   n244_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_α:
                                                                                        jmp   n245_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_α:
                                                                                        jmp   n246_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_α:
                                                                                        jmp   n247_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_α:
                                                                                        jmp   n248_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_α:
                                                                                        jmp   n249_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_α:
                                                                                        jmp   n250_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_α:
                                                                                        jmp   n251_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_α:
                                                                                        jmp   n252_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_α:
                                                                                        jmp   n253_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_α:
                                                                                        jmp   n254_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_α:
                                                                                        jmp   n255_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_α:
                                                                                        jmp   n256_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_α:
                                                                                        jmp   n257_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n258_lit_integer_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n259_call_α
.Lx431_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:
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
.Lrkfnzd433:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd433]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx432_240
                        add              rsp, 16
                                                                                        jmp   n261_statement_α
.Lx432_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n260_statement_α
n259_call_β:
                        add              rsp, 16
                                                                                        jmp   n261_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_α:
                                                                                        jmp   n261_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_α:
                                                                                        jmp   n262_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n263_lit_integer_α
.Lx438_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n264_call_α
.Lx439_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx441_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx441_5
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
                        lea              rcx, [rip + .Lx441_6]
                        lea              rdx, [rip + .Lx441_7]
                                                                                        jmp   rax
.Lx441_6:
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
                                                                                        jmp   .Lx441_2
.Lx441_7:
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
                                                                                        jmp   .Lx441_2
.Lx441_5:
                        add              rsp, 32
.Lx441_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx441_240
                        add              rsp, 16
                                                                                        jmp   n267_lit_integer_α
.Lx441_240:
                                                                                        jmp   n265_assign_α
n264_call_β:
                                                                                        jmp   n267_lit_integer_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx442_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n266_statement_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_α:
                                                                                        jmp   n267_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n268_lit_integer_α
.Lx445_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n269_call_α
.Lx446_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx448_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx448_5
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
                        lea              rcx, [rip + .Lx448_6]
                        lea              rdx, [rip + .Lx448_7]
                                                                                        jmp   rax
.Lx448_6:
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
                                                                                        jmp   .Lx448_2
.Lx448_7:
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
                                                                                        jmp   .Lx448_2
.Lx448_5:
                        add              rsp, 32
.Lx448_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx448_240
                        add              rsp, 16
                                                                                        jmp   n272_lit_real_α
.Lx448_240:
                                                                                        jmp   n270_assign_α
n269_call_β:
                                                                                        jmp   n272_lit_real_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx449_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n271_statement_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_α:
                                                                                        jmp   n272_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n273_lit_real_α
.Lx452_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n274_call_α
.Lx453_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx455_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx455_5
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
                        lea              rcx, [rip + .Lx455_6]
                        lea              rdx, [rip + .Lx455_7]
                                                                                        jmp   rax
.Lx455_6:
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
                                                                                        jmp   .Lx455_2
.Lx455_7:
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
                                                                                        jmp   .Lx455_2
.Lx455_5:
                        add              rsp, 32
.Lx455_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx455_240
                        add              rsp, 16
                                                                                        jmp   n277_lit_real_α
.Lx455_240:
                                                                                        jmp   n275_assign_α
n274_call_β:
                                                                                        jmp   n277_lit_real_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx456_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n276_statement_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_α:
                                                                                        jmp   n277_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n278_lit_real_α
.Lx459_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n279_call_α
.Lx460_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx462_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx462_5
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
                        lea              rcx, [rip + .Lx462_6]
                        lea              rdx, [rip + .Lx462_7]
                                                                                        jmp   rax
.Lx462_6:
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
                                                                                        jmp   .Lx462_2
.Lx462_7:
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
                                                                                        jmp   .Lx462_2
.Lx462_5:
                        add              rsp, 32
.Lx462_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx462_240
                        add              rsp, 16
                                                                                        jmp   n282_lit_integer_α
.Lx462_240:
                                                                                        jmp   n280_assign_α
n279_call_β:
                                                                                        jmp   n282_lit_integer_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx463_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n281_statement_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_α:
                                                                                        jmp   n282_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n283_unop_α
.Lx466_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n283_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n284_call_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx469_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx469_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx469_6]
                        lea              rdx, [rip + .Lx469_7]
                                                                                        jmp   rax
.Lx469_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
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
                                                                                        jmp   n287_lit_integer_α
.Lx469_240:
                                                                                        jmp   n285_assign_α
n284_call_β:
                                                                                        jmp   n287_lit_integer_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "abs"
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx470_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n286_statement_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_α:
                                                                                        jmp   n287_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n288_call_α
.Lx473_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx475_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx475_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx475_6]
                        lea              rdx, [rip + .Lx475_7]
                                                                                        jmp   rax
.Lx475_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx475_2
.Lx475_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx475_2
.Lx475_5:
                        add              rsp, 16
.Lx475_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx475_240
                        add              rsp, 16
                                                                                        jmp   n291_lit_integer_α
.Lx475_240:
                                                                                        jmp   n289_assign_α
n288_call_β:
                                                                                        jmp   n291_lit_integer_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx476_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n290_statement_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_α:
                                                                                        jmp   n291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n292_call_α
.Lx479_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx481_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx481_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx481_6]
                        lea              rdx, [rip + .Lx481_7]
                                                                                        jmp   rax
.Lx481_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx481_2
.Lx481_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx481_2
.Lx481_5:
                        add              rsp, 16
.Lx481_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx481_240
                        add              rsp, 16
                                                                                        jmp   n295_lit_integer_α
.Lx481_240:
                                                                                        jmp   n293_assign_α
n292_call_β:
                                                                                        jmp   n295_lit_integer_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n293_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx482_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n294_statement_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_α:
                                                                                        jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n296_unop_α
.Lx485_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n296_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n297_call_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx488_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx488_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx488_6]
                        lea              rdx, [rip + .Lx488_7]
                                                                                        jmp   rax
.Lx488_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx488_2
.Lx488_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx488_2
.Lx488_5:
                        add              rsp, 16
.Lx488_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx488_240
                        add              rsp, 16
                                                                                        jmp   n300_lit_integer_α
.Lx488_240:
                                                                                        jmp   n298_assign_α
n297_call_β:
                                                                                        jmp   n300_lit_integer_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx489_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n299_statement_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_α:
                                                                                        jmp   n300_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n301_lit_integer_α
.Lx492_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n302_call_α
.Lx493_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx495_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx495_5
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
                        lea              rcx, [rip + .Lx495_6]
                        lea              rdx, [rip + .Lx495_7]
                                                                                        jmp   rax
.Lx495_6:
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
                                                                                        jmp   .Lx495_2
.Lx495_7:
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
                                                                                        jmp   .Lx495_2
.Lx495_5:
                        add              rsp, 48
.Lx495_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx495_240
                        add              rsp, 16
                                                                                        jmp   n305_lit_integer_α
.Lx495_240:
                                                                                        jmp   n303_assign_α
n302_call_β:
                                                                                        jmp   n305_lit_integer_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx496_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n304_statement_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_α:
                                                                                        jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n306_lit_integer_α
.Lx499_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n307_call_α
.Lx500_0:
                        .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx502_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx502_5
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
                        lea              rcx, [rip + .Lx502_6]
                        lea              rdx, [rip + .Lx502_7]
                                                                                        jmp   rax
.Lx502_6:
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
                                                                                        jmp   .Lx502_2
.Lx502_7:
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
                                                                                        jmp   .Lx502_2
.Lx502_5:
                        add              rsp, 48
.Lx502_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx502_240
                        add              rsp, 16
                                                                                        jmp   n310_lit_integer_α
.Lx502_240:
                                                                                        jmp   n308_assign_α
n307_call_β:
                                                                                        jmp   n310_lit_integer_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n308_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx503_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n309_statement_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_α:
                                                                                        jmp   n310_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n311_lit_integer_α
.Lx506_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n312_call_α
.Lx507_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx509_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx509_5
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
                        lea              rcx, [rip + .Lx509_6]
                        lea              rdx, [rip + .Lx509_7]
                                                                                        jmp   rax
.Lx509_6:
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
                                                                                        jmp   .Lx509_2
.Lx509_7:
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
                                                                                        jmp   .Lx509_2
.Lx509_5:
                        add              rsp, 64
.Lx509_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx509_240
                        add              rsp, 16
                        add              rsp, 528
                                                                                        jmp   main_γ
.Lx509_240:
                                                                                        jmp   n313_assign_α
n312_call_β:
                                                                                        jmp   main_γ
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "lcm"
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx510_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n314_statement_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_α:
                        add              rsp, 544
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n316_var_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n318_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n318_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 5
                                                                                        je    .Lx517_1
                        cmp              eax, 3
                                                                                        jne   .Lx517_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx517_0
.Lx517_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n319_coerce_numeric_α
.Lx517_0:
                        lea              rdi, [rsp + 112]                               # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 80]                                # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n319_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n319_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx519_1
                        cmp              eax, 3
                                                                                        jne   .Lx519_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx519_0
.Lx519_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n320_cmp_test_α
.Lx519_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n320_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n320_cmp_test_α:
                        lea              rdi, [rsp + 80]                                # a
                        lea              rsi, [rsp + 64]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n325_save_restore_α
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n322_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:
                        mov              rdi, qword ptr [rsp + 48]                      # a
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n323_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n324_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n325_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:
                                                                                        jmp   n245_statement_α
n326_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:
                                                                                        jmp   n328_var_α
n327_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 224], rax                     # result
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n329_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n330_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n330_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx534_1
                        cmp              eax, 3
                                                                                        jne   .Lx534_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx534_0
.Lx534_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n331_coerce_numeric_α
.Lx534_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n331_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n331_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx536_1
                        cmp              eax, 3
                                                                                        jne   .Lx536_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx536_0
.Lx536_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n332_cmp_test_α
.Lx536_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n332_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n332_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n325_save_restore_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n333_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax                     # result
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n334_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n334_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 240]                     # b
                        mov              rcx, qword ptr [rsp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n336_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:
                                                                                        jmp   n247_statement_α
n337_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:
                                                                                        jmp   n339_var_α
n338_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 336], rax                     # result
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n341_coerce_numeric_α
.Lx547_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n341_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx549_1
                        cmp              eax, 3
                                                                                        jne   .Lx549_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx549_0
.Lx549_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n342_coerce_numeric_α
.Lx549_0:
                        lea              rdi, [rsp + 336]                               # self
                        lea              rsi, [rsp + 320]                               # other
                        lea              rdx, [rsp + 304]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n342_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n342_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx551_1
                        cmp              eax, 3
                                                                                        jne   .Lx551_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx551_0
.Lx551_1:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n343_cmp_test_α
.Lx551_0:
                        lea              rdi, [rsp + 320]                               # self
                        lea              rsi, [rsp + 336]                               # other
                        lea              rdx, [rsp + 288]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n343_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n343_cmp_test_α:
                        lea              rdi, [rsp + 304]                               # a
                        lea              rsi, [rsp + 288]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n325_save_restore_α
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                                                                                        jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n345_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n345_unop_α:
                        mov              rdi, qword ptr [rsp + 368]                     # a
                        mov              rsi, qword ptr [rsp + 376]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n346_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:
                        mov              rdi, qword ptr [rsp + 272]                     # a
                        mov              rsi, qword ptr [rsp + 280]                     # a
                        mov              rdx, qword ptr [rsp + 352]                     # b
                        mov              rcx, qword ptr [rsp + 360]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n347_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n348_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n349_goto_α:
                                                                                        jmp   n249_statement_α
n349_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_goto_α:
                                                                                        jmp   n351_var_α
n350_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 464], rax                     # result
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:
                        mov              qword ptr [rsp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n353_coerce_numeric_α
.Lx563_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n353_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx565_1
                        cmp              eax, 3
                                                                                        jne   .Lx565_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx565_0
.Lx565_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n354_coerce_numeric_α
.Lx565_0:
                        lea              rdi, [rsp + 464]                               # self
                        lea              rsi, [rsp + 448]                               # other
                        lea              rdx, [rsp + 432]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n354_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n354_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx567_1
                        cmp              eax, 3
                                                                                        jne   .Lx567_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx567_0
.Lx567_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n355_cmp_test_α
.Lx567_0:
                        lea              rdi, [rsp + 448]                               # self
                        lea              rsi, [rsp + 464]                               # other
                        lea              rdx, [rsp + 416]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n355_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n355_cmp_test_α:
                        lea              rdi, [rsp + 432]                               # a
                        lea              rsi, [rsp + 416]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n361_var_α
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                                                                                        jmp   n356_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n357_unop_α
.Lx570_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n357_unop_α:
                        mov              rdi, qword ptr [rsp + 496]                     # a
                        mov              rsi, qword ptr [rsp + 504]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n358_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:
                        mov              rdi, qword ptr [rsp + 400]                     # a
                        mov              rsi, qword ptr [rsp + 408]                     # a
                        mov              rdx, qword ptr [rsp + 480]                     # b
                        mov              rcx, qword ptr [rsp + 488]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n359_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n360_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n363_coerce_numeric_α
.Lx577_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n363_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx579_1
                        cmp              eax, 3
                                                                                        jne   .Lx579_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx579_0
.Lx579_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n364_coerce_numeric_α
.Lx579_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n364_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n364_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx581_1
                        cmp              eax, 3
                                                                                        jne   .Lx581_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx581_0
.Lx581_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n365_cmp_test_α
.Lx581_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n365_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n365_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n325_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n366_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n367_binop_α
.Lx584_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n367_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n368_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n369_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n370_goto_α:
                                                                                        jmp   n251_statement_α
n370_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n371_goto_α:
                                                                                        jmp   n372_var_α
n371_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:
                        mov              qword ptr [rsp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n374_call_α
.Lx592_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn594:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]                         # fn
                        lea              rsi, [rsp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n325_save_restore_α
                                                                                        jmp   n375_statement_α
n374_call_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_α:
                                                                                        jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 800], rax                     # result
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n378_call_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn600:              .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]                         # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n381_var_α
                                                                                        jmp   n379_assign_α
n378_call_β:
                                                                                        jmp   n381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n380_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_α:
                                                                                        jmp   n381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n382_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n383_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_α:
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 832], rax                     # result
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n385_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n386_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_α:
                                                                                        jmp   n372_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_goto_α:
                                                                                        jmp   n253_statement_α
n387_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_goto_α:
                                                                                        jmp   n389_var_α
n388_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 912], rax                     # result
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 928], rax                     # result
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n391_call_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx617_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx617_5
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx617_6]
                        lea              rdx, [rip + .Lx617_7]
                                                                                        jmp   rax
.Lx617_6:
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
                                                                                        jmp   .Lx617_2
.Lx617_7:
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
                                                                                        jmp   .Lx617_2
.Lx617_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx617_20
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx617_21
.Lx617_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx617_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx617_22
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx617_23
.Lx617_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 928]                     # v
                        mov              rdx, qword ptr [rsp + 936]                     # v
                        call             rt_arg_stage@PLT
.Lx617_23:
                        mov              rdi, qword ptr [rip + .Lx617_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx617_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx617_3]
                        lea              rdx, [rip + .Lx617_4]
                                                                                        jmp   rax
.Lx617_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx617_2
.Lx617_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx617_2
.Lx617_1:
                        call             rt_faildescr@PLT
.Lx617_2:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n394_var_α
                                                                                        jmp   n392_assign_α
n391_call_β:
                                                                                        jmp   n394_var_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n393_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_α:
                                                                                        jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 976], rax                     # result
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n395_var_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n396_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n396_binop_α:
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx623_240
                        add              rsp, 32
                                                                                        jmp   n325_save_restore_α
.Lx623_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n397_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1008], rax                    # result
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n398_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n398_binop_α:
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx625_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx625_0
                        mov              rax, qword ptr [rsp + 968]
                        mov              rcx, qword ptr [rsp + 1016]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n399_assign_α
.Lx625_0:
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx625_240
                        add              rsp, 32
                                                                                        jmp   n325_save_restore_α
.Lx625_240:
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n400_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_α:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n401_goto_α:
                                                                                        jmp   n255_statement_α
n401_goto_β:
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
