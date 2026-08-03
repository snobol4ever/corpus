                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_α:
proc_LBL__pad_left_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd29:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd29]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx28_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_string_α
n1_call_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_binop_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n5_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_α:
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_call_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd37:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd37]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n16_var_α
.Lx36_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_var_α
n7_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx40_1
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
.Lx40_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n10_coerce_numeric_α
.Lx40_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx42_1
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
.Lx42_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n11_cmp_test_α
.Lx42_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n11_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx44_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n16_var_α
.Lx44_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n15_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_α:
                                                                                        jmp   n26_save_restore_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_call_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd54:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd54]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx53_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n26_save_restore_α
.Lx53_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_binop_α
n19_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n26_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n26_save_restore_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd57:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd57]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx56_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n26_save_restore_α
.Lx56_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_var_α
n21_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n26_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n25_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_α:
                        add              rsp, 128
                                                                                        jmp   n26_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n26_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_β:
                                                                                        jmp   proc_LBL__pad_left_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_right_α:
proc_LBL__pad_right_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_call_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd94:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd94]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx93_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_var_α
.Lx93_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_lit_string_α
n66_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_binop_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n70_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_α:
                        add              rsp, 64
                                                                                        jmp   n71_var_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_call_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd102:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd102]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx101_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_var_α
.Lx101_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_var_α
n72_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx105_1
                        cmp              eax, 3
                                                                                        jne   .Lx105_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx105_0
.Lx105_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n75_coerce_numeric_α
.Lx105_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx107_1
                        cmp              eax, 3
                                                                                        jne   .Lx107_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx107_0
.Lx107_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n76_cmp_test_α
.Lx107_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n76_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n76_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx109_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n81_var_α
.Lx109_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n80_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_α:
                                                                                        jmp   n91_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n85_call_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn120:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]                         # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n91_save_restore_α
                                                                                        jmp   n86_binop_α
n85_call_β:
                                                                                        jmp   n91_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n87_call_α
.Lx121_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n91_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n87_call_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn123:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]                         # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n91_save_restore_α
                                                                                        jmp   n88_binop_α
n87_call_β:
                                                                                        jmp   n91_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n90_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_α:
                                                                                        jmp   n91_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n91_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_right_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_right_β:
                                                                                        jmp   proc_LBL__pad_right_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_right_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_right_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ltrim_α:
proc_LBL__ltrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_lit_integer_α
n130_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n132_call_α
n131_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx164_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd56:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd56]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_binop_α
n132_call_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_lit_integer_α
n133_binop_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_call_α
n134_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx167_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd59:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd59]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_binop_α
n135_call_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n137_lit_integer_α
n136_binop_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n138_call_α
n137_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx170_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd62:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd62]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx171_240
                        add              rsp, 16
                                                                                        jmp   n142_var_α
.Lx171_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_binop_α
n138_call_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_assign_α
n139_binop_β:
                        add              rsp, 16
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n141_statement_α
n140_assign_β:
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_α:
                                                                                        jmp   n142_var_α
n141_statement_β:
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n143_var_α
n142_var_β:
                        add              rsp, 16
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_coerce_string_α
n143_var_β:
                        add              rsp, 16
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n145_match_begin_α
n144_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_match_begin_α:
                        sub              rsp, 1504
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
                        mov              rdi, qword ptr [rsp + 1536]                    # var
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rbp + 1488], rdi
                        mov              qword ptr [rbp + 1496], rsi
                        mov              qword ptr [rsp + 1256], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1264], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1272], r14                    # outer_δ
                        mov              qword ptr [rbp + 1280], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1288], rax                    # cap_gen
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx181_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n146_match_sequence_α
n145_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx181_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx181_1
                                                                                        jmp   .Lx181_0
.Lx181_1:
                        mov              r10, qword ptr [1879048192]
.Lx181_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx181_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1264]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1272]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1280]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1288]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_match_sequence_α:
                                                                                        jmp   n157_lit_integer_α
n146_match_sequence_as:
                                                                                        jmp   n147_match_end_α
n146_match_sequence_β:
                                                                                        jmp   n153_match_assign_cond_β
n146_match_sequence_af:
                                                                                        jmp   n145_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx185_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 32]
                        mov              dword ptr [rsp + 1312], eax
                        mov              qword ptr [rsp + 1336], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx185_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx185_1:
                        test             rax, rax
                                                                                        je    .Lx185_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4]
                                                                                        jmp   rax
.Lx185_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx185_1
.Lx185_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx185_1
.Lx185_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx185_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1264]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1272]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1280]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1288]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n149_match_replace_α
n148_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n159_var_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n149_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx188_0]                # name
                        mov              rsi, qword ptr [rbp + 1488]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1496]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1216]                    # start
                        mov              r8, qword ptr [rbp + 1240]                     # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx188_1
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "s"
.Lx188_1:
                                                                                        jmp   n150_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_α:
                                                                                        jmp   n159_var_α
n150_statement_β:
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n151_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n152_match_rem_α
n151_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n154_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n152_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n153_match_assign_cond_α
n152_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n154_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n153_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n147_match_end_α
n153_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n152_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n154_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx197_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n156_match_span_α
.Lx197_21:
                        lea              rax, [rip + .Lx197_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n155_match_lit_α
n154_match_alternate_s0:
                        lea              rax, [rip + .Lx197_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n154_match_alternate_as
n154_match_alternate_s1:
                        lea              rax, [rip + .Lx197_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n154_match_alternate_as
.Lx197_40:
                                                                                        jmp   n156_match_span_β
.Lx197_41:
                                                                                        jmp   n155_match_lit_β
n154_match_alternate_as:
                                                                                        jmp   n151_match_assign_save_α
n154_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n154_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx197_19:
                                                                                        jmp   n158_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n155_match_lit_α:
                                                                                        jmp   n154_match_alternate_s1
n155_match_lit_β:
                                                                                        jmp   n154_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n156_match_span_α:
                        mov              dword ptr [rbp + 1392], 0
                        mov              r8, qword ptr [rbp + 1464]
                        mov              r9d, dword ptr [rbp + 1460]
.Lx201_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jge   .Lx201_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx201_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx201_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx201_3
                        add              edx, 1
                                                                                        jmp   .Lx201_2
.Lx201_3:
                        add              dword ptr [rbp + 1392], 1
                                                                                        jmp   .Lx201_0
.Lx201_1:
                        mov              eax, dword ptr [rbp + 1392]
                        test             eax, eax
                                                                                        jle   n154_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1396], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n154_match_alternate_s0
n156_match_span_β:
                        mov              r14d, dword ptr [rbp + 1396]
                                                                                        jmp   n154_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n158_match_pos_α
n157_lit_integer_β:
                                                                                        jmp   n145_match_begin_β
.Lx202_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n158_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n145_match_begin_β
                                                                                        jmp   n154_match_alternate_α
n158_match_pos_β:
                                                                                        jmp   n145_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_assign_α
n159_var_β:
                        add              rsp, 16
                                                                                        jmp   n162_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n161_statement_α
n160_assign_β:
                                                                                        jmp   n162_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_α:
                                                                                        jmp   n162_save_restore_α
n161_statement_β:
                                                                                        jmp   n162_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n162_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ltrim_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ltrim_β:
                                                                                        jmp   proc_LBL__ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ltrim_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ltrim_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__rtrim_α:
proc_LBL__rtrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n211_lit_integer_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_call_α
.Lx258_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd88:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd88]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx259_240
                        add              rsp, 16
                                                                                        jmp   n222_var_α
.Lx259_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n213_binop_α
n212_call_β:
                        add              rsp, 16
                                                                                        jmp   n222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n214_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n215_call_α
.Lx261_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd91:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd91]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx262_240
                        add              rsp, 16
                                                                                        jmp   n222_var_α
.Lx262_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n216_binop_α
n215_call_β:
                        add              rsp, 16
                                                                                        jmp   n222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n217_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_call_α
.Lx264_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd94:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd94]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx265_240
                        add              rsp, 16
                                                                                        jmp   n222_var_α
.Lx265_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n219_binop_α
n218_call_β:
                        add              rsp, 16
                                                                                        jmp   n222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n220_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n221_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_α:
                                                                                        jmp   n222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n223_call_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd272:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd272]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx271_240
                        add              rsp, 16
                                                                                        jmp   n226_var_α
.Lx271_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n224_assign_α
n223_call_β:
                        add              rsp, 16
                                                                                        jmp   n226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n225_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_α:
                                                                                        jmp   n226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n228_coerce_numeric_α
.Lx277_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n228_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx279_1
                        cmp              eax, 3
                                                                                        jne   .Lx279_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx279_0
.Lx279_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n229_coerce_numeric_α
.Lx279_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n229_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n229_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx281_1
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
.Lx281_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n230_cmp_test_α
.Lx281_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n230_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n230_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx283_240
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n232_var_α
.Lx283_240:
                                                                                        jmp   n231_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_α:
                                                                                        jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n234_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n235_call_α
.Lx288_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn290:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n238_var_α
                                                                                        jmp   n236_assign_α
n235_call_β:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n237_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_α:
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n240_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n241_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_match_begin_α:
                        mov              qword ptr [rbp + 2128], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2136], r14                    # outer_δ
                        mov              qword ptr [rbp + 2144], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2152], rax                    # cap_gen
                        mov              qword ptr [rbp + 2120], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 2192]                    # lo
                        mov              rsi, qword ptr [rbp + 2200]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx299_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n242_match_any_α
n241_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx299_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx299_1
                                                                                        jmp   .Lx299_0
.Lx299_1:
                        mov              r10, qword ptr [1879048192]
.Lx299_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                                                                                        jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n241_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              r9d, dword ptr [rbp + 2164]
                        mov              edx, 0
.Lx301_5:
                        cmp              edx, r9d
                                                                                        jge   n241_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx301_6
                        add              edx, 1
                                                                                        jmp   .Lx301_5
.Lx301_6:
                        add              r14d, 1
                                                                                        jmp   n243_match_end_α
n242_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n241_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n243_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx303_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx303_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx303_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx303_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx303_1:
                        test             rax, rax
                                                                                        je    .Lx303_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4]
                                                                                        jmp   rax
.Lx303_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx303_1
.Lx303_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx303_1
.Lx303_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx303_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx303_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                                                                                        jmp   n244_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_α:
                                                                                        jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n246_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n247_binop_α
.Lx307_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx308_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n248_assign_α
.Lx308_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx308_240
                        add              rsp, 32
                                                                                        jmp   n226_var_α
.Lx308_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n248_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n249_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_α:
                                                                                        jmp   n226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n251_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n252_var_α
.Lx313_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_call_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd316:            .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd316]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx315_240
                        add              rsp, 16
                                                                                        jmp   n256_save_restore_α
.Lx315_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n254_assign_α
n253_call_β:
                        add              rsp, 16
                                                                                        jmp   n256_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n255_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_α:
                                                                                        jmp   n256_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n256_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__rtrim_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__rtrim_β:
                                                                                        jmp   proc_LBL__rtrim_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__rtrim_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__rtrim_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__trimws_α:
proc_LBL__trimws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n323_call_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 80
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052416]                    # rtrim
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rip + .Lx330_0]                # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx330_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx330_6]
                        lea              rdx, [rip + .Lx330_7]
                                                                                        jmp   rax
.Lx330_6:
                        mov              rdi, qword ptr [1879052416]                    # rtrim
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx330_2
.Lx330_7:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx330_2
.Lx330_5:
                        add              rsp, 80
.Lx330_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 16
                                                                                        jmp   n327_save_restore_α
.Lx330_240:
                                                                                        jmp   n324_call_α
n323_call_β:
                                                                                        jmp   n327_save_restore_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # call
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052368]                    # ltrim
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx332_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx332_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx332_6]
                        lea              rdx, [rip + .Lx332_7]
                                                                                        jmp   rax
.Lx332_6:
                        mov              rdi, qword ptr [1879052368]                    # ltrim
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx332_2
.Lx332_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx332_2
.Lx332_5:
                        add              rsp, 64
.Lx332_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx332_240
                        add              rsp, 16
                                                                                        jmp   n327_save_restore_α
.Lx332_240:
                                                                                        jmp   n325_assign_α
n324_call_β:
                                                                                        jmp   n327_save_restore_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n326_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_α:
                                                                                        jmp   n327_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n327_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__trimws_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__trimws_β:
                                                                                        jmp   proc_LBL__trimws_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__trimws_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__trimws_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__repeat_α:
proc_LBL__repeat_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n340_call_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:
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
.Lrkfnzd347:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd347]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                                                                                        jmp   n343_save_restore_α
.Lx346_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n341_assign_α
n340_call_β:
                        add              rsp, 16
                                                                                        jmp   n343_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n342_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_α:
                                                                                        jmp   n343_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n343_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__repeat_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__repeat_β:
                                                                                        jmp   proc_LBL__repeat_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__repeat_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__repeat_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__contains_α:
proc_LBL__contains_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:
                        sub              rsp, 176
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
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 160], rax                     # result
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 144], rax                     # result
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n355_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_coerce_string_α:
                        lea              rdi, [rsp + 144]                               # in
                        lea              rsi, [rsp + 128]                               # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n356_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n356_match_begin_α:
                        mov              qword ptr [rbp + 2656], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2664], r14                    # outer_δ
                        mov              qword ptr [rbp + 2672], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2680], rax                    # cap_gen
                        mov              qword ptr [rbp + 2648], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 2752]                    # lo
                        mov              rsi, qword ptr [rbp + 2760]                    # hi
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
                        mov              qword ptr [rbp + 2624], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2616], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2608], 0                      # start_δ
.Lx369_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n357_match_sequence_α
n356_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx369_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx369_1
                                                                                        jmp   .Lx369_0
.Lx369_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx369_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx369_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2648]                    # old_rbp
                        add              rsp, 176
                                                                                        jmp   n363_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n357_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n362_match_break_α
n357_match_sequence_as:
                                                                                        jmp   n358_match_end_α
n357_match_sequence_β:
                                                                                        jmp   n361_match_patref_β
n357_match_sequence_af:
                                                                                        jmp   n356_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n358_match_end_α:
                        mov              rax, qword ptr [rbp + 2616]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx373_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx373_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx373_1:
                        test             rax, rax
                                                                                        je    .Lx373_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx373_3]
                        lea              rdx, [rip + .Lx373_4]
                                                                                        jmp   rax
.Lx373_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx373_1
.Lx373_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx373_1
.Lx373_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx373_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx373_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2648]                    # old_rbp
                                                                                        jmp   n359_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_α:
                                                                                        jmp   n360_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n360_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n361_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx378_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx378_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx378_10
.Lx378_9:
                        xor              eax, eax
.Lx378_10:
                        test             rax, rax
                                                                                        jz    .Lx378_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx378_4]
                        lea              rdx, [rip + .Lx378_5]
                                                                                        jmp   rax
.Lx378_4:
                                                                                        jmp   n358_match_end_α
.Lx378_5:
                                                                                        jmp   n362_match_break_β
.Lx378_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx378_2:
                        test             rax, rax
                                                                                        je    .Lx378_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx378_7]
                        lea              rdx, [rip + .Lx378_8]
                                                                                        jmp   rax
.Lx378_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx378_2
.Lx378_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx378_2
.Lx378_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n362_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx378_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n358_match_end_α
.Lx378_6:
                        add              rsp, 16
                                                                                        jmp   n362_match_break_β
n361_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n362_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx380_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx380_240
                        add              rsp, 16
                                                                                        jmp   n356_match_begin_β
.Lx380_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx380_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx380_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx380_1
                        add              edx, 1
                                                                                        jmp   .Lx380_2
.Lx380_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx380_0
.Lx380_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n361_match_patref_α
n362_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n356_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n363_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__contains_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__contains_β:
                                                                                        jmp   proc_LBL__contains_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__contains_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__contains_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__startswith_α:
proc_LBL__startswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        sub              rsp, 2896
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
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n384_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n384_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2792], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2800], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2808], r14                    # outer_δ
                        mov              qword ptr [rbp + 2816], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2824], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2768], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2760], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2752], 0                      # start_δ
.Lx395_0:
                        mov              r14d, dword ptr [rbp + 2752]
                                                                                        jmp   n385_match_sequence_α
n384_match_begin_β:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, r15d
                                                                                        jg    .Lx395_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx395_1
                                                                                        jmp   .Lx395_0
.Lx395_1:
                        mov              rax, qword ptr [rbp + 2760]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2768]
                        mov              r10, qword ptr [1879048192]
.Lx395_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx395_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2800]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2808]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2816]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2824]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2760]                    # old_rbp
                        add              rsp, 2896
                                                                                        jmp   n392_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n385_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n390_lit_integer_α
n385_match_sequence_as:
                                                                                        jmp   n386_match_end_α
n385_match_sequence_β:
                                                                                        jmp   n389_match_patref_β
n385_match_sequence_af:
                                                                                        jmp   n384_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n386_match_end_α:
                        mov              rax, qword ptr [rbp + 2760]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2768]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx399_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx399_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx399_1:
                        test             rax, rax
                                                                                        je    .Lx399_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx399_1
.Lx399_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx399_1
.Lx399_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx399_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx399_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2800]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2808]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2816]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2824]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n387_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_α:
                                                                                        jmp   n388_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n388_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n389_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx404_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx404_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx404_10
.Lx404_9:
                        xor              eax, eax
.Lx404_10:
                        test             rax, rax
                                                                                        jz    .Lx404_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx404_4]
                        lea              rdx, [rip + .Lx404_5]
                                                                                        jmp   rax
.Lx404_4:
                                                                                        jmp   n386_match_end_α
.Lx404_5:
                                                                                        jmp   n384_match_begin_β
.Lx404_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx404_2:
                        test             rax, rax
                                                                                        je    .Lx404_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx404_7]
                        lea              rdx, [rip + .Lx404_8]
                                                                                        jmp   rax
.Lx404_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx404_2
.Lx404_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx404_2
.Lx404_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n384_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx404_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n386_match_end_α
.Lx404_6:
                        add              rsp, 16
                                                                                        jmp   n384_match_begin_β
n389_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_integer_α:
                        mov              qword ptr [rsp + 2848], 3                      # result
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 2856], rax
                                                                                        jmp   n391_match_pos_α
n390_lit_integer_β:
                                                                                        jmp   n384_match_begin_β
.Lx405_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n391_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n384_match_begin_β
                                                                                        jmp   n389_match_patref_α
n391_match_pos_β:
                                                                                        jmp   n384_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__startswith_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__startswith_β:
                                                                                        jmp   proc_LBL__startswith_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__startswith_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__startswith_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__endswith_α:
proc_LBL__endswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        sub              rsp, 3056
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
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n410_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n410_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2952], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2960], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2968], r14                    # outer_δ
                        mov              qword ptr [rbp + 2976], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2984], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2928], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2920], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2912], 0                      # start_δ
.Lx421_0:
                        mov              r14d, dword ptr [rbp + 2912]
                                                                                        jmp   n411_match_sequence_α
n410_match_begin_β:
                        add              dword ptr [rbp + 2912], 1
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, r15d
                                                                                        jg    .Lx421_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx421_1
                                                                                        jmp   .Lx421_0
.Lx421_1:
                        mov              rax, qword ptr [rbp + 2920]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2928]
                        mov              r10, qword ptr [1879048192]
.Lx421_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx421_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2960]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2968]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2976]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2984]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2920]                    # old_rbp
                        add              rsp, 3056
                                                                                        jmp   n418_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n411_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n417_match_patref_α
n411_match_sequence_as:
                                                                                        jmp   n412_match_end_α
n411_match_sequence_β:
                                                                                        jmp   n416_match_rpos_β
n411_match_sequence_af:
                                                                                        jmp   n410_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n412_match_end_α:
                        mov              rax, qword ptr [rbp + 2920]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2928]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx425_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx425_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx425_1:
                        test             rax, rax
                                                                                        je    .Lx425_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx425_3]
                        lea              rdx, [rip + .Lx425_4]
                                                                                        jmp   rax
.Lx425_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx425_1
.Lx425_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx425_1
.Lx425_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx425_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx425_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2960]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2968]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2976]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2984]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n413_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_α:
                                                                                        jmp   n414_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n414_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:
                        mov              qword ptr [rsp + 3024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 3032], rax
                                                                                        jmp   n416_match_rpos_α
n415_lit_integer_β:
                                                                                        jmp   n417_match_patref_β
.Lx430_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n416_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n417_match_patref_β
                                                                                        jmp   n412_match_end_α
n416_match_rpos_β:
                                                                                        jmp   n417_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n417_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx432_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx432_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx432_10
.Lx432_9:
                        xor              eax, eax
.Lx432_10:
                        test             rax, rax
                                                                                        jz    .Lx432_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx432_4]
                        lea              rdx, [rip + .Lx432_5]
                                                                                        jmp   rax
.Lx432_4:
                                                                                        jmp   n415_lit_integer_α
.Lx432_5:
                                                                                        jmp   n410_match_begin_β
.Lx432_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx432_2:
                        test             rax, rax
                                                                                        je    .Lx432_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx432_7]
                        lea              rdx, [rip + .Lx432_8]
                                                                                        jmp   rax
.Lx432_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx432_2
.Lx432_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx432_2
.Lx432_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n410_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx432_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n415_lit_integer_α
.Lx432_6:
                        add              rsp, 16
                                                                                        jmp   n410_match_begin_β
n417_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n418_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__endswith_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__endswith_β:
                                                                                        jmp   proc_LBL__endswith_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__endswith_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__endswith_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__index_α:
proc_LBL__index_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        sub              rsp, 3376
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
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n436_assign_α
.Lx457_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n437_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_α:
                                                                                        jmp   n438_var_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3072], rax                    # result
                        mov              qword ptr [rsp + 3080], rdx
                                                                                        jmp   n439_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              rdx, qword ptr [rsp + 3080]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n440_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_α:
                                                                                        jmp   n441_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3264], rax                    # result
                        mov              qword ptr [rsp + 3272], rdx
                                                                                        jmp   n442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3248], rax                    # result
                        mov              qword ptr [rsp + 3256], rdx
                                                                                        jmp   n443_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_coerce_string_α:
                        lea              rdi, [rsp + 3248]                              # in
                        lea              rsi, [rsp + 3232]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n444_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n444_match_begin_α:
                        mov              qword ptr [rbp + 3184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 3192], r14                    # outer_δ
                        mov              qword ptr [rbp + 3200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 3208], rax                    # cap_gen
                        mov              qword ptr [rbp + 3176], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 3296]                    # lo
                        mov              rsi, qword ptr [rbp + 3304]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx470_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n445_match_assign_save_α
n444_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx470_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx470_1
                                                                                        jmp   .Lx470_0
.Lx470_1:
                        mov              r10, qword ptr [1879048192]
.Lx470_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx470_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3176]                    # old_rbp
                                                                                        jmp   n456_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n445_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n446_match_break_α
n445_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n444_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n446_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx474_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx474_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n444_match_begin_β
.Lx474_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx474_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx474_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx474_1
                        add              edx, 1
                                                                                        jmp   .Lx474_2
.Lx474_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx474_0
.Lx474_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n447_match_assign_cond_α
n446_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n444_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n447_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n448_match_end_α
n447_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n446_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n448_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx478_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx478_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx478_1:
                        test             rax, rax
                                                                                        je    .Lx478_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx478_3]
                        lea              rdx, [rip + .Lx478_4]
                                                                                        jmp   rax
.Lx478_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx478_1
.Lx478_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx478_1
.Lx478_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx478_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3176]                    # old_rbp
                                                                                        jmp   n449_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_α:
                                                                                        jmp   n450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3344], rax                    # result
                        mov              qword ptr [rsp + 3352], rdx
                                                                                        jmp   n451_call_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn483:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]                         # fn
                        lea              rsi, [rsp + 3312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n456_save_restore_α
                                                                                        jmp   n452_lit_integer_α
n451_call_β:
                                                                                        jmp   n456_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:
                        mov              qword ptr [rsp + 3360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n453_binop_α
.Lx484_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 3
                                                                                        jne   .Lx485_0
                        mov              rax, qword ptr [rsp + 3304]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3280], 3
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n454_assign_α
.Lx485_0:
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 3360]
                        mov              rcx, qword ptr [rsp + 3368]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n456_save_restore_α
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n454_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n455_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_α:
                                                                                        jmp   n456_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n456_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__index_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__index_β:
                                                                                        jmp   proc_LBL__index_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__index_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__index_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pad_left_α
proc_pad_left_α:
proc_pad_left_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n491_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n492_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n492_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx496_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx496_1
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "pad_left"
.Lx496_1:
                                                                                        jmp   proc_pad_left_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_left_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_left_β:
                                                                                        jmp   proc_pad_left_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_left_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_left_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pad_right_α
proc_pad_right_α:
proc_pad_right_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n497_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n498_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n498_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx502_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx502_1
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "pad_right"
.Lx502_1:
                                                                                        jmp   proc_pad_right_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_right_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_right_β:
                                                                                        jmp   proc_pad_right_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_right_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_right_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ltrim_α
proc_ltrim_α:
proc_ltrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n503_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n504_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n504_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx508_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx508_1
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "ltrim"
.Lx508_1:
                                                                                        jmp   proc_ltrim_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ltrim_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ltrim_β:
                                                                                        jmp   proc_ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ltrim_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ltrim_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rtrim_α
proc_rtrim_α:
proc_rtrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n509_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n510_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n510_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx514_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx514_1
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "rtrim"
.Lx514_1:
                                                                                        jmp   proc_rtrim_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_rtrim_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_rtrim_β:
                                                                                        jmp   proc_rtrim_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rtrim_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_rtrim_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_trimws_α
proc_trimws_α:
proc_trimws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n515_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n516_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n516_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx520_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx520_1
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "trimws"
.Lx520_1:
                                                                                        jmp   proc_trimws_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_trimws_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_trimws_β:
                                                                                        jmp   proc_trimws_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_trimws_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_trimws_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_repeat_α
proc_repeat_α:
proc_repeat_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n521_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n522_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n522_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx526_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx526_1
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "repeat"
.Lx526_1:
                                                                                        jmp   proc_repeat_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_repeat_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_repeat_β:
                                                                                        jmp   proc_repeat_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_repeat_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_repeat_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_contains_α
proc_contains_α:
proc_contains_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n527_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n528_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n528_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx532_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx532_1
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "contains"
.Lx532_1:
                                                                                        jmp   proc_contains_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_contains_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_contains_β:
                                                                                        jmp   proc_contains_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_contains_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_contains_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_startswith_α
proc_startswith_α:
proc_startswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n533_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n534_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n534_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx538_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx538_1
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "startswith"
.Lx538_1:
                                                                                        jmp   proc_startswith_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_startswith_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_startswith_β:
                                                                                        jmp   proc_startswith_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_startswith_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_startswith_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_endswith_α
proc_endswith_α:
proc_endswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n539_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n540_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n540_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx544_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx544_1
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "endswith"
.Lx544_1:
                                                                                        jmp   proc_endswith_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_endswith_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_endswith_β:
                                                                                        jmp   proc_endswith_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_endswith_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_endswith_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_index_α
proc_index_α:
proc_index_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n545_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n546_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n546_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx550_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx550_1
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "index"
.Lx550_1:
                                                                                        jmp   proc_index_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_index_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_index_β:
                                                                                        jmp   proc_index_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_index_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_index_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__pad_left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__pad_left_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__pad_right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__pad_right_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__ltrim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__ltrim_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__rtrim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__rtrim_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__trimws"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__trimws_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__repeat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__repeat_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__contains"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_LBL__contains_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__startswith"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_LBL__startswith_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "LBL__endswith"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_LBL__endswith_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "LBL__index"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_LBL__index_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 4752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pad_left"
.Lstartup_pp10_0:       .string          "s"
.Lstartup_pp10_1:       .string          "n"
.Lstartup_pp10_2:       .string          "c"
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
                        lea              rsi, [rip + proc_pad_left_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 3
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pad_right"
.Lstartup_pp11_0:       .string          "s"
.Lstartup_pp11_1:       .string          "n"
.Lstartup_pp11_2:       .string          "c"
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
                        lea              rsi, [rip + proc_pad_right_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "ltrim"
.Lstartup_pp12_0:       .string          "s"
.Lstartup_pp12_1:       .string          "ws"
.Lstartup_pp12_2:       .string          "r"
                        .align           8
.Lstartup_pnames12:
                        .quad            .Lstartup_pp12_0
                        .quad            .Lstartup_pp12_1
                        .quad            .Lstartup_pp12_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + .Lstartup_pnames12]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_ltrim_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "rtrim"
.Lstartup_pp13_0:       .string          "s"
.Lstartup_pp13_1:       .string          "ws"
.Lstartup_pp13_2:       .string          "i"
.Lstartup_pp13_3:       .string          "ch"
                        .align           8
.Lstartup_pnames13:
                        .quad            .Lstartup_pp13_0
                        .quad            .Lstartup_pp13_1
                        .quad            .Lstartup_pp13_2
                        .quad            .Lstartup_pp13_3
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + .Lstartup_pnames13]
                        mov              edx, 4
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_rtrim_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "trimws"
.Lstartup_pp14_0:       .string          "s"
                        .align           8
.Lstartup_pnames14:
                        .quad            .Lstartup_pp14_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + .Lstartup_pnames14]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_trimws_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "repeat"
.Lstartup_pp15_0:       .string          "s"
.Lstartup_pp15_1:       .string          "n"
                        .align           8
.Lstartup_pnames15:
                        .quad            .Lstartup_pp15_0
                        .quad            .Lstartup_pp15_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + .Lstartup_pnames15]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_repeat_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "contains"
.Lstartup_pp16_0:       .string          "s"
.Lstartup_pp16_1:       .string          "t"
                        .align           8
.Lstartup_pnames16:
                        .quad            .Lstartup_pp16_0
                        .quad            .Lstartup_pp16_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + .Lstartup_pnames16]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_contains_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "startswith"
.Lstartup_pp17_0:       .string          "s"
.Lstartup_pp17_1:       .string          "t"
                        .align           8
.Lstartup_pnames17:
                        .quad            .Lstartup_pp17_0
                        .quad            .Lstartup_pp17_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + .Lstartup_pnames17]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_startswith_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "endswith"
.Lstartup_pp18_0:       .string          "s"
.Lstartup_pp18_1:       .string          "t"
                        .align           8
.Lstartup_pnames18:
                        .quad            .Lstartup_pp18_0
                        .quad            .Lstartup_pp18_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + .Lstartup_pnames18]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_endswith_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "index"
.Lstartup_pp19_0:       .string          "s"
.Lstartup_pp19_1:       .string          "t"
.Lstartup_pp19_2:       .string          "ix"
                        .align           8
.Lstartup_pnames19:
                        .quad            .Lstartup_pp19_0
                        .quad            .Lstartup_pp19_1
                        .quad            .Lstartup_pp19_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + .Lstartup_pnames19]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_index_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "pad_left"
.Lgvan1:                .string          "s"
.Lgvan2:                .string          "n"
.Lgvan3:                .string          "c"
.Lgvan4:                .string          "pad_right"
.Lgvan5:                .string          "ltrim"
.Lgvan6:                .string          "ws"
.Lgvan7:                .string          "r"
.Lgvan8:                .string          "rtrim"
.Lgvan9:                .string          "i"
.Lgvan10:               .string          "ch"
.Lgvan11:               .string          "trimws"
.Lgvan12:               .string          "repeat"
.Lgvan13:               .string          "contains"
.Lgvan14:               .string          "t"
.Lgvan15:               .string          "startswith"
.Lgvan16:               .string          "endswith"
.Lgvan17:               .string          "index"
.Lgvan18:               .string          "ix"
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
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 19
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 19
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
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_α:
                                                                                        jmp   n552_statement_α
n551_statement_β:
                                                                                        jmp   n552_statement_α
#=======================================================================================================================
#         OUTPUT = 'endswith ok'          :(ew1)
#-----------------------------------------------------------------------------------------------------------------------
n552_statement_α:
                                                                                        jmp   n553_statement_α
n552_statement_β:
                                                                                        jmp   n553_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n553_statement_α:
                                                                                        jmp   n554_statement_α
n553_statement_β:
                                                                                        jmp   n554_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_α:
                                                                                        jmp   n555_statement_α
n554_statement_β:
                                                                                        jmp   n555_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_α:
                                                                                        jmp   n556_statement_α
n555_statement_β:
                                                                                        jmp   n556_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_α:
                                                                                        jmp   n557_statement_α
n556_statement_β:
                                                                                        jmp   n557_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_α:
                                                                                        jmp   n558_statement_α
n557_statement_β:
                                                                                        jmp   n558_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_α:
                                                                                        jmp   n559_statement_α
n558_statement_β:
                                                                                        jmp   n559_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n559_statement_α:
                                                                                        jmp   n560_statement_α
n559_statement_β:
                                                                                        jmp   n560_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_α:
                                                                                        jmp   n561_statement_α
n560_statement_β:
                                                                                        jmp   n561_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_α:
                                                                                        jmp   n562_statement_α
n561_statement_β:
                                                                                        jmp   n562_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n562_statement_α:
                                                                                        jmp   n563_statement_α
n562_statement_β:
                                                                                        jmp   n563_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n563_statement_α:
                                                                                        jmp   n564_statement_α
n563_statement_β:
                                                                                        jmp   n564_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_α:
                                                                                        jmp   n565_statement_α
n564_statement_β:
                                                                                        jmp   n565_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_α:
                                                                                        jmp   n566_statement_α
n565_statement_β:
                                                                                        jmp   n566_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_α:
                                                                                        jmp   n567_statement_α
n566_statement_β:
                                                                                        jmp   n567_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_α:
                                                                                        jmp   n568_statement_α
n567_statement_β:
                                                                                        jmp   n568_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_α:
                                                                                        jmp   n569_statement_α
n568_statement_β:
                                                                                        jmp   n569_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_α:
                                                                                        jmp   n570_statement_α
n569_statement_β:
                                                                                        jmp   n570_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_α:
                                                                                        jmp   n571_statement_α
n570_statement_β:
                                                                                        jmp   n571_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_α:
                                                                                        jmp   n572_statement_α
n571_statement_β:
                                                                                        jmp   n572_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_α:
                                                                                        jmp   n573_lit_string_α
n572_statement_β:
                                                                                        jmp   n573_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n574_lit_integer_α
n573_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n577_statement_α
.Lx924_0:
                        .quad            .Lx924_0_s
.Lx924_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n575_call_α
n574_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n577_statement_α
.Lx925_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:
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
.Lrkfnzd927:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd927]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx926_240
                        add              rsp, 16
                                                                                        jmp   n577_statement_α
.Lx926_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n576_statement_α
n575_call_β:
                        add              rsp, 16
                                                                                        jmp   n577_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_α:
                                                                                        jmp   n577_statement_α
n576_statement_β:
                                                                                        jmp   n577_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_α:
                                                                                        jmp   n578_lit_string_α
n577_statement_β:
                                                                                        jmp   n578_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n579_lit_integer_α
n578_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n584_lit_string_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n580_lit_string_α
n579_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n584_lit_string_α
.Lx933_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n581_call_α
n580_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n584_lit_string_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n581_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 48]                      # lit_string
                        mov              rdx, qword ptr [rsp + 56]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052288]                    # pad_left
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx936_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx936_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052328], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [r10 + 40]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx936_6]
                        lea              rdx, [rip + .Lx936_7]
                                                                                        jmp   rax
.Lx936_6:
                        mov              rdi, qword ptr [1879052288]                    # pad_left
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx936_2
.Lx936_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx936_2
.Lx936_5:
                        add              rsp, 64
.Lx936_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx936_240
                        add              rsp, 16
                                                                                        jmp   n584_lit_string_α
.Lx936_240:
                                                                                        jmp   n582_assign_α
n581_call_β:
                                                                                        jmp   n584_lit_string_α
.Lx936_0:
                        .quad            .Lx936_0_s
.Lx936_0_s:
                        .string          "pad_left"
#-----------------------------------------------------------------------------------------------------------------------
n582_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx937_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n583_statement_α
n582_assign_β:
                                                                                        jmp   n584_lit_string_α
.Lx937_0:
                        .quad            .Lx937_0_s
.Lx937_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_α:
                                                                                        jmp   n584_lit_string_α
n583_statement_β:
                                                                                        jmp   n584_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n585_lit_integer_α
n584_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n590_lit_string_α
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n586_lit_string_α
n585_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n590_lit_string_α
.Lx941_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n587_call_α
n586_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n590_lit_string_α
.Lx942_0:
                        .quad            .Lx942_0_s
.Lx942_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 48]                      # lit_string
                        mov              rdx, qword ptr [rsp + 56]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052352]                    # pad_right
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx944_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx944_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052328], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [r10 + 40]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx944_6]
                        lea              rdx, [rip + .Lx944_7]
                                                                                        jmp   rax
.Lx944_6:
                        mov              rdi, qword ptr [1879052352]                    # pad_right
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx944_2
.Lx944_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx944_2
.Lx944_5:
                        add              rsp, 64
.Lx944_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx944_240
                        add              rsp, 16
                                                                                        jmp   n590_lit_string_α
.Lx944_240:
                                                                                        jmp   n588_assign_α
n587_call_β:
                                                                                        jmp   n590_lit_string_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "pad_right"
#-----------------------------------------------------------------------------------------------------------------------
n588_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx945_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n589_statement_α
n588_assign_β:
                                                                                        jmp   n590_lit_string_α
.Lx945_0:
                        .quad            .Lx945_0_s
.Lx945_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_α:
                                                                                        jmp   n590_lit_string_α
n589_statement_β:
                                                                                        jmp   n590_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n591_call_α
n590_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n594_lit_string_α
.Lx948_0:
                        .quad            .Lx948_0_s
.Lx948_0_s:
                        .string          "   hello"
#-----------------------------------------------------------------------------------------------------------------------
n591_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052368]                    # ltrim
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx950_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx950_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx950_6]
                        lea              rdx, [rip + .Lx950_7]
                                                                                        jmp   rax
.Lx950_6:
                        mov              rdi, qword ptr [1879052368]                    # ltrim
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx950_2
.Lx950_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx950_2
.Lx950_5:
                        add              rsp, 64
.Lx950_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx950_240
                        add              rsp, 16
                                                                                        jmp   n594_lit_string_α
.Lx950_240:
                                                                                        jmp   n592_assign_α
n591_call_β:
                                                                                        jmp   n594_lit_string_α
.Lx950_0:
                        .quad            .Lx950_0_s
.Lx950_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n592_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx951_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n593_statement_α
n592_assign_β:
                                                                                        jmp   n594_lit_string_α
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_α:
                                                                                        jmp   n594_lit_string_α
n593_statement_β:
                                                                                        jmp   n594_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n595_call_α
n594_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n598_lit_string_α
.Lx954_0:
                        .quad            .Lx954_0_s
.Lx954_0_s:
                        .string          "hello   "
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 80
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052416]                    # rtrim
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rip + .Lx956_0]                # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx956_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx956_6]
                        lea              rdx, [rip + .Lx956_7]
                                                                                        jmp   rax
.Lx956_6:
                        mov              rdi, qword ptr [1879052416]                    # rtrim
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx956_2
.Lx956_7:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx956_2
.Lx956_5:
                        add              rsp, 80
.Lx956_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx956_240
                        add              rsp, 16
                                                                                        jmp   n598_lit_string_α
.Lx956_240:
                                                                                        jmp   n596_assign_α
n595_call_β:
                                                                                        jmp   n598_lit_string_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx957_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n597_statement_α
n596_assign_β:
                                                                                        jmp   n598_lit_string_α
.Lx957_0:
                        .quad            .Lx957_0_s
.Lx957_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_α:
                                                                                        jmp   n598_lit_string_α
n597_statement_β:
                                                                                        jmp   n598_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n599_call_α
n598_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n602_lit_string_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "  hello  "
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052464]                    # trimws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052472]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx962_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx962_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx962_6]
                        lea              rdx, [rip + .Lx962_7]
                                                                                        jmp   rax
.Lx962_6:
                        mov              rdi, qword ptr [1879052464]                    # trimws
                        mov              rsi, qword ptr [1879052472]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052472], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx962_2
.Lx962_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052472], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx962_2
.Lx962_5:
                        add              rsp, 32
.Lx962_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx962_240
                        add              rsp, 16
                                                                                        jmp   n602_lit_string_α
.Lx962_240:
                                                                                        jmp   n600_assign_α
n599_call_β:
                                                                                        jmp   n602_lit_string_α
.Lx962_0:
                        .quad            .Lx962_0_s
.Lx962_0_s:
                        .string          "trimws"
#-----------------------------------------------------------------------------------------------------------------------
n600_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx963_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n601_statement_α
n600_assign_β:
                                                                                        jmp   n602_lit_string_α
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_α:
                                                                                        jmp   n602_lit_string_α
n601_statement_β:
                                                                                        jmp   n602_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n603_lit_integer_α
n602_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n607_statement_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n604_call_α
n603_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n607_statement_α
.Lx967_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052480]                    # repeat
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx969_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx969_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx969_6]
                        lea              rdx, [rip + .Lx969_7]
                                                                                        jmp   rax
.Lx969_6:
                        mov              rdi, qword ptr [1879052480]                    # repeat
                        mov              rsi, qword ptr [1879052488]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx969_2
.Lx969_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # n
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx969_2
.Lx969_5:
                        add              rsp, 48
.Lx969_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx969_240
                        add              rsp, 16
                                                                                        jmp   n607_statement_α
.Lx969_240:
                                                                                        jmp   n605_assign_α
n604_call_β:
                                                                                        jmp   n607_statement_α
.Lx969_0:
                        .quad            .Lx969_0_s
.Lx969_0_s:
                        .string          "repeat"
#-----------------------------------------------------------------------------------------------------------------------
n605_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx970_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n606_statement_α
n605_assign_β:
                                                                                        jmp   n607_statement_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_α:
                                                                                        jmp   n607_statement_α
n606_statement_β:
                                                                                        jmp   n607_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_α:
                                                                                        jmp   n608_lit_string_α
n607_statement_β:
                                                                                        jmp   n608_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n609_lit_string_α
n608_lit_string_β:
                        add              rsp, 16
                        add              rsp, 320
                                                                                        jmp   n615_lit_string_α
.Lx975_0:
                        .quad            .Lx975_0_s
.Lx975_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n610_call_α
n609_lit_string_β:
                        add              rsp, 16
                        add              rsp, 336
                                                                                        jmp   n615_lit_string_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n610_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052496]                    # contains
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx978_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx978_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx978_6]
                        lea              rdx, [rip + .Lx978_7]
                                                                                        jmp   rax
.Lx978_6:
                        mov              rdi, qword ptr [1879052496]                    # contains
                        mov              rsi, qword ptr [1879052504]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052504], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx978_2
.Lx978_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052496], rax                    # contains
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052504], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx978_2
.Lx978_5:
                        add              rsp, 48
.Lx978_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx978_240
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n615_lit_string_α
.Lx978_240:
                                                                                        jmp   n611_statement_α
n610_call_β:
                                                                                        jmp   n615_lit_string_α
.Lx978_0:
                        .quad            .Lx978_0_s
.Lx978_0_s:
                        .string          "contains"
#-----------------------------------------------------------------------------------------------------------------------
n611_statement_α:
                                                                                        jmp   n612_lit_string_α
n611_statement_β:
                        add              rsp, 368
                                                                                        jmp   n615_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n613_assign_α
n612_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n618_statement_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "contains ok"
#-----------------------------------------------------------------------------------------------------------------------
n613_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx982_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n614_statement_α
n613_assign_β:
                                                                                        jmp   n618_statement_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n614_statement_α:
                                                                                        jmp   n618_statement_α
n614_statement_β:
                                                                                        jmp   n618_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:
                        mov              qword ptr [rsp + 4160], 2                      # result
                        mov              dword ptr [rsp + 4164], 14
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rsp + 4168], rax
                                                                                        jmp   n616_assign_α
n615_lit_string_β:
                                                                                        jmp   n618_statement_α
.Lx985_0:
                        .quad            .Lx985_0_s
.Lx985_0_s:
                        .string          "FAIL: contains"
#-----------------------------------------------------------------------------------------------------------------------
n616_assign_α:
                        mov              rsi, qword ptr [rsp + 4160]                    # val
                        mov              rdx, qword ptr [rsp + 4168]                    # val
                        mov              rdi, qword ptr [rip + .Lx986_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n617_statement_α
n616_assign_β:
                                                                                        jmp   n618_statement_α
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n617_statement_α:
                                                                                        jmp   n618_statement_α
n617_statement_β:
                                                                                        jmp   n618_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n618_statement_α:
                                                                                        jmp   n619_lit_string_α
n618_statement_β:
                                                                                        jmp   n619_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n620_lit_string_α
n619_lit_string_β:
                        add              rsp, 16
                        add              rsp, 384
                                                                                        jmp   n626_lit_string_α
.Lx991_0:
                        .quad            .Lx991_0_s
.Lx991_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n621_call_α
n620_lit_string_β:
                        add              rsp, 16
                        add              rsp, 400
                                                                                        jmp   n626_lit_string_α
.Lx992_0:
                        .quad            .Lx992_0_s
.Lx992_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n621_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052528]                    # startswith
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx994_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx994_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx994_6]
                        lea              rdx, [rip + .Lx994_7]
                                                                                        jmp   rax
.Lx994_6:
                        mov              rdi, qword ptr [1879052528]                    # startswith
                        mov              rsi, qword ptr [1879052536]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx994_2
.Lx994_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052528], rax                    # startswith
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx994_2
.Lx994_5:
                        add              rsp, 48
.Lx994_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx994_240
                        add              rsp, 16
                        add              rsp, 416
                                                                                        jmp   n626_lit_string_α
.Lx994_240:
                                                                                        jmp   n622_statement_α
n621_call_β:
                                                                                        jmp   n626_lit_string_α
.Lx994_0:
                        .quad            .Lx994_0_s
.Lx994_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n622_statement_α:
                                                                                        jmp   n623_lit_string_α
n622_statement_β:
                        add              rsp, 432
                                                                                        jmp   n626_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n624_assign_α
n623_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n629_statement_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          "startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n624_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx998_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n625_statement_α
n624_assign_β:
                                                                                        jmp   n629_statement_α
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_α:
                                                                                        jmp   n629_statement_α
n625_statement_β:
                                                                                        jmp   n629_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rsp + 4288], 2                      # result
                        mov              dword ptr [rsp + 4292], 16
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 4296], rax
                                                                                        jmp   n627_assign_α
n626_lit_string_β:
                                                                                        jmp   n629_statement_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "FAIL: startswith"
#-----------------------------------------------------------------------------------------------------------------------
n627_assign_α:
                        mov              rsi, qword ptr [rsp + 4288]                    # val
                        mov              rdx, qword ptr [rsp + 4296]                    # val
                        mov              rdi, qword ptr [rip + .Lx1002_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n628_statement_α
n627_assign_β:
                                                                                        jmp   n629_statement_α
.Lx1002_0:
                        .quad            .Lx1002_0_s
.Lx1002_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_α:
                                                                                        jmp   n629_statement_α
n628_statement_β:
                                                                                        jmp   n629_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_α:
                                                                                        jmp   n630_lit_string_α
n629_statement_β:
                                                                                        jmp   n630_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n631_lit_string_α
n630_lit_string_β:
                        add              rsp, 16
                        add              rsp, 448
                                                                                        jmp   n637_lit_string_α
.Lx1007_0:
                        .quad            .Lx1007_0_s
.Lx1007_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n632_call_α
n631_lit_string_β:
                        add              rsp, 16
                        add              rsp, 464
                                                                                        jmp   n637_lit_string_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052544]                    # endswith
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052552]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx1010_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1010_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1010_6]
                        lea              rdx, [rip + .Lx1010_7]
                                                                                        jmp   rax
.Lx1010_6:
                        mov              rdi, qword ptr [1879052544]                    # endswith
                        mov              rsi, qword ptr [1879052552]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052544], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1010_2
.Lx1010_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052544], rax                    # endswith
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1010_2
.Lx1010_5:
                        add              rsp, 48
.Lx1010_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1010_240
                        add              rsp, 16
                        add              rsp, 480
                                                                                        jmp   n637_lit_string_α
.Lx1010_240:
                                                                                        jmp   n633_statement_α
n632_call_β:
                                                                                        jmp   n637_lit_string_α
.Lx1010_0:
                        .quad            .Lx1010_0_s
.Lx1010_0_s:
                        .string          "endswith"
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_α:
                                                                                        jmp   n634_lit_string_α
n633_statement_β:
                        add              rsp, 496
                                                                                        jmp   n637_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx1013_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n635_assign_α
n634_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n640_statement_α
.Lx1013_0:
                        .quad            .Lx1013_0_s
.Lx1013_0_s:
                        .string          "endswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1014_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n636_statement_α
n635_assign_β:
                                                                                        jmp   n640_statement_α
.Lx1014_0:
                        .quad            .Lx1014_0_s
.Lx1014_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_α:
                                                                                        jmp   n640_statement_α
n636_statement_β:
                                                                                        jmp   n640_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:
                        mov              qword ptr [rsp + 4416], 2                      # result
                        mov              dword ptr [rsp + 4420], 14
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 4424], rax
                                                                                        jmp   n638_assign_α
n637_lit_string_β:
                                                                                        jmp   n640_statement_α
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "FAIL: endswith"
#-----------------------------------------------------------------------------------------------------------------------
n638_assign_α:
                        mov              rsi, qword ptr [rsp + 4416]                    # val
                        mov              rdx, qword ptr [rsp + 4424]                    # val
                        mov              rdi, qword ptr [rip + .Lx1018_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n639_statement_α
n638_assign_β:
                                                                                        jmp   n640_statement_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n639_statement_α:
                                                                                        jmp   n640_statement_α
n639_statement_β:
                                                                                        jmp   n640_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_α:
                                                                                        jmp   n641_lit_string_α
n640_statement_β:
                                                                                        jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n642_lit_string_α
n641_lit_string_β:
                        add              rsp, 16
                        add              rsp, 512
                                                                                        jmp   n648_lit_string_α
.Lx1023_0:
                        .quad            .Lx1023_0_s
.Lx1023_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n643_call_α
n642_lit_string_β:
                        add              rsp, 16
                        add              rsp, 528
                                                                                        jmp   n648_lit_string_α
.Lx1024_0:
                        .quad            .Lx1024_0_s
.Lx1024_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052528]                    # startswith
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx1026_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1026_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1026_6]
                        lea              rdx, [rip + .Lx1026_7]
                                                                                        jmp   rax
.Lx1026_6:
                        mov              rdi, qword ptr [1879052528]                    # startswith
                        mov              rsi, qword ptr [1879052536]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1026_2
.Lx1026_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052528], rax                    # startswith
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1026_2
.Lx1026_5:
                        add              rsp, 48
.Lx1026_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1026_240
                        add              rsp, 16
                        add              rsp, 544
                                                                                        jmp   n648_lit_string_α
.Lx1026_240:
                                                                                        jmp   n644_statement_α
n643_call_β:
                                                                                        jmp   n648_lit_string_α
.Lx1026_0:
                        .quad            .Lx1026_0_s
.Lx1026_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_α:
                                                                                        jmp   n645_lit_string_α
n644_statement_β:
                        add              rsp, 560
                                                                                        jmp   n648_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n646_assign_α
n645_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n651_statement_α
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          "FAIL: startswith matched wrong"
#-----------------------------------------------------------------------------------------------------------------------
n646_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1030_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n647_statement_α
n646_assign_β:
                                                                                        jmp   n651_statement_α
.Lx1030_0:
                        .quad            .Lx1030_0_s
.Lx1030_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_α:
                                                                                        jmp   n651_statement_α
n647_statement_β:
                                                                                        jmp   n651_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:
                        mov              qword ptr [rsp + 4528], 2                      # result
                        mov              dword ptr [rsp + 4532], 16
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n649_assign_α
n648_lit_string_β:
                                                                                        jmp   n651_statement_α
.Lx1033_0:
                        .quad            .Lx1033_0_s
.Lx1033_0_s:
                        .string          "no startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n649_assign_α:
                        mov              rsi, qword ptr [rsp + 4528]                    # val
                        mov              rdx, qword ptr [rsp + 4536]                    # val
                        mov              rdi, qword ptr [rip + .Lx1034_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n650_statement_α
n649_assign_β:
                                                                                        jmp   n651_statement_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n650_statement_α:
                                                                                        jmp   n651_statement_α
n650_statement_β:
                                                                                        jmp   n651_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n651_statement_α:
                                                                                        jmp   n652_lit_string_α
n651_statement_β:
                                                                                        jmp   n652_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n653_lit_string_α
n652_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
.Lx1039_0:
                        .quad            .Lx1039_0_s
.Lx1039_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1040_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n654_call_α
n653_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
.Lx1040_0:
                        .quad            .Lx1040_0_s
.Lx1040_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052584]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052560]                    # index
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052568]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx1042_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1042_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1042_6]
                        lea              rdx, [rip + .Lx1042_7]
                                                                                        jmp   rax
.Lx1042_6:
                        mov              rdi, qword ptr [1879052560]                    # index
                        mov              rsi, qword ptr [1879052568]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1042_2
.Lx1042_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1042_2
.Lx1042_5:
                        add              rsp, 64
.Lx1042_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1042_240
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
.Lx1042_240:
                                                                                        jmp   n655_assign_α
n654_call_β:
                                                                                        jmp   n657_lit_string_α
.Lx1042_0:
                        .quad            .Lx1042_0_s
.Lx1042_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n655_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1043_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n656_statement_α
n655_assign_β:
                                                                                        jmp   n657_lit_string_α
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n656_statement_α:
                                                                                        jmp   n657_lit_string_α
n656_statement_β:
                                                                                        jmp   n657_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1046_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n658_lit_string_α
n657_lit_string_β:
                        add              rsp, 16
                        add              rsp, 624
                                                                                        jmp   main_γ
.Lx1046_0:
                        .quad            .Lx1046_0_s
.Lx1046_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n658_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1047_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n659_call_α
n658_lit_string_β:
                        add              rsp, 16
                        add              rsp, 640
                                                                                        jmp   main_γ
.Lx1047_0:
                        .quad            .Lx1047_0_s
.Lx1047_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n659_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052584]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052560]                    # index
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052568]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx1049_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1049_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052520], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1049_6]
                        lea              rdx, [rip + .Lx1049_7]
                                                                                        jmp   rax
.Lx1049_6:
                        mov              rdi, qword ptr [1879052560]                    # index
                        mov              rsi, qword ptr [1879052568]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1049_2
.Lx1049_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052584], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax                    # t
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1049_2
.Lx1049_5:
                        add              rsp, 64
.Lx1049_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1049_240
                        add              rsp, 16
                        add              rsp, 656
                                                                                        jmp   main_γ
.Lx1049_240:
                                                                                        jmp   n660_assign_α
n659_call_β:
                                                                                        jmp   main_γ
.Lx1049_0:
                        .quad            .Lx1049_0_s
.Lx1049_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n660_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1050_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n661_statement_α
n660_assign_β:
                        add              rsp, 672
                                                                                        jmp   main_γ
.Lx1050_0:
                        .quad            .Lx1050_0_s
.Lx1050_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n661_statement_α:
                        add              rsp, 672
                                                                                        jmp   main_γ
n661_statement_β:
                        add              rsp, 672
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n662_goto_α:
                                                                                        jmp   n663_var_α
n662_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n664_call_α
n663_var_β:
                                                                                        jmp   n669_var_α
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1056:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1056]                        # fn
                        lea              rsi, [rsp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n669_var_α
                                                                                        jmp   n665_lit_string_α
n664_call_β:
                                                                                        jmp   n669_var_α
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:
                        mov              qword ptr [rsp + 128], 2                       # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n666_binop_α
n665_lit_string_β:
                                                                                        jmp   n669_var_α
.Lx1057_0:
                        .quad            .Lx1057_0_s
.Lx1057_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n666_binop_α:
                        mov              rdi, qword ptr [rsp + 64]                      # a
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n667_assign_α
n666_binop_β:
                                                                                        jmp   n669_var_α
#-----------------------------------------------------------------------------------------------------------------------
n667_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n668_statement_α
n667_assign_β:
                                                                                        jmp   n669_var_α
#-----------------------------------------------------------------------------------------------------------------------
n668_statement_α:
                                                                                        jmp   n669_var_α
n668_statement_β:
                                                                                        jmp   n669_var_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n670_call_α
n669_var_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn1064:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1064]                        # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n679_var_α
                                                                                        jmp   n671_var_α
n670_call_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n671_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n672_coerce_numeric_α
n671_var_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n672_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx1067_1
                        cmp              eax, 3
                                                                                        jne   .Lx1067_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx1067_0
.Lx1067_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n673_coerce_numeric_α
.Lx1067_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n673_coerce_numeric_α
n672_coerce_numeric_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n673_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx1069_1
                        cmp              eax, 3
                                                                                        jne   .Lx1069_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx1069_0
.Lx1069_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n674_cmp_test_α
.Lx1069_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n674_cmp_test_α
n673_coerce_numeric_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n674_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    n679_var_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n675_var_α
n674_cmp_test_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 288], rax                     # result
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n676_binop_α
n675_var_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n676_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 288]                     # b
                        mov              rcx, qword ptr [rsp + 296]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n677_assign_α
n676_binop_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n677_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n678_statement_α
n677_assign_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n678_statement_α:
                                                                                        jmp   n689_save_restore_α
n678_statement_β:
                                                                                        jmp   n679_var_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n680_var_α
n679_var_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n681_var_α
n680_var_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n681_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n682_call_α
n681_var_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1081:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1081]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1080_240
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
.Lx1080_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n683_binop_α
n682_call_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n683_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1082_240
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
.Lx1082_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n684_call_α
n683_binop_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd1084:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1084]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1083_240
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
.Lx1083_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n685_var_α
n684_call_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n686_binop_α
n685_var_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n686_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n687_assign_α
n686_binop_β:
                        add              rsp, 16
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n687_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n688_statement_α
n687_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_α:
                                                                                        jmp   n689_save_restore_α
n688_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n689_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n690_goto_α:
                                                                                        jmp   n553_statement_α
n690_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n691_goto_α:
                                                                                        jmp   n692_var_α
n691_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n692_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 576], rax                     # result
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n693_call_α
n692_var_β:
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n693_call_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn1096:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1096]                        # fn
                        lea              rsi, [rsp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n698_var_α
                                                                                        jmp   n694_lit_string_α
n693_call_β:
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n695_binop_α
n694_lit_string_β:
                                                                                        jmp   n698_var_α
.Lx1097_0:
                        .quad            .Lx1097_0_s
.Lx1097_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n695_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 592]                     # b
                        mov              rcx, qword ptr [rsp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n696_assign_α
n695_binop_β:
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n696_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n697_statement_α
n696_assign_β:
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_α:
                                                                                        jmp   n698_var_α
n697_statement_β:
                                                                                        jmp   n698_var_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n699_call_α
n698_var_β:
                        add              rsp, 16
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n699_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1104:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1104]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1103_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n708_var_α
.Lx1103_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n700_var_α
n699_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n701_coerce_numeric_α
n700_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n701_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1107_1
                        cmp              eax, 3
                                                                                        jne   .Lx1107_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx1107_0
.Lx1107_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n702_coerce_numeric_α
.Lx1107_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n702_coerce_numeric_α
n701_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n702_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx1109_1
                        cmp              eax, 3
                                                                                        jne   .Lx1109_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1109_0
.Lx1109_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n703_cmp_test_α
.Lx1109_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n703_cmp_test_α
n702_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n703_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx1111_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n708_var_α
.Lx1111_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n704_var_α
n703_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n705_binop_α
n704_var_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n705_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n706_assign_α
n705_binop_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n706_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n707_statement_α
n706_assign_β:
                        add              rsp, 128
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_statement_α:
                        add              rsp, 128
                                                                                        jmp   n689_save_restore_α
n707_statement_β:
                        add              rsp, 128
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n708_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n709_var_α
n708_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n710_var_α
n709_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n711_var_α
n710_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n712_call_α
n711_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n712_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1122:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]                        # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n713_binop_α
n712_call_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n713_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx1123_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx1123_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n714_call_α
.Lx1123_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n714_call_α
n713_binop_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn1125:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1125]                        # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n715_binop_α
n714_call_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n715_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n716_assign_α
n715_binop_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n716_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n717_statement_α
n716_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n717_statement_α:
                                                                                        jmp   n689_save_restore_α
n717_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n718_goto_α:
                                                                                        jmp   n555_statement_α
n718_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n719_goto_α:
                                                                                        jmp   n720_lit_string_α
n719_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rsp + 1024], 2                      # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n721_lit_integer_α
n720_lit_string_β:
                                                                                        jmp   n732_var_α
.Lx1132_0:
                        .quad            .Lx1132_0_s
.Lx1132_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:
                        mov              qword ptr [rsp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1133_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n722_call_α
n721_lit_integer_β:
                                                                                        jmp   n732_var_α
.Lx1133_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n722_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lbynamefn56:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn56]                      # fn
                        lea              rsi, [rsp + 1056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n732_var_α
                                                                                        jmp   n723_binop_α
n722_call_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n723_binop_α:
                        mov              rdi, qword ptr [rsp + 1024]                    # a
                        mov              rsi, qword ptr [rsp + 1032]                    # a
                        mov              rdx, qword ptr [rsp + 1040]                    # b
                        mov              rcx, qword ptr [rsp + 1048]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n724_lit_integer_α
n723_binop_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1136_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n725_call_α
n724_lit_integer_β:
                                                                                        jmp   n732_var_α
.Lx1136_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n725_call_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lbynamefn59:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn59]                      # fn
                        lea              rsi, [rsp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n732_var_α
                                                                                        jmp   n726_binop_α
n725_call_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n726_binop_α:
                        mov              rdi, qword ptr [rsp + 1008]                    # a
                        mov              rsi, qword ptr [rsp + 1016]                    # a
                        mov              rdx, qword ptr [rsp + 1104]                    # b
                        mov              rcx, qword ptr [rsp + 1112]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n727_lit_integer_α
n726_binop_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1139_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n728_call_α
n727_lit_integer_β:
                                                                                        jmp   n732_var_α
.Lx1139_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n728_call_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lbynamefn62:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn62]                      # fn
                        lea              rsi, [rsp + 1184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n732_var_α
                                                                                        jmp   n729_binop_α
n728_call_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n729_binop_α:
                        mov              rdi, qword ptr [rsp + 992]                     # a
                        mov              rsi, qword ptr [rsp + 1000]                    # a
                        mov              rdx, qword ptr [rsp + 1168]                    # b
                        mov              rcx, qword ptr [rsp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n730_assign_α
n729_binop_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n731_statement_α
n730_assign_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n731_statement_α:
                                                                                        jmp   n732_var_α
n731_statement_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n732_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1520], rax                    # result
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n733_var_α
n732_var_β:
                                                                                        jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1504], rax                    # result
                        mov              qword ptr [rsp + 1512], rdx
                                                                                        jmp   n734_coerce_string_α
n733_var_β:
                                                                                        jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_coerce_string_α:
                        lea              rdi, [rsp + 1504]                              # in
                        lea              rsi, [rsp + 1488]                              # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n735_match_begin_α
n734_coerce_string_β:
                                                                                        jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n735_match_begin_α:
                        mov              qword ptr [rsp + 1288], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1296], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1304], r14                    # outer_δ
                        mov              qword ptr [rbp + 1312], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1320], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 1520]                    # lo
                        mov              rsi, qword ptr [rsp + 1528]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1150_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n736_match_sequence_α
n735_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1150_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1150_1
                                                                                        jmp   .Lx1150_0
.Lx1150_1:
                        mov              r10, qword ptr [1879048192]
.Lx1150_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1150_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1296]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1304]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1312]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1320]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n736_match_sequence_α:
                                                                                        jmp   n747_lit_integer_α
n736_match_sequence_as:
                                                                                        jmp   n737_match_end_α
n736_match_sequence_β:
                                                                                        jmp   n743_match_assign_cond_β
n736_match_sequence_af:
                                                                                        jmp   n735_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n737_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1154_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1154_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 32]
                        mov              dword ptr [rsp + 1312], eax
                        mov              qword ptr [rsp + 1336], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1154_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1154_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1154_1:
                        test             rax, rax
                                                                                        je    .Lx1154_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1154_3]
                        lea              rdx, [rip + .Lx1154_4]
                                                                                        jmp   rax
.Lx1154_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1154_1
.Lx1154_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1154_1
.Lx1154_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1154_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1154_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1296]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1304]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1312]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1320]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rsp + 1344], 2                      # result
                        mov              dword ptr [rsp + 1348], 0
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n739_match_replace_α
n738_lit_string_β:
                                                                                        jmp   n749_var_α
.Lx1155_0:
                        .quad            .Lx1155_0_s
.Lx1155_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n739_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx1157_0]               # name
                        mov              rsi, qword ptr [rbp + 1520]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1528]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1248]                    # start
                        mov              r8, qword ptr [rbp + 1272]                     # end
                        lea              r9, [rbp + 1344]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx1157_1
.Lx1157_0:
                        .quad            .Lx1157_0_s
.Lx1157_0_s:
                        .string          "s"
.Lx1157_1:
                                                                                        jmp   n740_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n740_statement_α:
                                                                                        jmp   n749_var_α
n740_statement_β:
                                                                                        jmp   n749_var_α
#-----------------------------------------------------------------------------------------------------------------------
n741_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n742_match_rem_α
n741_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n744_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n742_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n743_match_assign_cond_α
n742_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n744_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n743_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n737_match_end_α
n743_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n742_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n744_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx1166_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n746_match_span_α
.Lx1166_21:
                        lea              rax, [rip + .Lx1166_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n745_match_lit_α
n744_match_alternate_s0:
                        lea              rax, [rip + .Lx1166_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n744_match_alternate_as
n744_match_alternate_s1:
                        lea              rax, [rip + .Lx1166_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n744_match_alternate_as
.Lx1166_40:
                                                                                        jmp   n746_match_span_β
.Lx1166_41:
                                                                                        jmp   n745_match_lit_β
n744_match_alternate_as:
                                                                                        jmp   n741_match_assign_save_α
n744_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n744_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx1166_19:
                                                                                        jmp   n748_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n745_match_lit_α:
                                                                                        jmp   n744_match_alternate_s1
n745_match_lit_β:
                                                                                        jmp   n744_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n746_match_span_α:
                        mov              dword ptr [rbp + 1424], 0
                        mov              r8, qword ptr [rbp + 1496]
                        mov              r9d, dword ptr [rbp + 1492]
.Lx1170_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jge   .Lx1170_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1170_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1170_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1170_3
                        add              edx, 1
                                                                                        jmp   .Lx1170_2
.Lx1170_3:
                        add              dword ptr [rbp + 1424], 1
                                                                                        jmp   .Lx1170_0
.Lx1170_1:
                        mov              eax, dword ptr [rbp + 1424]
                        test             eax, eax
                                                                                        jle   n744_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1428], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n744_match_alternate_s0
n746_match_span_β:
                        mov              r14d, dword ptr [rbp + 1428]
                                                                                        jmp   n744_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1171_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n748_match_pos_α
n747_lit_integer_β:
                                                                                        jmp   n735_match_begin_β
.Lx1171_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n748_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n735_match_begin_β
                                                                                        jmp   n744_match_alternate_α
n748_match_pos_β:
                                                                                        jmp   n735_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n749_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1536], rax                    # result
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n750_assign_α
n749_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n751_statement_α
n750_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n751_statement_α:
                                                                                        jmp   n689_save_restore_α
n751_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n752_goto_α:
                                                                                        jmp   n557_statement_α
n752_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n753_goto_α:
                                                                                        jmp   n754_lit_string_α
n753_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rsp + 1600], 2                      # result
                        mov              dword ptr [rsp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n755_lit_integer_α
n754_lit_string_β:
                                                                                        jmp   n766_var_α
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:
                        mov              qword ptr [rsp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   n756_call_α
n755_lit_integer_β:
                                                                                        jmp   n766_var_α
.Lx1180_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n756_call_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lbynamefn88:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn88]                      # fn
                        lea              rsi, [rsp + 1632]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n757_binop_α
n756_call_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n757_binop_α:
                        mov              rdi, qword ptr [rsp + 1600]                    # a
                        mov              rsi, qword ptr [rsp + 1608]                    # a
                        mov              rdx, qword ptr [rsp + 1616]                    # b
                        mov              rcx, qword ptr [rsp + 1624]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                                                                                        jmp   n758_lit_integer_α
n757_binop_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1183_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n759_call_α
n758_lit_integer_β:
                                                                                        jmp   n766_var_α
.Lx1183_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n759_call_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lbynamefn91:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn91]                      # fn
                        lea              rsi, [rsp + 1696]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n760_binop_α
n759_call_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n760_binop_α:
                        mov              rdi, qword ptr [rsp + 1584]                    # a
                        mov              rsi, qword ptr [rsp + 1592]                    # a
                        mov              rdx, qword ptr [rsp + 1680]                    # b
                        mov              rcx, qword ptr [rsp + 1688]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n761_lit_integer_α
n760_binop_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:
                        mov              qword ptr [rsp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1186_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n762_call_α
n761_lit_integer_β:
                                                                                        jmp   n766_var_α
.Lx1186_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n762_call_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lbynamefn94:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn94]                      # fn
                        lea              rsi, [rsp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n763_binop_α
n762_call_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n763_binop_α:
                        mov              rdi, qword ptr [rsp + 1568]                    # a
                        mov              rsi, qword ptr [rsp + 1576]                    # a
                        mov              rdx, qword ptr [rsp + 1744]                    # b
                        mov              rcx, qword ptr [rsp + 1752]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n764_assign_α
n763_binop_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n764_assign_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n765_statement_α
n764_assign_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n765_statement_α:
                                                                                        jmp   n766_var_α
n765_statement_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1856], rax                    # result
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n767_call_α
n766_var_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n767_call_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn1194:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1194]                        # fn
                        lea              rsi, [rsp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n770_var_α
                                                                                        jmp   n768_assign_α
n767_call_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n768_assign_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n769_statement_α
n768_assign_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n769_statement_α:
                                                                                        jmp   n770_var_α
n769_statement_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1920], rax                    # result
                        mov              qword ptr [rsp + 1928], rdx
                                                                                        jmp   n771_lit_integer_α
n770_var_β:
                                                                                        jmp   n776_var_α
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_integer_α:
                        mov              qword ptr [rsp + 1904], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1199_0]
                        mov              qword ptr [rsp + 1912], rax
                                                                                        jmp   n772_coerce_numeric_α
n771_lit_integer_β:
                                                                                        jmp   n776_var_α
.Lx1199_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n772_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 5
                                                                                        je    .Lx1201_1
                        cmp              eax, 3
                                                                                        jne   .Lx1201_0
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 3
                                                                                        jne   .Lx1201_0
.Lx1201_1:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n773_coerce_numeric_α
.Lx1201_0:
                        lea              rdi, [rsp + 1920]                              # self
                        lea              rsi, [rsp + 1904]                              # other
                        lea              rdx, [rsp + 1888]                              # out
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n773_coerce_numeric_α
n772_coerce_numeric_β:
                                                                                        jmp   n776_var_α
#-----------------------------------------------------------------------------------------------------------------------
n773_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 5
                                                                                        je    .Lx1203_1
                        cmp              eax, 3
                                                                                        jne   .Lx1203_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx1203_0
.Lx1203_1:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n774_cmp_test_α
.Lx1203_0:
                        lea              rdi, [rsp + 1904]                              # self
                        lea              rsi, [rsp + 1920]                              # other
                        lea              rdx, [rsp + 1872]                              # out
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n774_cmp_test_α
n773_coerce_numeric_β:
                                                                                        jmp   n776_var_α
#-----------------------------------------------------------------------------------------------------------------------
n774_cmp_test_α:
                        lea              rdi, [rsp + 1888]                              # a
                        lea              rsi, [rsp + 1872]                              # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    n776_var_α
                                                                                        jmp   n775_statement_α
n774_cmp_test_β:
                                                                                        jmp   n776_var_α
#-----------------------------------------------------------------------------------------------------------------------
n775_statement_α:
                                                                                        jmp   n794_var_α
n775_statement_β:
                                                                                        jmp   n776_var_α
#-----------------------------------------------------------------------------------------------------------------------
n776_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n777_var_α
n776_var_β:
                                                                                        jmp   n782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n777_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n778_lit_integer_α
n777_var_β:
                                                                                        jmp   n782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1210_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n779_call_α
n778_lit_integer_β:
                                                                                        jmp   n782_var_α
.Lx1210_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n779_call_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn1212:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1212]                        # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n782_var_α
                                                                                        jmp   n780_assign_α
n779_call_β:
                                                                                        jmp   n782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n780_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n781_statement_α
n780_assign_β:
                                                                                        jmp   n782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n781_statement_α:
                                                                                        jmp   n782_var_α
n781_statement_β:
                                                                                        jmp   n782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n782_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n783_var_α
n782_var_β:
                                                                                        jmp   n794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n783_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n784_coerce_string_α
n783_var_β:
                                                                                        jmp   n794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n785_match_begin_α
n784_coerce_string_β:
                                                                                        jmp   n794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n785_match_begin_α:
                        mov              qword ptr [rsp + 2120], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2128], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2136], r14                    # outer_δ
                        mov              qword ptr [rbp + 2144], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2152], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 2192]                    # lo
                        mov              rsi, qword ptr [rsp + 2200]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1221_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n786_match_any_α
n785_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1221_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1221_1
                                                                                        jmp   .Lx1221_0
.Lx1221_1:
                        mov              r10, qword ptr [1879048192]
.Lx1221_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1221_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n786_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n785_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              r9d, dword ptr [rbp + 2164]
                        mov              edx, 0
.Lx1223_5:
                        cmp              edx, r9d
                                                                                        jge   n785_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1223_6
                        add              edx, 1
                                                                                        jmp   .Lx1223_5
.Lx1223_6:
                        add              r14d, 1
                                                                                        jmp   n787_match_end_α
n786_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n785_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n787_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1225_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1225_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1225_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1225_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1225_1:
                        test             rax, rax
                                                                                        je    .Lx1225_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1225_3]
                        lea              rdx, [rip + .Lx1225_4]
                                                                                        jmp   rax
.Lx1225_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1225_1
.Lx1225_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1225_1
.Lx1225_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1225_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1225_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n788_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n788_statement_α:
                                                                                        jmp   n789_var_α
n788_statement_β:
                                                                                        jmp   n794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n790_lit_integer_α
n789_var_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n791_binop_α
n790_lit_integer_β:
                                                                                        jmp   n770_var_α
.Lx1229_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n791_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx1230_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n792_assign_α
.Lx1230_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1230_240
                        add              rsp, 32
                                                                                        jmp   n770_var_α
.Lx1230_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n792_assign_α
n791_binop_β:
                        add              rsp, 32
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n792_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n793_statement_α
n792_assign_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_α:
                                                                                        jmp   n770_var_α
n793_statement_β:
                                                                                        jmp   n770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n794_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2336], rax                    # result
                        mov              qword ptr [rsp + 2344], rdx
                                                                                        jmp   n795_lit_integer_α
n794_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:
                        mov              qword ptr [rsp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rsp + 2360], rax
                                                                                        jmp   n796_var_α
n795_lit_integer_β:
                                                                                        jmp   n689_save_restore_α
.Lx1235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2368], rax                    # result
                        mov              qword ptr [rsp + 2376], rdx
                                                                                        jmp   n797_call_α
n796_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn1238:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1238]                        # fn
                        lea              rsi, [rsp + 2272]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n798_assign_α
n797_call_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n798_assign_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n799_statement_α
n798_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n799_statement_α:
                                                                                        jmp   n689_save_restore_α
n799_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n800_goto_α:
                                                                                        jmp   n770_var_α
n800_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n801_goto_α:
                                                                                        jmp   n794_var_α
n801_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n802_goto_α:
                                                                                        jmp   n559_statement_α
n802_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n803_goto_α:
                                                                                        jmp   n804_var_α
n803_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2480], rax                    # result
                        mov              qword ptr [rsp + 2488], rdx
                                                                                        jmp   n805_call_α
n804_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n805_call_α:
                        sub              rsp, 80
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052416]                    # rtrim
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rip + .Lx1248_0]               # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1248_5
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1248_6]
                        lea              rdx, [rip + .Lx1248_7]
                                                                                        jmp   rax
.Lx1248_6:
                        mov              rdi, qword ptr [1879052416]                    # rtrim
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1248_2
.Lx1248_7:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1248_2
.Lx1248_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1248_20
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1248_21
.Lx1248_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2480]                    # v
                        mov              rdx, qword ptr [rsp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx1248_21:
                        mov              rdi, qword ptr [rip + .Lx1248_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1248_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1248_3]
                        lea              rdx, [rip + .Lx1248_4]
                                                                                        jmp   rax
.Lx1248_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1248_2
.Lx1248_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1248_2
.Lx1248_1:
                        call             rt_faildescr@PLT
.Lx1248_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n806_call_α
n805_call_β:
                                                                                        jmp   n689_save_restore_α
.Lx1248_0:
                        .quad            .Lx1248_0_s
.Lx1248_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n806_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052368]                    # ltrim
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx1250_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1250_5
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1250_6]
                        lea              rdx, [rip + .Lx1250_7]
                                                                                        jmp   rax
.Lx1250_6:
                        mov              rdi, qword ptr [1879052368]                    # ltrim
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1250_2
.Lx1250_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1250_2
.Lx1250_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1250_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1250_21
.Lx1250_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2432]                    # v
                        mov              rdx, qword ptr [rsp + 2440]                    # v
                        call             rt_arg_stage@PLT
.Lx1250_21:
                        mov              rdi, qword ptr [rip + .Lx1250_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1250_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1250_3]
                        lea              rdx, [rip + .Lx1250_4]
                                                                                        jmp   rax
.Lx1250_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1250_2
.Lx1250_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1250_2
.Lx1250_1:
                        call             rt_faildescr@PLT
.Lx1250_2:
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n807_assign_α
n806_call_β:
                                                                                        jmp   n689_save_restore_α
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n807_assign_α:
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n808_statement_α
n807_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n808_statement_α:
                                                                                        jmp   n689_save_restore_α
n808_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n809_goto_α:
                                                                                        jmp   n561_statement_α
n809_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n810_goto_α:
                                                                                        jmp   n811_var_α
n810_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n811_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2560], rax                    # result
                        mov              qword ptr [rsp + 2568], rdx
                                                                                        jmp   n812_var_α
n811_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 2576], rax                    # result
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n813_call_α
n812_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n813_call_α:
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn1259:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1259]                        # fn
                        lea              rsi, [rsp + 2512]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n814_assign_α
n813_call_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n814_assign_α:
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n815_statement_α
n814_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n815_statement_α:
                                                                                        jmp   n689_save_restore_α
n815_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n816_goto_α:
                                                                                        jmp   n563_statement_α
n816_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n817_goto_α:
                                                                                        jmp   n818_var_α
n817_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n818_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2752], rax                    # result
                        mov              qword ptr [rsp + 2760], rdx
                                                                                        jmp   n819_var_α
n818_var_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n819_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 2736], rax                    # result
                        mov              qword ptr [rsp + 2744], rdx
                                                                                        jmp   n820_coerce_string_α
n819_var_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n820_coerce_string_α:
                        lea              rdi, [rsp + 2736]                              # in
                        lea              rsi, [rsp + 2720]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n821_match_begin_α
n820_coerce_string_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n821_match_begin_α:
                        mov              qword ptr [rsp + 2648], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2656], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2664], r14                    # outer_δ
                        mov              qword ptr [rbp + 2672], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2680], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 2752]                    # lo
                        mov              rsi, qword ptr [rsp + 2760]                    # hi
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
                        mov              qword ptr [rbp + 2624], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2616], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2608], 0                      # start_δ
.Lx1270_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n822_match_sequence_α
n821_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx1270_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1270_1
                                                                                        jmp   .Lx1270_0
.Lx1270_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx1270_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1270_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n822_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n826_match_break_α
n822_match_sequence_as:
                                                                                        jmp   n823_match_end_α
n822_match_sequence_β:
                                                                                        jmp   n825_match_patref_β
n822_match_sequence_af:
                                                                                        jmp   n821_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n823_match_end_α:
                        mov              rax, qword ptr [rbp + 2616]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1274_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1274_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1274_1:
                        test             rax, rax
                                                                                        je    .Lx1274_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1274_3]
                        lea              rdx, [rip + .Lx1274_4]
                                                                                        jmp   rax
.Lx1274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1274_1
.Lx1274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1274_1
.Lx1274_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1274_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1274_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n824_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n824_statement_α:
                                                                                        jmp   n689_save_restore_α
n824_statement_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n825_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1277_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1277_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1277_10
.Lx1277_9:
                        xor              eax, eax
.Lx1277_10:
                        test             rax, rax
                                                                                        jz    .Lx1277_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1277_4]
                        lea              rdx, [rip + .Lx1277_5]
                                                                                        jmp   rax
.Lx1277_4:
                                                                                        jmp   n823_match_end_α
.Lx1277_5:
                                                                                        jmp   n826_match_break_β
.Lx1277_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1277_2:
                        test             rax, rax
                                                                                        je    .Lx1277_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1277_7]
                        lea              rdx, [rip + .Lx1277_8]
                                                                                        jmp   rax
.Lx1277_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1277_2
.Lx1277_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1277_2
.Lx1277_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n826_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1277_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n823_match_end_α
.Lx1277_6:
                        add              rsp, 16
                                                                                        jmp   n826_match_break_β
n825_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n826_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx1279_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1279_240
                        add              rsp, 16
                                                                                        jmp   n821_match_begin_β
.Lx1279_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1279_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1279_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1279_1
                        add              edx, 1
                                                                                        jmp   .Lx1279_2
.Lx1279_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1279_0
.Lx1279_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n825_match_patref_α
n826_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n821_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n827_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n828_goto_α:
                                                                                        jmp   n565_statement_α
n828_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n829_goto_α:
                                                                                        jmp   n830_var_α
n829_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n831_match_begin_α
n830_var_β:
                        add              rsp, 16
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n831_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2824], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2832], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2840], r14                    # outer_δ
                        mov              qword ptr [rbp + 2848], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2856], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2800], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2792], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2784], 0                      # start_δ
.Lx1286_0:
                        mov              r14d, dword ptr [rbp + 2784]
                                                                                        jmp   n832_match_sequence_α
n831_match_begin_β:
                        add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, r15d
                                                                                        jg    .Lx1286_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1286_1
                                                                                        jmp   .Lx1286_0
.Lx1286_1:
                        mov              rax, qword ptr [rbp + 2792]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2800]
                        mov              r10, qword ptr [1879048192]
.Lx1286_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1286_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n832_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n836_lit_integer_α
n832_match_sequence_as:
                                                                                        jmp   n833_match_end_α
n832_match_sequence_β:
                                                                                        jmp   n835_match_patref_β
n832_match_sequence_af:
                                                                                        jmp   n831_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n833_match_end_α:
                        mov              rax, qword ptr [rbp + 2792]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2800]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1290_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1290_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1290_1:
                        test             rax, rax
                                                                                        je    .Lx1290_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1290_3]
                        lea              rdx, [rip + .Lx1290_4]
                                                                                        jmp   rax
.Lx1290_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1290_1
.Lx1290_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1290_1
.Lx1290_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1290_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1290_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n834_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n834_statement_α:
                                                                                        jmp   n689_save_restore_α
n834_statement_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n835_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1293_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1293_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1293_10
.Lx1293_9:
                        xor              eax, eax
.Lx1293_10:
                        test             rax, rax
                                                                                        jz    .Lx1293_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1293_4]
                        lea              rdx, [rip + .Lx1293_5]
                                                                                        jmp   rax
.Lx1293_4:
                                                                                        jmp   n833_match_end_α
.Lx1293_5:
                                                                                        jmp   n831_match_begin_β
.Lx1293_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1293_2:
                        test             rax, rax
                                                                                        je    .Lx1293_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1293_7]
                        lea              rdx, [rip + .Lx1293_8]
                                                                                        jmp   rax
.Lx1293_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1293_2
.Lx1293_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1293_2
.Lx1293_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n831_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1293_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n833_match_end_α
.Lx1293_6:
                        add              rsp, 16
                                                                                        jmp   n831_match_begin_β
n835_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_integer_α:
                        mov              qword ptr [rsp + 2880], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1294_0]
                        mov              qword ptr [rsp + 2888], rax
                                                                                        jmp   n837_match_pos_α
n836_lit_integer_β:
                                                                                        jmp   n831_match_begin_β
.Lx1294_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n837_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n831_match_begin_β
                                                                                        jmp   n835_match_patref_α
n837_match_pos_β:
                                                                                        jmp   n831_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n838_goto_α:
                                                                                        jmp   n567_statement_α
n838_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n839_goto_α:
                                                                                        jmp   n840_var_α
n839_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n841_match_begin_α
n840_var_β:
                        add              rsp, 16
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n841_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2984], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2992], r13                    # outer_Σ
                        mov              qword ptr [rbp + 3000], r14                    # outer_δ
                        mov              qword ptr [rbp + 3008], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 3016], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2960], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2952], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2944], 0                      # start_δ
.Lx1300_0:
                        mov              r14d, dword ptr [rbp + 2944]
                                                                                        jmp   n842_match_sequence_α
n841_match_begin_β:
                        add              dword ptr [rbp + 2944], 1
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, r15d
                                                                                        jg    .Lx1300_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1300_1
                                                                                        jmp   .Lx1300_0
.Lx1300_1:
                        mov              rax, qword ptr [rbp + 2952]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2960]
                        mov              r10, qword ptr [1879048192]
.Lx1300_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1300_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n842_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n847_match_patref_α
n842_match_sequence_as:
                                                                                        jmp   n843_match_end_α
n842_match_sequence_β:
                                                                                        jmp   n846_match_rpos_β
n842_match_sequence_af:
                                                                                        jmp   n841_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n843_match_end_α:
                        mov              rax, qword ptr [rbp + 2952]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2960]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1304_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1304_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1304_1:
                        test             rax, rax
                                                                                        je    .Lx1304_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1304_3]
                        lea              rdx, [rip + .Lx1304_4]
                                                                                        jmp   rax
.Lx1304_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1304_1
.Lx1304_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1304_1
.Lx1304_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1304_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1304_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n844_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n844_statement_α:
                                                                                        jmp   n689_save_restore_α
n844_statement_β:
                                                                                        jmp   n827_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n845_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1307_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n846_match_rpos_α
n845_lit_integer_β:
                                                                                        jmp   n847_match_patref_β
.Lx1307_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n846_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n847_match_patref_β
                                                                                        jmp   n843_match_end_α
n846_match_rpos_β:
                                                                                        jmp   n847_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n847_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1309_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1309_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1309_10
.Lx1309_9:
                        xor              eax, eax
.Lx1309_10:
                        test             rax, rax
                                                                                        jz    .Lx1309_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1309_4]
                        lea              rdx, [rip + .Lx1309_5]
                                                                                        jmp   rax
.Lx1309_4:
                                                                                        jmp   n845_lit_integer_α
.Lx1309_5:
                                                                                        jmp   n841_match_begin_β
.Lx1309_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1309_2:
                        test             rax, rax
                                                                                        je    .Lx1309_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1309_7]
                        lea              rdx, [rip + .Lx1309_8]
                                                                                        jmp   rax
.Lx1309_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1309_2
.Lx1309_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1309_2
.Lx1309_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n841_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1309_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n845_lit_integer_α
.Lx1309_6:
                        add              rsp, 16
                                                                                        jmp   n841_match_begin_β
n847_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n848_goto_α:
                                                                                        jmp   n569_statement_α
n848_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n849_goto_α:
                                                                                        jmp   n850_lit_integer_α
n849_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:
                        mov              qword ptr [rsp + 3088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1312_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n851_assign_α
n850_lit_integer_β:
                                                                                        jmp   n853_var_α
.Lx1312_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n852_statement_α
n851_assign_β:
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n852_statement_α:
                                                                                        jmp   n853_var_α
n852_statement_β:
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3104], rax                    # result
                        mov              qword ptr [rsp + 3112], rdx
                                                                                        jmp   n854_assign_α
n853_var_β:
                                                                                        jmp   n856_var_α
#-----------------------------------------------------------------------------------------------------------------------
n854_assign_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n855_statement_α
n854_assign_β:
                                                                                        jmp   n856_var_α
#-----------------------------------------------------------------------------------------------------------------------
n855_statement_α:
                                                                                        jmp   n856_var_α
n855_statement_β:
                                                                                        jmp   n856_var_α
#-----------------------------------------------------------------------------------------------------------------------
n856_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3296], rax                    # result
                        mov              qword ptr [rsp + 3304], rdx
                                                                                        jmp   n857_var_α
n856_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n857_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3280], rax                    # result
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n858_coerce_string_α
n857_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n858_coerce_string_α:
                        lea              rdi, [rsp + 3280]                              # in
                        lea              rsi, [rsp + 3264]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n859_match_begin_α
n858_coerce_string_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n859_match_begin_α:
                        mov              qword ptr [rsp + 3176], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 3184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 3192], r14                    # outer_δ
                        mov              qword ptr [rbp + 3200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 3208], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 3296]                    # lo
                        mov              rsi, qword ptr [rsp + 3304]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1325_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n860_match_assign_save_α
n859_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1325_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1325_1
                                                                                        jmp   .Lx1325_0
.Lx1325_1:
                        mov              r10, qword ptr [1879048192]
.Lx1325_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1325_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n860_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n861_match_break_α
n860_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n859_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n861_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx1329_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1329_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n859_match_begin_β
.Lx1329_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1329_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1329_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1329_1
                        add              edx, 1
                                                                                        jmp   .Lx1329_2
.Lx1329_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1329_0
.Lx1329_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n862_match_assign_cond_α
n861_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n859_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n862_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n863_match_end_α
n862_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n861_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n863_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1333_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1333_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1333_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1333_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1333_1:
                        test             rax, rax
                                                                                        je    .Lx1333_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1333_3]
                        lea              rdx, [rip + .Lx1333_4]
                                                                                        jmp   rax
.Lx1333_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1333_1
.Lx1333_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1333_1
.Lx1333_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1333_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1333_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n864_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n864_statement_α:
                                                                                        jmp   n865_var_α
n864_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n865_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3376], rax                    # result
                        mov              qword ptr [rsp + 3384], rdx
                                                                                        jmp   n866_call_α
n865_var_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n866_call_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn1338:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1338]                        # fn
                        lea              rsi, [rsp + 3344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                                                                                        jmp   n867_lit_integer_α
n866_call_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n867_lit_integer_α:
                        mov              qword ptr [rsp + 3392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1339_0]
                        mov              qword ptr [rsp + 3400], rax
                                                                                        jmp   n868_binop_α
n867_lit_integer_β:
                                                                                        jmp   n689_save_restore_α
.Lx1339_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n868_binop_α:
                        mov              eax, dword ptr [rsp + 3328]
                        cmp              eax, 3
                                                                                        jne   .Lx1340_0
                        mov              rax, qword ptr [rsp + 3336]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3312], 3
                        mov              qword ptr [rsp + 3320], rax
                                                                                        jmp   n869_assign_α
.Lx1340_0:
                        mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              rdx, qword ptr [rsp + 3392]
                        mov              rcx, qword ptr [rsp + 3400]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n689_save_restore_α
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                                                                                        jmp   n869_assign_α
n868_binop_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n869_assign_α:
                        mov              rax, qword ptr [rsp + 3312]
                        mov              rdx, qword ptr [rsp + 3320]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n870_statement_α
n869_assign_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n870_statement_α:
                                                                                        jmp   n689_save_restore_α
n870_statement_β:
                                                                                        jmp   n689_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n871_goto_α:
                                                                                        jmp   n571_statement_α
n871_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n872_goto_α:
                                                                                        jmp   n615_lit_string_α
n872_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n873_goto_α:
                                                                                        jmp   n618_statement_α
n873_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n874_goto_α:
                                                                                        jmp   n626_lit_string_α
n874_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n875_goto_α:
                                                                                        jmp   n629_statement_α
n875_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n876_goto_α:
                                                                                        jmp   n637_lit_string_α
n876_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n877_goto_α:
                                                                                        jmp   n640_statement_α
n877_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n878_goto_α:
                                                                                        jmp   n645_lit_string_α
n878_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n879_goto_α:
                                                                                        jmp   n651_statement_α
n879_goto_β:
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
.S0:                    .string          "r"
.S1:                    .string          "t"
.S2:                    .string          "ix"
                        .text
                        .section         .note.GNU-stack,"",@progbits
