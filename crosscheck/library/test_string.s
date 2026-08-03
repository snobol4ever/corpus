                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pad_left_α:
proc_LBL__pad_left_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_call_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd34:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd34]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx33_240
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_α
.Lx33_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_binop_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:
                                                                                        jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_call_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd44:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd44]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx43_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n18_statement_begin_α
.Lx43_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_var_α
n9_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx47_1
                        cmp              eax, 3
                                                                                        jne   .Lx47_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx47_0
.Lx47_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_coerce_numeric_α
.Lx47_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx49_1
                        cmp              eax, 3
                                                                                        jne   .Lx49_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx49_0
.Lx49_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n13_cmp_test_α
.Lx49_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx51_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n18_statement_begin_α
.Lx51_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                                                                                        jmp   n29_save_restore_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_call_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd63:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd63]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx62_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n29_save_restore_α
.Lx62_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_binop_α
n22_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx64_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n29_save_restore_α
.Lx64_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_call_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:
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
.Lrkfnzd66:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd66]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx65_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n29_save_restore_α
.Lx65_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_var_α
n24_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:
                        add              rsp, 128
                                                                                        jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
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
n74_statement_begin_α:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_call_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd108:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd108]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx107_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_statement_begin_α
.Lx107_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_lit_string_α
n76_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_binop_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n81_statement_begin_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_call_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd118:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd118]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx117_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
.Lx117_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_var_α
n83_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx121_1
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n86_coerce_numeric_α
.Lx121_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n86_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx123_1
                        cmp              eax, 3
                                                                                        jne   .Lx123_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx123_0
.Lx123_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n87_cmp_test_α
.Lx123_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n87_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n87_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx125_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n92_statement_begin_α
.Lx125_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n97_call_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn138:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]                         # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n103_save_restore_α
                                                                                        jmp   n98_binop_α
n97_call_β:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx139_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx139_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n99_call_α
.Lx139_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n103_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n99_call_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn141:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]                         # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n103_save_restore_α
                                                                                        jmp   n100_binop_α
n99_call_β:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n100_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:
                                                                                        jmp   n103_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n103_save_restore_α:
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
n148_statement_begin_α:
                                                                                        jmp   n149_lit_string_α
n148_statement_begin_β:
                                                                                        jmp   proc_LBL__ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_lit_integer_α
n149_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_call_α
n150_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx187_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd63:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd63]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx188_240
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx188_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_binop_α
n151_call_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n153_lit_integer_α
n152_binop_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_call_α
n153_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx190_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd66:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd66]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_binop_α
n154_call_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n156_lit_integer_α
n155_binop_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_call_α
n156_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx193_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd69:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd69]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx194_240
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
.Lx194_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_binop_α
n157_call_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n159_assign_α
n158_binop_β:
                        add              rsp, 16
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n160_statement_end_α
n159_assign_β:
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:
                                                                                        jmp   n161_statement_begin_α
n160_statement_end_β:
                                                                                        jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α:
                                                                                        jmp   n162_var_α
n161_statement_begin_β:
                        add              rsp, 160
                                                                                        jmp   proc_LBL__ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n163_var_α
n162_var_β:
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n164_coerce_string_α
n163_var_β:
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n165_match_begin_α
n164_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_match_begin_α:
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
.Lx206_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n166_match_sequence_α
n165_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx206_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx206_1
                                                                                        jmp   .Lx206_0
.Lx206_1:
                        mov              r10, qword ptr [1879048192]
.Lx206_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx206_2
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
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_match_sequence_α:
                                                                                        jmp   n177_lit_integer_α
n166_match_sequence_as:
                                                                                        jmp   n167_match_end_α
n166_match_sequence_β:
                                                                                        jmp   n173_match_assign_cond_β
n166_match_sequence_af:
                                                                                        jmp   n165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx210_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_9
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
.Lx210_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx210_1:
                        test             rax, rax
                                                                                        je    .Lx210_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx210_1
.Lx210_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx210_1
.Lx210_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx210_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1264]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1272]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1280]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1288]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_match_replace_α
n168_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n169_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx213_0]                # name
                        mov              rsi, qword ptr [rbp + 1488]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1496]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1216]                    # start
                        mov              r8, qword ptr [rbp + 1240]                     # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx213_1
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "s"
.Lx213_1:
                                                                                        jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:
                                                                                        jmp   n179_statement_begin_α
n170_statement_end_β:
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n172_match_rem_α
n171_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n174_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n172_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n173_match_assign_cond_α
n172_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n174_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n173_match_assign_cond_α:
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
                                                                                        jmp   n167_match_end_α
n173_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n172_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n174_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx222_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n176_match_span_α
.Lx222_21:
                        lea              rax, [rip + .Lx222_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n175_match_lit_α
n174_match_alternate_s0:
                        lea              rax, [rip + .Lx222_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n174_match_alternate_as
n174_match_alternate_s1:
                        lea              rax, [rip + .Lx222_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n174_match_alternate_as
.Lx222_40:
                                                                                        jmp   n176_match_span_β
.Lx222_41:
                                                                                        jmp   n175_match_lit_β
n174_match_alternate_as:
                                                                                        jmp   n171_match_assign_save_α
n174_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n174_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx222_19:
                                                                                        jmp   n178_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n175_match_lit_α:
                                                                                        jmp   n174_match_alternate_s1
n175_match_lit_β:
                                                                                        jmp   n174_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n176_match_span_α:
                        mov              dword ptr [rbp + 1392], 0
                        mov              r8, qword ptr [rbp + 1464]
                        mov              r9d, dword ptr [rbp + 1460]
.Lx226_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jge   .Lx226_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx226_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx226_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx226_3
                        add              edx, 1
                                                                                        jmp   .Lx226_2
.Lx226_3:
                        add              dword ptr [rbp + 1392], 1
                                                                                        jmp   .Lx226_0
.Lx226_1:
                        mov              eax, dword ptr [rbp + 1392]
                        test             eax, eax
                                                                                        jle   n174_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1396], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n174_match_alternate_s0
n176_match_span_β:
                        mov              r14d, dword ptr [rbp + 1396]
                                                                                        jmp   n174_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rsp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n178_match_pos_α
n177_lit_integer_β:
                                                                                        jmp   n165_match_begin_β
.Lx227_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n178_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n165_match_begin_β
                                                                                        jmp   n174_match_alternate_α
n178_match_pos_β:
                                                                                        jmp   n165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α:
                                                                                        jmp   n180_var_α
n179_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1256]                    # old_rbp
                        add              rsp, 1728
                                                                                        jmp   proc_LBL__ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n181_assign_α
n180_var_β:
                        add              rsp, 16
                                                                                        jmp   n183_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n182_statement_end_α
n181_assign_β:
                                                                                        jmp   n183_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:
                                                                                        jmp   n183_save_restore_α
n182_statement_end_β:
                                                                                        jmp   n183_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n183_save_restore_α:
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
n237_statement_begin_α:
                                                                                        jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n239_lit_integer_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n240_call_α
.Lx294_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd98:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd98]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx295_240
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
.Lx295_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n241_binop_α
n240_call_β:
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n243_call_α
.Lx297_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd101:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd101]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx298_240
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
.Lx298_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n244_binop_α
n243_call_β:
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n246_call_α
.Lx300_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd104:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd104]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx301_240
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
.Lx301_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n247_binop_α
n246_call_β:
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n249_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:
                                                                                        jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_call_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd310:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd310]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx309_240
                        add              rsp, 16
                                                                                        jmp   n255_statement_begin_α
.Lx309_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_assign_α
n252_call_β:
                        add              rsp, 16
                                                                                        jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n254_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:
                                                                                        jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α:
                                                                                        jmp   n256_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n257_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n258_coerce_numeric_α
.Lx317_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n258_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx319_1
                        cmp              eax, 3
                                                                                        jne   .Lx319_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx319_0
.Lx319_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n259_coerce_numeric_α
.Lx319_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n259_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n259_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx321_1
                        cmp              eax, 3
                                                                                        jne   .Lx321_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx321_0
.Lx321_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n260_cmp_test_α
.Lx321_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n260_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n260_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx323_240
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n262_statement_begin_α
.Lx323_240:
                                                                                        jmp   n261_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:
                                                                                        jmp   n283_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n264_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n265_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n266_call_α
.Lx330_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:
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
.Lrkfn332:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]                         # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n269_statement_begin_α
                                                                                        jmp   n267_assign_α
n266_call_β:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:
                                                                                        jmp   n270_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n272_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n272_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n273_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_match_begin_α:
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
.Lx343_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n274_match_any_α
n273_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx343_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx343_1
                                                                                        jmp   .Lx343_0
.Lx343_1:
                        mov              r10, qword ptr [1879048192]
.Lx343_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx343_2
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
                                                                                        jmp   n283_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n274_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n273_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              r9d, dword ptr [rbp + 2164]
                        mov              edx, 0
.Lx345_5:
                        cmp              edx, r9d
                                                                                        jge   n273_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx345_6
                        add              edx, 1
                                                                                        jmp   .Lx345_5
.Lx345_6:
                        add              r14d, 1
                                                                                        jmp   n275_match_end_α
n274_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n273_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n275_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx347_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx347_9
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
.Lx347_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx347_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx347_1:
                        test             rax, rax
                                                                                        je    .Lx347_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx347_3]
                        lea              rdx, [rip + .Lx347_4]
                                                                                        jmp   rax
.Lx347_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx347_1
.Lx347_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx347_1
.Lx347_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx347_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx347_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                                                                                        jmp   n276_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:
                                                                                        jmp   n277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α:
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n279_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n280_binop_α
.Lx353_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx354_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n281_assign_α
.Lx354_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx354_240
                        add              rsp, 32
                                                                                        jmp   n255_statement_begin_α
.Lx354_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n281_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n282_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:
                                                                                        jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n285_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n286_var_α
.Lx361_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n287_call_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:
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
.Lrkfnzd364:            .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd364]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx363_240
                        add              rsp, 16
                                                                                        jmp   n290_save_restore_α
.Lx363_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n288_assign_α
n287_call_β:
                        add              rsp, 16
                                                                                        jmp   n290_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n289_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:
                                                                                        jmp   n290_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n290_save_restore_α:
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
n370_statement_begin_α:
                                                                                        jmp   n371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n372_call_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx381_0]                # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx381_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx381_6]
                        lea              rdx, [rip + .Lx381_7]
                                                                                        jmp   rax
.Lx381_6:
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
                                                                                        jmp   .Lx381_2
.Lx381_7:
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
                                                                                        jmp   .Lx381_2
.Lx381_5:
                        add              rsp, 80
.Lx381_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 16
                                                                                        jmp   n376_save_restore_α
.Lx381_240:
                                                                                        jmp   n373_call_α
n372_call_β:
                                                                                        jmp   n376_save_restore_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx383_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx383_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx383_6]
                        lea              rdx, [rip + .Lx383_7]
                                                                                        jmp   rax
.Lx383_6:
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
                                                                                        jmp   .Lx383_2
.Lx383_7:
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
                                                                                        jmp   .Lx383_2
.Lx383_5:
                        add              rsp, 64
.Lx383_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx383_240
                        add              rsp, 16
                                                                                        jmp   n376_save_restore_α
.Lx383_240:
                                                                                        jmp   n374_assign_α
n373_call_β:
                                                                                        jmp   n376_save_restore_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:
                                                                                        jmp   n376_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n376_save_restore_α:
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
n389_statement_begin_α:
                                                                                        jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n392_call_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:
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
.Lrkfnzd401:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd401]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx400_240
                        add              rsp, 16
                                                                                        jmp   n395_save_restore_α
.Lx400_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n393_assign_α
n392_call_β:
                        add              rsp, 16
                                                                                        jmp   n395_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n394_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:
                                                                                        jmp   n395_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n395_save_restore_α:
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
n407_statement_begin_α:
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
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
                                                                                        jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 144], rax                     # result
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n410_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_coerce_string_α:
                        lea              rdi, [rsp + 144]                               # in
                        lea              rsi, [rsp + 128]                               # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n411_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n411_match_begin_α:
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
.Lx426_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n412_match_sequence_α
n411_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx426_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx426_1
                                                                                        jmp   .Lx426_0
.Lx426_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx426_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx426_2
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
                                                                                        jmp   n418_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n412_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n417_match_break_α
n412_match_sequence_as:
                                                                                        jmp   n413_match_end_α
n412_match_sequence_β:
                                                                                        jmp   n416_match_patref_β
n412_match_sequence_af:
                                                                                        jmp   n411_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n413_match_end_α:
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
.Lx430_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx430_1:
                        test             rax, rax
                                                                                        je    .Lx430_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx430_3]
                        lea              rdx, [rip + .Lx430_4]
                                                                                        jmp   rax
.Lx430_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx430_1
.Lx430_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx430_1
.Lx430_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx430_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2648]                    # old_rbp
                                                                                        jmp   n414_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:
                                                                                        jmp   n415_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n415_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n416_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx435_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx435_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx435_10
.Lx435_9:
                        xor              eax, eax
.Lx435_10:
                        test             rax, rax
                                                                                        jz    .Lx435_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx435_4]
                        lea              rdx, [rip + .Lx435_5]
                                                                                        jmp   rax
.Lx435_4:
                                                                                        jmp   n413_match_end_α
.Lx435_5:
                                                                                        jmp   n417_match_break_β
.Lx435_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx435_2:
                        test             rax, rax
                                                                                        je    .Lx435_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx435_7]
                        lea              rdx, [rip + .Lx435_8]
                                                                                        jmp   rax
.Lx435_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx435_2
.Lx435_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx435_2
.Lx435_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n417_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx435_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n413_match_end_α
.Lx435_6:
                        add              rsp, 16
                                                                                        jmp   n417_match_break_β
n416_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n417_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx437_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx437_240
                        add              rsp, 16
                                                                                        jmp   n411_match_begin_β
.Lx437_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx437_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx437_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx437_1
                        add              edx, 1
                                                                                        jmp   .Lx437_2
.Lx437_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx437_0
.Lx437_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n416_match_patref_α
n417_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n411_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n418_save_restore_α:
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
n440_statement_begin_α:
                                                                                        jmp   n441_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:
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
                                                                                        jmp   n442_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_match_begin_α:
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
.Lx455_0:
                        mov              r14d, dword ptr [rbp + 2752]
                                                                                        jmp   n443_match_sequence_α
n442_match_begin_β:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, r15d
                                                                                        jg    .Lx455_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx455_1
                                                                                        jmp   .Lx455_0
.Lx455_1:
                        mov              rax, qword ptr [rbp + 2760]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2768]
                        mov              r10, qword ptr [1879048192]
.Lx455_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx455_2
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
                                                                                        jmp   n450_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n443_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n448_lit_integer_α
n443_match_sequence_as:
                                                                                        jmp   n444_match_end_α
n443_match_sequence_β:
                                                                                        jmp   n447_match_patref_β
n443_match_sequence_af:
                                                                                        jmp   n442_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n444_match_end_α:
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
.Lx459_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx459_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx459_1:
                        test             rax, rax
                                                                                        je    .Lx459_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx459_3]
                        lea              rdx, [rip + .Lx459_4]
                                                                                        jmp   rax
.Lx459_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx459_1
.Lx459_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx459_1
.Lx459_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx459_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx459_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2800]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2808]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2816]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2824]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n445_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_end_α:
                                                                                        jmp   n446_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n446_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n447_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx464_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx464_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx464_10
.Lx464_9:
                        xor              eax, eax
.Lx464_10:
                        test             rax, rax
                                                                                        jz    .Lx464_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx464_4]
                        lea              rdx, [rip + .Lx464_5]
                                                                                        jmp   rax
.Lx464_4:
                                                                                        jmp   n444_match_end_α
.Lx464_5:
                                                                                        jmp   n442_match_begin_β
.Lx464_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx464_2:
                        test             rax, rax
                                                                                        je    .Lx464_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx464_7]
                        lea              rdx, [rip + .Lx464_8]
                                                                                        jmp   rax
.Lx464_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx464_2
.Lx464_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx464_2
.Lx464_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n442_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx464_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n444_match_end_α
.Lx464_6:
                        add              rsp, 16
                                                                                        jmp   n442_match_begin_β
n447_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rsp + 2848], 3                      # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 2856], rax
                                                                                        jmp   n449_match_pos_α
n448_lit_integer_β:
                                                                                        jmp   n442_match_begin_β
.Lx465_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n449_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n442_match_begin_β
                                                                                        jmp   n447_match_patref_α
n449_match_pos_β:
                                                                                        jmp   n442_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n450_save_restore_α:
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
n469_statement_begin_α:
                                                                                        jmp   n470_var_α
#-----------------------------------------------------------------------------------------------------------------------
n470_var_α:
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
                                                                                        jmp   n471_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_match_begin_α:
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
.Lx484_0:
                        mov              r14d, dword ptr [rbp + 2912]
                                                                                        jmp   n472_match_sequence_α
n471_match_begin_β:
                        add              dword ptr [rbp + 2912], 1
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, r15d
                                                                                        jg    .Lx484_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx484_1
                                                                                        jmp   .Lx484_0
.Lx484_1:
                        mov              rax, qword ptr [rbp + 2920]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2928]
                        mov              r10, qword ptr [1879048192]
.Lx484_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx484_2
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
                                                                                        jmp   n479_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n472_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n478_match_patref_α
n472_match_sequence_as:
                                                                                        jmp   n473_match_end_α
n472_match_sequence_β:
                                                                                        jmp   n477_match_rpos_β
n472_match_sequence_af:
                                                                                        jmp   n471_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n473_match_end_α:
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
.Lx488_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx488_1:
                        test             rax, rax
                                                                                        je    .Lx488_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx488_3]
                        lea              rdx, [rip + .Lx488_4]
                                                                                        jmp   rax
.Lx488_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx488_1
.Lx488_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx488_1
.Lx488_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx488_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2960]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2968]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2976]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2984]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n474_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:
                                                                                        jmp   n475_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n475_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:
                        mov              qword ptr [rsp + 3024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 3032], rax
                                                                                        jmp   n477_match_rpos_α
n476_lit_integer_β:
                                                                                        jmp   n478_match_patref_β
.Lx493_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n477_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n478_match_patref_β
                                                                                        jmp   n473_match_end_α
n477_match_rpos_β:
                                                                                        jmp   n478_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n478_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx495_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx495_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx495_10
.Lx495_9:
                        xor              eax, eax
.Lx495_10:
                        test             rax, rax
                                                                                        jz    .Lx495_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx495_4]
                        lea              rdx, [rip + .Lx495_5]
                                                                                        jmp   rax
.Lx495_4:
                                                                                        jmp   n476_lit_integer_α
.Lx495_5:
                                                                                        jmp   n471_match_begin_β
.Lx495_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx495_2:
                        test             rax, rax
                                                                                        je    .Lx495_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx495_7]
                        lea              rdx, [rip + .Lx495_8]
                                                                                        jmp   rax
.Lx495_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx495_2
.Lx495_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx495_2
.Lx495_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n471_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx495_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n476_lit_integer_α
.Lx495_6:
                        add              rsp, 16
                                                                                        jmp   n471_match_begin_β
n478_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n479_save_restore_α:
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
n498_statement_begin_α:
                                                                                        jmp   n499_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
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
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n500_assign_α
.Lx526_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n501_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:
                                                                                        jmp   n502_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α:
                                                                                        jmp   n503_var_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3072], rax                    # result
                        mov              qword ptr [rsp + 3080], rdx
                                                                                        jmp   n504_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n504_assign_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              rdx, qword ptr [rsp + 3080]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n505_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_end_α:
                                                                                        jmp   n506_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_begin_α:
                                                                                        jmp   n507_var_α
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3264], rax                    # result
                        mov              qword ptr [rsp + 3272], rdx
                                                                                        jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3248], rax                    # result
                        mov              qword ptr [rsp + 3256], rdx
                                                                                        jmp   n509_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_coerce_string_α:
                        lea              rdi, [rsp + 3248]                              # in
                        lea              rsi, [rsp + 3232]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n510_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n510_match_begin_α:
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
.Lx543_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n511_match_assign_save_α
n510_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx543_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx543_1
                                                                                        jmp   .Lx543_0
.Lx543_1:
                        mov              r10, qword ptr [1879048192]
.Lx543_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx543_2
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
                                                                                        jmp   n523_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n511_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n512_match_break_α
n511_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n510_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n512_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx547_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx547_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n510_match_begin_β
.Lx547_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx547_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx547_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx547_1
                        add              edx, 1
                                                                                        jmp   .Lx547_2
.Lx547_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx547_0
.Lx547_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n513_match_assign_cond_α
n512_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n510_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n513_match_assign_cond_α:
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
                                                                                        jmp   n514_match_end_α
n513_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n512_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n514_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx551_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx551_9
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
.Lx551_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx551_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx551_1:
                        test             rax, rax
                                                                                        je    .Lx551_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx551_3]
                        lea              rdx, [rip + .Lx551_4]
                                                                                        jmp   rax
.Lx551_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx551_1
.Lx551_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx551_1
.Lx551_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx551_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx551_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3176]                    # old_rbp
                                                                                        jmp   n515_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_end_α:
                                                                                        jmp   n516_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_begin_α:
                                                                                        jmp   n517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3344], rax                    # result
                        mov              qword ptr [rsp + 3352], rdx
                                                                                        jmp   n518_call_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn558:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]                         # fn
                        lea              rsi, [rsp + 3312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n523_save_restore_α
                                                                                        jmp   n519_lit_integer_α
n518_call_β:
                                                                                        jmp   n523_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_integer_α:
                        mov              qword ptr [rsp + 3360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n520_binop_α
.Lx559_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n520_binop_α:
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 3
                                                                                        jne   .Lx560_0
                        mov              rax, qword ptr [rsp + 3304]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3280], 3
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n521_assign_α
.Lx560_0:
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 3360]
                        mov              rcx, qword ptr [rsp + 3368]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n523_save_restore_α
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n521_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n522_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_end_α:
                                                                                        jmp   n523_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n523_save_restore_α:
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
n566_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n567_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n567_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx571_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx571_1
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "pad_left"
.Lx571_1:
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
n572_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n573_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n573_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx577_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx577_1
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "pad_right"
.Lx577_1:
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
n578_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n579_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n579_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx583_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx583_1
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "ltrim"
.Lx583_1:
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
n584_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n585_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n585_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx589_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx589_1
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "rtrim"
.Lx589_1:
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
n590_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n591_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n591_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx595_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx595_1
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "trimws"
.Lx595_1:
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
n596_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n597_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n597_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx601_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx601_1
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "repeat"
.Lx601_1:
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
n602_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n603_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n603_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx607_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx607_1
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "contains"
.Lx607_1:
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
n608_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n609_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n609_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx613_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx613_1
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "startswith"
.Lx613_1:
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
n614_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n615_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n615_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx619_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx619_1
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "endswith"
.Lx619_1:
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
n620_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n621_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n621_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx625_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx625_1
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "index"
.Lx625_1:
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
n626_statement_begin_α:
                                                                                        jmp   n627_statement_end_α
n626_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n627_statement_end_α:
                                                                                        jmp   n628_statement_begin_α
n627_statement_end_β:
                                                                                        jmp   n628_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'endswith ok'          :(ew1)
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_begin_α:
                                                                                        jmp   n629_statement_end_α
n628_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_end_α:
                                                                                        jmp   n630_statement_begin_α
n629_statement_end_β:
                                                                                        jmp   n630_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_begin_α:
                                                                                        jmp   n631_statement_end_α
n630_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_end_α:
                                                                                        jmp   n632_statement_begin_α
n631_statement_end_β:
                                                                                        jmp   n632_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_begin_α:
                                                                                        jmp   n633_statement_end_α
n632_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_end_α:
                                                                                        jmp   n634_statement_begin_α
n633_statement_end_β:
                                                                                        jmp   n634_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_begin_α:
                                                                                        jmp   n635_statement_end_α
n634_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n635_statement_end_α:
                                                                                        jmp   n636_statement_begin_α
n635_statement_end_β:
                                                                                        jmp   n636_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_begin_α:
                                                                                        jmp   n637_statement_end_α
n636_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_end_α:
                                                                                        jmp   n638_statement_begin_α
n637_statement_end_β:
                                                                                        jmp   n638_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_begin_α:
                                                                                        jmp   n639_statement_end_α
n638_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n639_statement_end_α:
                                                                                        jmp   n640_statement_begin_α
n639_statement_end_β:
                                                                                        jmp   n640_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_begin_α:
                                                                                        jmp   n641_statement_end_α
n640_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_statement_end_α:
                                                                                        jmp   n642_statement_begin_α
n641_statement_end_β:
                                                                                        jmp   n642_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n642_statement_begin_α:
                                                                                        jmp   n643_statement_end_α
n642_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n643_statement_end_α:
                                                                                        jmp   n644_statement_begin_α
n643_statement_end_β:
                                                                                        jmp   n644_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_begin_α:
                                                                                        jmp   n645_statement_end_α
n644_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_end_α:
                                                                                        jmp   n646_statement_begin_α
n645_statement_end_β:
                                                                                        jmp   n646_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_begin_α:
                                                                                        jmp   n647_statement_end_α
n646_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_end_α:
                                                                                        jmp   n648_statement_begin_α
n647_statement_end_β:
                                                                                        jmp   n648_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_begin_α:
                                                                                        jmp   n649_statement_end_α
n648_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_end_α:
                                                                                        jmp   n650_statement_begin_α
n649_statement_end_β:
                                                                                        jmp   n650_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n650_statement_begin_α:
                                                                                        jmp   n651_statement_end_α
n650_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n651_statement_end_α:
                                                                                        jmp   n652_statement_begin_α
n651_statement_end_β:
                                                                                        jmp   n652_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n652_statement_begin_α:
                                                                                        jmp   n653_statement_end_α
n652_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n653_statement_end_α:
                                                                                        jmp   n654_statement_begin_α
n653_statement_end_β:
                                                                                        jmp   n654_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n654_statement_begin_α:
                                                                                        jmp   n655_statement_end_α
n654_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n655_statement_end_α:
                                                                                        jmp   n656_statement_begin_α
n655_statement_end_β:
                                                                                        jmp   n656_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n656_statement_begin_α:
                                                                                        jmp   n657_statement_end_α
n656_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n657_statement_end_α:
                                                                                        jmp   n658_statement_begin_α
n657_statement_end_β:
                                                                                        jmp   n658_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n658_statement_begin_α:
                                                                                        jmp   n659_statement_end_α
n658_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_end_α:
                                                                                        jmp   n660_statement_begin_α
n659_statement_end_β:
                                                                                        jmp   n660_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_begin_α:
                                                                                        jmp   n661_statement_end_α
n660_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n661_statement_end_α:
                                                                                        jmp   n662_statement_begin_α
n661_statement_end_β:
                                                                                        jmp   n662_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n662_statement_begin_α:
                                                                                        jmp   n663_statement_end_α
n662_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n663_statement_end_α:
                                                                                        jmp   n664_statement_begin_α
n663_statement_end_β:
                                                                                        jmp   n664_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n664_statement_begin_α:
                                                                                        jmp   n665_statement_end_α
n664_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n665_statement_end_α:
                                                                                        jmp   n666_statement_begin_α
n665_statement_end_β:
                                                                                        jmp   n666_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n666_statement_begin_α:
                                                                                        jmp   n667_statement_end_α
n666_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n667_statement_end_α:
                                                                                        jmp   n668_statement_begin_α
n667_statement_end_β:
                                                                                        jmp   n668_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n668_statement_begin_α:
                                                                                        jmp   n669_statement_end_α
n668_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n669_statement_end_α:
                                                                                        jmp   n670_statement_begin_α
n669_statement_end_β:
                                                                                        jmp   n670_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_begin_α:
                                                                                        jmp   n671_lit_string_α
n670_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n672_lit_integer_α
n671_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n675_statement_begin_α
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n673_call_α
n672_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n675_statement_begin_α
.Lx1120_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:
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
.Lrkfnzd1122:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1122]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1121_240
                        add              rsp, 16
                                                                                        jmp   n675_statement_begin_α
.Lx1121_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n674_statement_end_α
n673_call_β:
                        add              rsp, 16
                                                                                        jmp   n675_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n674_statement_end_α:
                                                                                        jmp   n675_statement_begin_α
n674_statement_end_β:
                                                                                        jmp   n675_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n675_statement_begin_α:
                                                                                        jmp   n676_statement_end_α
n675_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n676_statement_end_α:
                                                                                        jmp   n677_statement_begin_α
n676_statement_end_β:
                                                                                        jmp   n677_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n677_statement_begin_α:
                                                                                        jmp   n678_lit_string_α
n677_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n679_lit_integer_α
n678_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n684_statement_begin_α
.Lx1131_0:
                        .quad            .Lx1131_0_s
.Lx1131_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n680_lit_string_α
n679_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n684_statement_begin_α
.Lx1132_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n680_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n681_call_α
n680_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n684_statement_begin_α
.Lx1133_0:
                        .quad            .Lx1133_0_s
.Lx1133_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n681_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1135_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1135_5
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
                        lea              rcx, [rip + .Lx1135_6]
                        lea              rdx, [rip + .Lx1135_7]
                                                                                        jmp   rax
.Lx1135_6:
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
                                                                                        jmp   .Lx1135_2
.Lx1135_7:
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
                                                                                        jmp   .Lx1135_2
.Lx1135_5:
                        add              rsp, 64
.Lx1135_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1135_240
                        add              rsp, 16
                                                                                        jmp   n684_statement_begin_α
.Lx1135_240:
                                                                                        jmp   n682_assign_α
n681_call_β:
                                                                                        jmp   n684_statement_begin_α
.Lx1135_0:
                        .quad            .Lx1135_0_s
.Lx1135_0_s:
                        .string          "pad_left"
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1136_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n683_statement_end_α
n682_assign_β:
                                                                                        jmp   n684_statement_begin_α
.Lx1136_0:
                        .quad            .Lx1136_0_s
.Lx1136_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n683_statement_end_α:
                                                                                        jmp   n684_statement_begin_α
n683_statement_end_β:
                                                                                        jmp   n684_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n684_statement_begin_α:
                                                                                        jmp   n685_lit_string_α
n684_statement_begin_β:
                        add              rsp, 112
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n686_lit_integer_α
n685_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n691_statement_begin_α
.Lx1141_0:
                        .quad            .Lx1141_0_s
.Lx1141_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n687_lit_string_α
n686_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n691_statement_begin_α
.Lx1142_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n688_call_α
n687_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n691_statement_begin_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n688_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1145_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1145_5
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
                        lea              rcx, [rip + .Lx1145_6]
                        lea              rdx, [rip + .Lx1145_7]
                                                                                        jmp   rax
.Lx1145_6:
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
                                                                                        jmp   .Lx1145_2
.Lx1145_7:
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
                                                                                        jmp   .Lx1145_2
.Lx1145_5:
                        add              rsp, 64
.Lx1145_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1145_240
                        add              rsp, 16
                                                                                        jmp   n691_statement_begin_α
.Lx1145_240:
                                                                                        jmp   n689_assign_α
n688_call_β:
                                                                                        jmp   n691_statement_begin_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          "pad_right"
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1146_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n690_statement_end_α
n689_assign_β:
                                                                                        jmp   n691_statement_begin_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_end_α:
                                                                                        jmp   n691_statement_begin_α
n690_statement_end_β:
                                                                                        jmp   n691_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_begin_α:
                                                                                        jmp   n692_lit_string_α
n691_statement_begin_β:
                        add              rsp, 176
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx1151_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n693_call_α
n692_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n696_statement_begin_α
.Lx1151_0:
                        .quad            .Lx1151_0_s
.Lx1151_0_s:
                        .string          "   hello"
#-----------------------------------------------------------------------------------------------------------------------
n693_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1153_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1153_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1153_6]
                        lea              rdx, [rip + .Lx1153_7]
                                                                                        jmp   rax
.Lx1153_6:
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
                                                                                        jmp   .Lx1153_2
.Lx1153_7:
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
                                                                                        jmp   .Lx1153_2
.Lx1153_5:
                        add              rsp, 64
.Lx1153_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1153_240
                        add              rsp, 16
                                                                                        jmp   n696_statement_begin_α
.Lx1153_240:
                                                                                        jmp   n694_assign_α
n693_call_β:
                                                                                        jmp   n696_statement_begin_α
.Lx1153_0:
                        .quad            .Lx1153_0_s
.Lx1153_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n694_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1154_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n695_statement_end_α
n694_assign_β:
                                                                                        jmp   n696_statement_begin_α
.Lx1154_0:
                        .quad            .Lx1154_0_s
.Lx1154_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n695_statement_end_α:
                                                                                        jmp   n696_statement_begin_α
n695_statement_end_β:
                                                                                        jmp   n696_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n696_statement_begin_α:
                                                                                        jmp   n697_lit_string_α
n696_statement_begin_β:
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n698_call_α
n697_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n701_statement_begin_α
.Lx1159_0:
                        .quad            .Lx1159_0_s
.Lx1159_0_s:
                        .string          "hello   "
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1161_0]               # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1161_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1161_6]
                        lea              rdx, [rip + .Lx1161_7]
                                                                                        jmp   rax
.Lx1161_6:
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
                                                                                        jmp   .Lx1161_2
.Lx1161_7:
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
                                                                                        jmp   .Lx1161_2
.Lx1161_5:
                        add              rsp, 80
.Lx1161_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1161_240
                        add              rsp, 16
                                                                                        jmp   n701_statement_begin_α
.Lx1161_240:
                                                                                        jmp   n699_assign_α
n698_call_β:
                                                                                        jmp   n701_statement_begin_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n699_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1162_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n700_statement_end_α
n699_assign_β:
                                                                                        jmp   n701_statement_begin_α
.Lx1162_0:
                        .quad            .Lx1162_0_s
.Lx1162_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_end_α:
                                                                                        jmp   n701_statement_begin_α
n700_statement_end_β:
                                                                                        jmp   n701_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_begin_α:
                                                                                        jmp   n702_lit_string_α
n701_statement_begin_β:
                        add              rsp, 240
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n703_call_α
n702_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n706_statement_begin_α
.Lx1167_0:
                        .quad            .Lx1167_0_s
.Lx1167_0_s:
                        .string          "  hello  "
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1169_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1169_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1169_6]
                        lea              rdx, [rip + .Lx1169_7]
                                                                                        jmp   rax
.Lx1169_6:
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
                                                                                        jmp   .Lx1169_2
.Lx1169_7:
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
                                                                                        jmp   .Lx1169_2
.Lx1169_5:
                        add              rsp, 32
.Lx1169_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1169_240
                        add              rsp, 16
                                                                                        jmp   n706_statement_begin_α
.Lx1169_240:
                                                                                        jmp   n704_assign_α
n703_call_β:
                                                                                        jmp   n706_statement_begin_α
.Lx1169_0:
                        .quad            .Lx1169_0_s
.Lx1169_0_s:
                        .string          "trimws"
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1170_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n705_statement_end_α
n704_assign_β:
                                                                                        jmp   n706_statement_begin_α
.Lx1170_0:
                        .quad            .Lx1170_0_s
.Lx1170_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_end_α:
                                                                                        jmp   n706_statement_begin_α
n705_statement_end_β:
                                                                                        jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n706_statement_begin_α:
                                                                                        jmp   n707_lit_string_α
n706_statement_begin_β:
                        add              rsp, 272
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n708_lit_integer_α
n707_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n712_statement_begin_α
.Lx1175_0:
                        .quad            .Lx1175_0_s
.Lx1175_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n709_call_α
n708_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n712_statement_begin_α
.Lx1176_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n709_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1178_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1178_5
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
                        lea              rcx, [rip + .Lx1178_6]
                        lea              rdx, [rip + .Lx1178_7]
                                                                                        jmp   rax
.Lx1178_6:
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
                                                                                        jmp   .Lx1178_2
.Lx1178_7:
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
                                                                                        jmp   .Lx1178_2
.Lx1178_5:
                        add              rsp, 48
.Lx1178_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1178_240
                        add              rsp, 16
                                                                                        jmp   n712_statement_begin_α
.Lx1178_240:
                                                                                        jmp   n710_assign_α
n709_call_β:
                                                                                        jmp   n712_statement_begin_α
.Lx1178_0:
                        .quad            .Lx1178_0_s
.Lx1178_0_s:
                        .string          "repeat"
#-----------------------------------------------------------------------------------------------------------------------
n710_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1179_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n711_statement_end_α
n710_assign_β:
                                                                                        jmp   n712_statement_begin_α
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n711_statement_end_α:
                                                                                        jmp   n712_statement_begin_α
n711_statement_end_β:
                                                                                        jmp   n712_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n712_statement_begin_α:
                                                                                        jmp   n713_statement_end_α
n712_statement_begin_β:
                        add              rsp, 320
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n713_statement_end_α:
                                                                                        jmp   n714_statement_begin_α
n713_statement_end_β:
                                                                                        jmp   n714_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n714_statement_begin_α:
                                                                                        jmp   n715_lit_string_α
n714_statement_begin_β:
                        add              rsp, 320
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n716_lit_string_α
n715_lit_string_β:
                        add              rsp, 16
                        add              rsp, 320
                                                                                        jmp   n723_statement_begin_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n717_call_α
n716_lit_string_β:
                        add              rsp, 16
                        add              rsp, 336
                                                                                        jmp   n723_statement_begin_α
.Lx1189_0:
                        .quad            .Lx1189_0_s
.Lx1189_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n717_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1191_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1191_5
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
                        lea              rcx, [rip + .Lx1191_6]
                        lea              rdx, [rip + .Lx1191_7]
                                                                                        jmp   rax
.Lx1191_6:
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
                                                                                        jmp   .Lx1191_2
.Lx1191_7:
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
                                                                                        jmp   .Lx1191_2
.Lx1191_5:
                        add              rsp, 48
.Lx1191_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1191_240
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n723_statement_begin_α
.Lx1191_240:
                                                                                        jmp   n718_statement_end_α
n717_call_β:
                                                                                        jmp   n723_statement_begin_α
.Lx1191_0:
                        .quad            .Lx1191_0_s
.Lx1191_0_s:
                        .string          "contains"
#-----------------------------------------------------------------------------------------------------------------------
n718_statement_end_α:
                                                                                        jmp   n719_statement_begin_α
n718_statement_end_β:
                        add              rsp, 368
                                                                                        jmp   n723_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_begin_α:
                                                                                        jmp   n720_lit_string_α
n719_statement_begin_β:
                        add              rsp, 368
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx1196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n721_assign_α
n720_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n727_statement_begin_α
.Lx1196_0:
                        .quad            .Lx1196_0_s
.Lx1196_0_s:
                        .string          "contains ok"
#-----------------------------------------------------------------------------------------------------------------------
n721_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1197_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n722_statement_end_α
n721_assign_β:
                                                                                        jmp   n727_statement_begin_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_end_α:
                                                                                        jmp   n727_statement_begin_α
n722_statement_end_β:
                                                                                        jmp   n727_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_begin_α:
                                                                                        jmp   n724_lit_string_α
n723_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:
                        mov              qword ptr [rsp + 4160], 2                      # result
                        mov              dword ptr [rsp + 4164], 14
                        mov              rax, qword ptr [rip + .Lx1202_0]
                        mov              qword ptr [rsp + 4168], rax
                                                                                        jmp   n725_assign_α
n724_lit_string_β:
                                                                                        jmp   n727_statement_begin_α
.Lx1202_0:
                        .quad            .Lx1202_0_s
.Lx1202_0_s:
                        .string          "FAIL: contains"
#-----------------------------------------------------------------------------------------------------------------------
n725_assign_α:
                        mov              rsi, qword ptr [rsp + 4160]                    # val
                        mov              rdx, qword ptr [rsp + 4168]                    # val
                        mov              rdi, qword ptr [rip + .Lx1203_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n726_statement_end_α
n725_assign_β:
                                                                                        jmp   n727_statement_begin_α
.Lx1203_0:
                        .quad            .Lx1203_0_s
.Lx1203_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n726_statement_end_α:
                                                                                        jmp   n727_statement_begin_α
n726_statement_end_β:
                                                                                        jmp   n727_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n727_statement_begin_α:
                                                                                        jmp   n728_statement_end_α
n727_statement_begin_β:
                        add              rsp, 384
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n728_statement_end_α:
                                                                                        jmp   n729_statement_begin_α
n728_statement_end_β:
                                                                                        jmp   n729_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n729_statement_begin_α:
                                                                                        jmp   n730_lit_string_α
n729_statement_begin_β:
                        add              rsp, 384
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n731_lit_string_α
n730_lit_string_β:
                        add              rsp, 16
                        add              rsp, 384
                                                                                        jmp   n738_statement_begin_α
.Lx1212_0:
                        .quad            .Lx1212_0_s
.Lx1212_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n732_call_α
n731_lit_string_β:
                        add              rsp, 16
                        add              rsp, 400
                                                                                        jmp   n738_statement_begin_α
.Lx1213_0:
                        .quad            .Lx1213_0_s
.Lx1213_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n732_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1215_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1215_5
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
                        lea              rcx, [rip + .Lx1215_6]
                        lea              rdx, [rip + .Lx1215_7]
                                                                                        jmp   rax
.Lx1215_6:
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
                                                                                        jmp   .Lx1215_2
.Lx1215_7:
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
                                                                                        jmp   .Lx1215_2
.Lx1215_5:
                        add              rsp, 48
.Lx1215_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1215_240
                        add              rsp, 16
                        add              rsp, 416
                                                                                        jmp   n738_statement_begin_α
.Lx1215_240:
                                                                                        jmp   n733_statement_end_α
n732_call_β:
                                                                                        jmp   n738_statement_begin_α
.Lx1215_0:
                        .quad            .Lx1215_0_s
.Lx1215_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n733_statement_end_α:
                                                                                        jmp   n734_statement_begin_α
n733_statement_end_β:
                        add              rsp, 432
                                                                                        jmp   n738_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n734_statement_begin_α:
                                                                                        jmp   n735_lit_string_α
n734_statement_begin_β:
                        add              rsp, 432
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx1220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n736_assign_α
n735_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n742_statement_begin_α
.Lx1220_0:
                        .quad            .Lx1220_0_s
.Lx1220_0_s:
                        .string          "startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1221_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n737_statement_end_α
n736_assign_β:
                                                                                        jmp   n742_statement_begin_α
.Lx1221_0:
                        .quad            .Lx1221_0_s
.Lx1221_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n737_statement_end_α:
                                                                                        jmp   n742_statement_begin_α
n737_statement_end_β:
                                                                                        jmp   n742_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_begin_α:
                                                                                        jmp   n739_lit_string_α
n738_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        mov              qword ptr [rsp + 4288], 2                      # result
                        mov              dword ptr [rsp + 4292], 16
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rsp + 4296], rax
                                                                                        jmp   n740_assign_α
n739_lit_string_β:
                                                                                        jmp   n742_statement_begin_α
.Lx1226_0:
                        .quad            .Lx1226_0_s
.Lx1226_0_s:
                        .string          "FAIL: startswith"
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:
                        mov              rsi, qword ptr [rsp + 4288]                    # val
                        mov              rdx, qword ptr [rsp + 4296]                    # val
                        mov              rdi, qword ptr [rip + .Lx1227_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n741_statement_end_α
n740_assign_β:
                                                                                        jmp   n742_statement_begin_α
.Lx1227_0:
                        .quad            .Lx1227_0_s
.Lx1227_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n741_statement_end_α:
                                                                                        jmp   n742_statement_begin_α
n741_statement_end_β:
                                                                                        jmp   n742_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n742_statement_begin_α:
                                                                                        jmp   n743_statement_end_α
n742_statement_begin_β:
                        add              rsp, 448
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n743_statement_end_α:
                                                                                        jmp   n744_statement_begin_α
n743_statement_end_β:
                                                                                        jmp   n744_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n744_statement_begin_α:
                                                                                        jmp   n745_lit_string_α
n744_statement_begin_β:
                        add              rsp, 448
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n746_lit_string_α
n745_lit_string_β:
                        add              rsp, 16
                        add              rsp, 448
                                                                                        jmp   n753_statement_begin_α
.Lx1236_0:
                        .quad            .Lx1236_0_s
.Lx1236_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n747_call_α
n746_lit_string_β:
                        add              rsp, 16
                        add              rsp, 464
                                                                                        jmp   n753_statement_begin_α
.Lx1237_0:
                        .quad            .Lx1237_0_s
.Lx1237_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1239_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1239_5
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
                        lea              rcx, [rip + .Lx1239_6]
                        lea              rdx, [rip + .Lx1239_7]
                                                                                        jmp   rax
.Lx1239_6:
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
                                                                                        jmp   .Lx1239_2
.Lx1239_7:
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
                                                                                        jmp   .Lx1239_2
.Lx1239_5:
                        add              rsp, 48
.Lx1239_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1239_240
                        add              rsp, 16
                        add              rsp, 480
                                                                                        jmp   n753_statement_begin_α
.Lx1239_240:
                                                                                        jmp   n748_statement_end_α
n747_call_β:
                                                                                        jmp   n753_statement_begin_α
.Lx1239_0:
                        .quad            .Lx1239_0_s
.Lx1239_0_s:
                        .string          "endswith"
#-----------------------------------------------------------------------------------------------------------------------
n748_statement_end_α:
                                                                                        jmp   n749_statement_begin_α
n748_statement_end_β:
                        add              rsp, 496
                                                                                        jmp   n753_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n749_statement_begin_α:
                                                                                        jmp   n750_lit_string_α
n749_statement_begin_β:
                        add              rsp, 496
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx1244_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n751_assign_α
n750_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n757_statement_begin_α
.Lx1244_0:
                        .quad            .Lx1244_0_s
.Lx1244_0_s:
                        .string          "endswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n751_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1245_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n752_statement_end_α
n751_assign_β:
                                                                                        jmp   n757_statement_begin_α
.Lx1245_0:
                        .quad            .Lx1245_0_s
.Lx1245_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n752_statement_end_α:
                                                                                        jmp   n757_statement_begin_α
n752_statement_end_β:
                                                                                        jmp   n757_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n753_statement_begin_α:
                                                                                        jmp   n754_lit_string_α
n753_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rsp + 4416], 2                      # result
                        mov              dword ptr [rsp + 4420], 14
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 4424], rax
                                                                                        jmp   n755_assign_α
n754_lit_string_β:
                                                                                        jmp   n757_statement_begin_α
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          "FAIL: endswith"
#-----------------------------------------------------------------------------------------------------------------------
n755_assign_α:
                        mov              rsi, qword ptr [rsp + 4416]                    # val
                        mov              rdx, qword ptr [rsp + 4424]                    # val
                        mov              rdi, qword ptr [rip + .Lx1251_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n756_statement_end_α
n755_assign_β:
                                                                                        jmp   n757_statement_begin_α
.Lx1251_0:
                        .quad            .Lx1251_0_s
.Lx1251_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n756_statement_end_α:
                                                                                        jmp   n757_statement_begin_α
n756_statement_end_β:
                                                                                        jmp   n757_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n757_statement_begin_α:
                                                                                        jmp   n758_statement_end_α
n757_statement_begin_β:
                        add              rsp, 512
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n758_statement_end_α:
                                                                                        jmp   n759_statement_begin_α
n758_statement_end_β:
                                                                                        jmp   n759_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n759_statement_begin_α:
                                                                                        jmp   n760_lit_string_α
n759_statement_begin_β:
                        add              rsp, 512
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1260_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n761_lit_string_α
n760_lit_string_β:
                        add              rsp, 16
                        add              rsp, 512
                                                                                        jmp   n768_statement_begin_α
.Lx1260_0:
                        .quad            .Lx1260_0_s
.Lx1260_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n762_call_α
n761_lit_string_β:
                        add              rsp, 16
                        add              rsp, 528
                                                                                        jmp   n768_statement_begin_α
.Lx1261_0:
                        .quad            .Lx1261_0_s
.Lx1261_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n762_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1263_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1263_5
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
                        lea              rcx, [rip + .Lx1263_6]
                        lea              rdx, [rip + .Lx1263_7]
                                                                                        jmp   rax
.Lx1263_6:
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
                                                                                        jmp   .Lx1263_2
.Lx1263_7:
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
                                                                                        jmp   .Lx1263_2
.Lx1263_5:
                        add              rsp, 48
.Lx1263_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1263_240
                        add              rsp, 16
                        add              rsp, 544
                                                                                        jmp   n768_statement_begin_α
.Lx1263_240:
                                                                                        jmp   n763_statement_end_α
n762_call_β:
                                                                                        jmp   n768_statement_begin_α
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n763_statement_end_α:
                                                                                        jmp   n764_statement_begin_α
n763_statement_end_β:
                        add              rsp, 560
                                                                                        jmp   n768_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n764_statement_begin_α:
                                                                                        jmp   n765_lit_string_α
n764_statement_begin_β:
                        add              rsp, 560
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx1268_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n766_assign_α
n765_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n772_statement_begin_α
.Lx1268_0:
                        .quad            .Lx1268_0_s
.Lx1268_0_s:
                        .string          "FAIL: startswith matched wrong"
#-----------------------------------------------------------------------------------------------------------------------
n766_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1269_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n767_statement_end_α
n766_assign_β:
                                                                                        jmp   n772_statement_begin_α
.Lx1269_0:
                        .quad            .Lx1269_0_s
.Lx1269_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n767_statement_end_α:
                                                                                        jmp   n772_statement_begin_α
n767_statement_end_β:
                                                                                        jmp   n772_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n768_statement_begin_α:
                                                                                        jmp   n769_lit_string_α
n768_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:
                        mov              qword ptr [rsp + 4528], 2                      # result
                        mov              dword ptr [rsp + 4532], 16
                        mov              rax, qword ptr [rip + .Lx1274_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n770_assign_α
n769_lit_string_β:
                                                                                        jmp   n772_statement_begin_α
.Lx1274_0:
                        .quad            .Lx1274_0_s
.Lx1274_0_s:
                        .string          "no startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n770_assign_α:
                        mov              rsi, qword ptr [rsp + 4528]                    # val
                        mov              rdx, qword ptr [rsp + 4536]                    # val
                        mov              rdi, qword ptr [rip + .Lx1275_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n771_statement_end_α
n770_assign_β:
                                                                                        jmp   n772_statement_begin_α
.Lx1275_0:
                        .quad            .Lx1275_0_s
.Lx1275_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n771_statement_end_α:
                                                                                        jmp   n772_statement_begin_α
n771_statement_end_β:
                                                                                        jmp   n772_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n772_statement_begin_α:
                                                                                        jmp   n773_statement_end_α
n772_statement_begin_β:
                        add              rsp, 576
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n773_statement_end_α:
                                                                                        jmp   n774_statement_begin_α
n773_statement_end_β:
                                                                                        jmp   n774_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n774_statement_begin_α:
                                                                                        jmp   n775_lit_string_α
n774_statement_begin_β:
                        add              rsp, 576
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1284_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n776_lit_string_α
n775_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n780_statement_begin_α
.Lx1284_0:
                        .quad            .Lx1284_0_s
.Lx1284_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n777_call_α
n776_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n780_statement_begin_α
.Lx1285_0:
                        .quad            .Lx1285_0_s
.Lx1285_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n777_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1287_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1287_5
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
                        lea              rcx, [rip + .Lx1287_6]
                        lea              rdx, [rip + .Lx1287_7]
                                                                                        jmp   rax
.Lx1287_6:
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
                                                                                        jmp   .Lx1287_2
.Lx1287_7:
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
                                                                                        jmp   .Lx1287_2
.Lx1287_5:
                        add              rsp, 64
.Lx1287_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1287_240
                        add              rsp, 16
                                                                                        jmp   n780_statement_begin_α
.Lx1287_240:
                                                                                        jmp   n778_assign_α
n777_call_β:
                                                                                        jmp   n780_statement_begin_α
.Lx1287_0:
                        .quad            .Lx1287_0_s
.Lx1287_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n778_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1288_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n779_statement_end_α
n778_assign_β:
                                                                                        jmp   n780_statement_begin_α
.Lx1288_0:
                        .quad            .Lx1288_0_s
.Lx1288_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_end_α:
                                                                                        jmp   n780_statement_begin_α
n779_statement_end_β:
                                                                                        jmp   n780_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n780_statement_begin_α:
                                                                                        jmp   n781_lit_string_α
n780_statement_begin_β:
                        add              rsp, 624
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n782_lit_string_α
n781_lit_string_β:
                        add              rsp, 16
                        add              rsp, 624
                                                                                        jmp   main_γ
.Lx1293_0:
                        .quad            .Lx1293_0_s
.Lx1293_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n783_call_α
n782_lit_string_β:
                        add              rsp, 16
                        add              rsp, 640
                                                                                        jmp   main_γ
.Lx1294_0:
                        .quad            .Lx1294_0_s
.Lx1294_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n783_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1296_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1296_5
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
                        lea              rcx, [rip + .Lx1296_6]
                        lea              rdx, [rip + .Lx1296_7]
                                                                                        jmp   rax
.Lx1296_6:
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
                                                                                        jmp   .Lx1296_2
.Lx1296_7:
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
                                                                                        jmp   .Lx1296_2
.Lx1296_5:
                        add              rsp, 64
.Lx1296_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1296_240
                        add              rsp, 16
                        add              rsp, 656
                                                                                        jmp   main_γ
.Lx1296_240:
                                                                                        jmp   n784_assign_α
n783_call_β:
                                                                                        jmp   main_γ
.Lx1296_0:
                        .quad            .Lx1296_0_s
.Lx1296_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n784_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1297_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n785_statement_end_α
n784_assign_β:
                        add              rsp, 672
                                                                                        jmp   main_γ
.Lx1297_0:
                        .quad            .Lx1297_0_s
.Lx1297_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n785_statement_end_α:
                        add              rsp, 672
                                                                                        jmp   main_γ
n785_statement_end_β:
                        add              rsp, 672
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n786_goto_α:
                                                                                        jmp   n787_statement_begin_α
n786_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n787_statement_begin_α:
                                                                                        jmp   n788_var_α
n787_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n788_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n789_call_α
n788_var_β:
                                                                                        jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n789_call_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1305:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1305]                        # fn
                        lea              rsi, [rsp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n794_statement_begin_α
                                                                                        jmp   n790_lit_string_α
n789_call_β:
                                                                                        jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:
                        mov              qword ptr [rsp + 128], 2                       # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx1306_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n791_binop_α
n790_lit_string_β:
                                                                                        jmp   n794_statement_begin_α
.Lx1306_0:
                        .quad            .Lx1306_0_s
.Lx1306_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n791_binop_α:
                        mov              rdi, qword ptr [rsp + 64]                      # a
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n792_assign_α
n791_binop_β:
                                                                                        jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n792_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n793_statement_end_α
n792_assign_β:
                                                                                        jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_end_α:
                                                                                        jmp   n794_statement_begin_α
n793_statement_end_β:
                                                                                        jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n794_statement_begin_α:
                                                                                        jmp   n795_var_α
n794_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n796_call_α
n795_var_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n796_call_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn1315:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1315]                        # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n805_statement_begin_α
                                                                                        jmp   n797_var_α
n796_call_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n797_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n798_coerce_numeric_α
n797_var_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n798_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx1318_1
                        cmp              eax, 3
                                                                                        jne   .Lx1318_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx1318_0
.Lx1318_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n799_coerce_numeric_α
.Lx1318_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n799_coerce_numeric_α
n798_coerce_numeric_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n799_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx1320_1
                        cmp              eax, 3
                                                                                        jne   .Lx1320_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx1320_0
.Lx1320_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n800_cmp_test_α
.Lx1320_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n800_cmp_test_α
n799_coerce_numeric_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n800_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    n805_statement_begin_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n801_var_α
n800_cmp_test_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 288], rax                     # result
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n802_binop_α
n801_var_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n802_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 288]                     # b
                        mov              rcx, qword ptr [rsp + 296]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n803_assign_α
n802_binop_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n803_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n804_statement_end_α
n803_assign_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n804_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n804_statement_end_β:
                                                                                        jmp   n805_statement_begin_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n805_statement_begin_α:
                                                                                        jmp   n806_var_α
n805_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n807_var_α
n806_var_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n808_var_α
n807_var_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n809_call_α
n808_var_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n809_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1334:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1334]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1333_240
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
.Lx1333_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n810_binop_α
n809_call_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n810_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1335_240
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
.Lx1335_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n811_call_α
n810_binop_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n811_call_α:
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
.Lrkfnzd1337:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1337]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1336_240
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
.Lx1336_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n812_var_α
n811_call_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n813_binop_α
n812_var_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n813_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n814_assign_α
n813_binop_β:
                        add              rsp, 16
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n814_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n815_statement_end_α
n814_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n815_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n815_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n816_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n817_goto_α:
                                                                                        jmp   n630_statement_begin_α
n817_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n818_goto_α:
                                                                                        jmp   n819_statement_begin_α
n818_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n819_statement_begin_α:
                                                                                        jmp   n820_var_α
n819_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n820_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 576], rax                     # result
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n821_call_α
n820_var_β:
                                                                                        jmp   n826_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n821_call_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn1351:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1351]                        # fn
                        lea              rsi, [rsp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n826_statement_begin_α
                                                                                        jmp   n822_lit_string_α
n821_call_β:
                                                                                        jmp   n826_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx1352_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n823_binop_α
n822_lit_string_β:
                                                                                        jmp   n826_statement_begin_α
.Lx1352_0:
                        .quad            .Lx1352_0_s
.Lx1352_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n823_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 592]                     # b
                        mov              rcx, qword ptr [rsp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n824_assign_α
n823_binop_β:
                                                                                        jmp   n826_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n824_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n825_statement_end_α
n824_assign_β:
                                                                                        jmp   n826_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n825_statement_end_α:
                                                                                        jmp   n826_statement_begin_α
n825_statement_end_β:
                                                                                        jmp   n826_statement_begin_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n826_statement_begin_α:
                                                                                        jmp   n827_var_α
n826_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n827_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n828_call_α
n827_var_β:
                        add              rsp, 16
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n828_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1361:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1361]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1360_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n837_statement_begin_α
.Lx1360_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n829_var_α
n828_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n830_coerce_numeric_α
n829_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n830_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1364_1
                        cmp              eax, 3
                                                                                        jne   .Lx1364_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx1364_0
.Lx1364_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n831_coerce_numeric_α
.Lx1364_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n831_coerce_numeric_α
n830_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n831_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx1366_1
                        cmp              eax, 3
                                                                                        jne   .Lx1366_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1366_0
.Lx1366_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n832_cmp_test_α
.Lx1366_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n832_cmp_test_α
n831_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n832_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx1368_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n837_statement_begin_α
.Lx1368_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n833_var_α
n832_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n834_binop_α
n833_var_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n834_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n835_assign_α
n834_binop_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n835_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n836_statement_end_α
n835_assign_β:
                        add              rsp, 128
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n836_statement_end_α:
                        add              rsp, 128
                                                                                        jmp   n816_save_restore_α
n836_statement_end_β:
                        add              rsp, 128
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n837_statement_begin_α:
                                                                                        jmp   n838_var_α
n837_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n839_var_α
n838_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n840_var_α
n839_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n841_var_α
n840_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n842_call_α
n841_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n842_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1381:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1381]                        # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n843_binop_α
n842_call_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n843_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx1382_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx1382_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n844_call_α
.Lx1382_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n844_call_α
n843_binop_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n844_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn1384:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1384]                        # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n845_binop_α
n844_call_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n845_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n846_assign_α
n845_binop_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n847_statement_end_α
n846_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n847_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n847_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n848_goto_α:
                                                                                        jmp   n634_statement_begin_α
n848_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n849_goto_α:
                                                                                        jmp   n850_statement_begin_α
n849_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n850_statement_begin_α:
                                                                                        jmp   n851_lit_string_α
n850_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n851_lit_string_α:
                        mov              qword ptr [rsp + 1024], 2                      # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx1393_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n852_lit_integer_α
n851_lit_string_β:
                                                                                        jmp   n863_statement_begin_α
.Lx1393_0:
                        .quad            .Lx1393_0_s
.Lx1393_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n852_lit_integer_α:
                        mov              qword ptr [rsp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n853_call_α
n852_lit_integer_β:
                                                                                        jmp   n863_statement_begin_α
.Lx1394_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n853_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lbynamefn63:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn63]                      # fn
                        lea              rsi, [rsp + 1056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n863_statement_begin_α
                                                                                        jmp   n854_binop_α
n853_call_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n854_binop_α:
                        mov              rdi, qword ptr [rsp + 1024]                    # a
                        mov              rsi, qword ptr [rsp + 1032]                    # a
                        mov              rdx, qword ptr [rsp + 1040]                    # b
                        mov              rcx, qword ptr [rsp + 1048]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n855_lit_integer_α
n854_binop_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1397_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n856_call_α
n855_lit_integer_β:
                                                                                        jmp   n863_statement_begin_α
.Lx1397_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n856_call_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lbynamefn66:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn66]                      # fn
                        lea              rsi, [rsp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n863_statement_begin_α
                                                                                        jmp   n857_binop_α
n856_call_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n857_binop_α:
                        mov              rdi, qword ptr [rsp + 1008]                    # a
                        mov              rsi, qword ptr [rsp + 1016]                    # a
                        mov              rdx, qword ptr [rsp + 1104]                    # b
                        mov              rcx, qword ptr [rsp + 1112]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n858_lit_integer_α
n857_binop_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n858_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1400_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n859_call_α
n858_lit_integer_β:
                                                                                        jmp   n863_statement_begin_α
.Lx1400_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n859_call_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lbynamefn69:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn69]                      # fn
                        lea              rsi, [rsp + 1184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n863_statement_begin_α
                                                                                        jmp   n860_binop_α
n859_call_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n860_binop_α:
                        mov              rdi, qword ptr [rsp + 992]                     # a
                        mov              rsi, qword ptr [rsp + 1000]                    # a
                        mov              rdx, qword ptr [rsp + 1168]                    # b
                        mov              rcx, qword ptr [rsp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n861_assign_α
n860_binop_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n861_assign_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n862_statement_end_α
n861_assign_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n862_statement_end_α:
                                                                                        jmp   n863_statement_begin_α
n862_statement_end_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n863_statement_begin_α:
                                                                                        jmp   n864_var_α
n863_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1520], rax                    # result
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n865_var_α
n864_var_β:
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n865_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1504], rax                    # result
                        mov              qword ptr [rsp + 1512], rdx
                                                                                        jmp   n866_coerce_string_α
n865_var_β:
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n866_coerce_string_α:
                        lea              rdi, [rsp + 1504]                              # in
                        lea              rsi, [rsp + 1488]                              # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n867_match_begin_α
n866_coerce_string_β:
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n867_match_begin_α:
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
.Lx1413_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n868_match_sequence_α
n867_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1413_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1413_1
                                                                                        jmp   .Lx1413_0
.Lx1413_1:
                        mov              r10, qword ptr [1879048192]
.Lx1413_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1413_2
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
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n868_match_sequence_α:
                                                                                        jmp   n879_lit_integer_α
n868_match_sequence_as:
                                                                                        jmp   n869_match_end_α
n868_match_sequence_β:
                                                                                        jmp   n875_match_assign_cond_β
n868_match_sequence_af:
                                                                                        jmp   n867_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n869_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1417_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1417_9
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
.Lx1417_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1417_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1417_1:
                        test             rax, rax
                                                                                        je    .Lx1417_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1417_3]
                        lea              rdx, [rip + .Lx1417_4]
                                                                                        jmp   rax
.Lx1417_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1417_1
.Lx1417_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1417_1
.Lx1417_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1417_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1417_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1296]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1304]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1312]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1320]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n870_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_string_α:
                        mov              qword ptr [rsp + 1344], 2                      # result
                        mov              dword ptr [rsp + 1348], 0
                        mov              rax, qword ptr [rip + .Lx1418_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n871_match_replace_α
n870_lit_string_β:
                                                                                        jmp   n881_statement_begin_α
.Lx1418_0:
                        .quad            .Lx1418_0_s
.Lx1418_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n871_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx1420_0]               # name
                        mov              rsi, qword ptr [rbp + 1520]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1528]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1248]                    # start
                        mov              r8, qword ptr [rbp + 1272]                     # end
                        lea              r9, [rbp + 1344]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx1420_1
.Lx1420_0:
                        .quad            .Lx1420_0_s
.Lx1420_0_s:
                        .string          "s"
.Lx1420_1:
                                                                                        jmp   n872_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_end_α:
                                                                                        jmp   n881_statement_begin_α
n872_statement_end_β:
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n873_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n874_match_rem_α
n873_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n876_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n874_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n875_match_assign_cond_α
n874_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n876_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n875_match_assign_cond_α:
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
                                                                                        jmp   n869_match_end_α
n875_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n874_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n876_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx1429_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n878_match_span_α
.Lx1429_21:
                        lea              rax, [rip + .Lx1429_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n877_match_lit_α
n876_match_alternate_s0:
                        lea              rax, [rip + .Lx1429_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n876_match_alternate_as
n876_match_alternate_s1:
                        lea              rax, [rip + .Lx1429_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n876_match_alternate_as
.Lx1429_40:
                                                                                        jmp   n878_match_span_β
.Lx1429_41:
                                                                                        jmp   n877_match_lit_β
n876_match_alternate_as:
                                                                                        jmp   n873_match_assign_save_α
n876_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n876_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx1429_19:
                                                                                        jmp   n880_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n877_match_lit_α:
                                                                                        jmp   n876_match_alternate_s1
n877_match_lit_β:
                                                                                        jmp   n876_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n878_match_span_α:
                        mov              dword ptr [rbp + 1424], 0
                        mov              r8, qword ptr [rbp + 1496]
                        mov              r9d, dword ptr [rbp + 1492]
.Lx1433_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jge   .Lx1433_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1433_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1433_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1433_3
                        add              edx, 1
                                                                                        jmp   .Lx1433_2
.Lx1433_3:
                        add              dword ptr [rbp + 1424], 1
                                                                                        jmp   .Lx1433_0
.Lx1433_1:
                        mov              eax, dword ptr [rbp + 1424]
                        test             eax, eax
                                                                                        jle   n876_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1428], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n876_match_alternate_s0
n878_match_span_β:
                        mov              r14d, dword ptr [rbp + 1428]
                                                                                        jmp   n876_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1434_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n880_match_pos_α
n879_lit_integer_β:
                                                                                        jmp   n867_match_begin_β
.Lx1434_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n880_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n867_match_begin_β
                                                                                        jmp   n876_match_alternate_α
n880_match_pos_β:
                                                                                        jmp   n867_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n881_statement_begin_α:
                                                                                        jmp   n882_var_α
n881_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1536], rax                    # result
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n883_assign_α
n882_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n884_statement_end_α
n883_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n884_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n884_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n885_goto_α:
                                                                                        jmp   n638_statement_begin_α
n885_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n886_goto_α:
                                                                                        jmp   n887_statement_begin_α
n886_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n887_statement_begin_α:
                                                                                        jmp   n888_lit_string_α
n887_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n888_lit_string_α:
                        mov              qword ptr [rsp + 1600], 2                      # result
                        mov              dword ptr [rsp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx1446_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n889_lit_integer_α
n888_lit_string_β:
                                                                                        jmp   n900_statement_begin_α
.Lx1446_0:
                        .quad            .Lx1446_0_s
.Lx1446_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n889_lit_integer_α:
                        mov              qword ptr [rsp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1447_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   n890_call_α
n889_lit_integer_β:
                                                                                        jmp   n900_statement_begin_α
.Lx1447_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n890_call_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lbynamefn98:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn98]                      # fn
                        lea              rsi, [rsp + 1632]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    n900_statement_begin_α
                                                                                        jmp   n891_binop_α
n890_call_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n891_binop_α:
                        mov              rdi, qword ptr [rsp + 1600]                    # a
                        mov              rsi, qword ptr [rsp + 1608]                    # a
                        mov              rdx, qword ptr [rsp + 1616]                    # b
                        mov              rcx, qword ptr [rsp + 1624]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                                                                                        jmp   n892_lit_integer_α
n891_binop_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n892_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1450_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n893_call_α
n892_lit_integer_β:
                                                                                        jmp   n900_statement_begin_α
.Lx1450_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n893_call_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lbynamefn101:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn101]                     # fn
                        lea              rsi, [rsp + 1696]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 104
                                                                                        je    n900_statement_begin_α
                                                                                        jmp   n894_binop_α
n893_call_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n894_binop_α:
                        mov              rdi, qword ptr [rsp + 1584]                    # a
                        mov              rsi, qword ptr [rsp + 1592]                    # a
                        mov              rdx, qword ptr [rsp + 1680]                    # b
                        mov              rcx, qword ptr [rsp + 1688]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n895_lit_integer_α
n894_binop_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_integer_α:
                        mov              qword ptr [rsp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1453_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n896_call_α
n895_lit_integer_β:
                                                                                        jmp   n900_statement_begin_α
.Lx1453_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n896_call_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lbynamefn104:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn104]                     # fn
                        lea              rsi, [rsp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n900_statement_begin_α
                                                                                        jmp   n897_binop_α
n896_call_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n897_binop_α:
                        mov              rdi, qword ptr [rsp + 1568]                    # a
                        mov              rsi, qword ptr [rsp + 1576]                    # a
                        mov              rdx, qword ptr [rsp + 1744]                    # b
                        mov              rcx, qword ptr [rsp + 1752]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n898_assign_α
n897_binop_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n898_assign_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n899_statement_end_α
n898_assign_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n899_statement_end_α:
                                                                                        jmp   n900_statement_begin_α
n899_statement_end_β:
                                                                                        jmp   n900_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n900_statement_begin_α:
                                                                                        jmp   n901_var_α
n900_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n901_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1856], rax                    # result
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n902_call_α
n901_var_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n902_call_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn1463:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1463]                        # fn
                        lea              rsi, [rsp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n905_statement_begin_α
                                                                                        jmp   n903_assign_α
n902_call_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n903_assign_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n904_statement_end_α
n903_assign_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n904_statement_end_α:
                                                                                        jmp   n905_statement_begin_α
n904_statement_end_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n905_statement_begin_α:
                                                                                        jmp   n906_var_α
n905_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n906_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1920], rax                    # result
                        mov              qword ptr [rsp + 1928], rdx
                                                                                        jmp   n907_lit_integer_α
n906_var_β:
                                                                                        jmp   n912_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n907_lit_integer_α:
                        mov              qword ptr [rsp + 1904], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1470_0]
                        mov              qword ptr [rsp + 1912], rax
                                                                                        jmp   n908_coerce_numeric_α
n907_lit_integer_β:
                                                                                        jmp   n912_statement_begin_α
.Lx1470_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n908_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 5
                                                                                        je    .Lx1472_1
                        cmp              eax, 3
                                                                                        jne   .Lx1472_0
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 3
                                                                                        jne   .Lx1472_0
.Lx1472_1:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n909_coerce_numeric_α
.Lx1472_0:
                        lea              rdi, [rsp + 1920]                              # self
                        lea              rsi, [rsp + 1904]                              # other
                        lea              rdx, [rsp + 1888]                              # out
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n909_coerce_numeric_α
n908_coerce_numeric_β:
                                                                                        jmp   n912_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n909_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 5
                                                                                        je    .Lx1474_1
                        cmp              eax, 3
                                                                                        jne   .Lx1474_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx1474_0
.Lx1474_1:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n910_cmp_test_α
.Lx1474_0:
                        lea              rdi, [rsp + 1904]                              # self
                        lea              rsi, [rsp + 1920]                              # other
                        lea              rdx, [rsp + 1872]                              # out
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n910_cmp_test_α
n909_coerce_numeric_β:
                                                                                        jmp   n912_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n910_cmp_test_α:
                        lea              rdi, [rsp + 1888]                              # a
                        lea              rsi, [rsp + 1872]                              # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    n912_statement_begin_α
                                                                                        jmp   n911_statement_end_α
n910_cmp_test_β:
                                                                                        jmp   n912_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n911_statement_end_α:
                                                                                        jmp   n933_statement_begin_α
n911_statement_end_β:
                                                                                        jmp   n912_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n912_statement_begin_α:
                                                                                        jmp   n913_var_α
n912_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n914_var_α
n913_var_β:
                                                                                        jmp   n919_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n914_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n915_lit_integer_α
n914_var_β:
                                                                                        jmp   n919_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1483_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n916_call_α
n915_lit_integer_β:
                                                                                        jmp   n919_statement_begin_α
.Lx1483_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n916_call_α:
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
.Lrkfn1485:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1485]                        # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n919_statement_begin_α
                                                                                        jmp   n917_assign_α
n916_call_β:
                                                                                        jmp   n919_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n917_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n918_statement_end_α
n917_assign_β:
                                                                                        jmp   n919_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n918_statement_end_α:
                                                                                        jmp   n919_statement_begin_α
n918_statement_end_β:
                                                                                        jmp   n919_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n919_statement_begin_α:
                                                                                        jmp   n920_var_α
n919_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n921_var_α
n920_var_β:
                                                                                        jmp   n933_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n922_coerce_string_α
n921_var_β:
                                                                                        jmp   n933_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n922_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n923_match_begin_α
n922_coerce_string_β:
                                                                                        jmp   n933_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n923_match_begin_α:
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
.Lx1496_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n924_match_any_α
n923_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1496_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1496_1
                                                                                        jmp   .Lx1496_0
.Lx1496_1:
                        mov              r10, qword ptr [1879048192]
.Lx1496_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1496_2
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
                                                                                        jmp   n933_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n924_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n923_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              r9d, dword ptr [rbp + 2164]
                        mov              edx, 0
.Lx1498_5:
                        cmp              edx, r9d
                                                                                        jge   n923_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1498_6
                        add              edx, 1
                                                                                        jmp   .Lx1498_5
.Lx1498_6:
                        add              r14d, 1
                                                                                        jmp   n925_match_end_α
n924_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n923_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n925_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1500_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1500_9
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
.Lx1500_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1500_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1500_1:
                        test             rax, rax
                                                                                        je    .Lx1500_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1500_3]
                        lea              rdx, [rip + .Lx1500_4]
                                                                                        jmp   rax
.Lx1500_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1500_1
.Lx1500_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1500_1
.Lx1500_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1500_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1500_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n926_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n926_statement_end_α:
                                                                                        jmp   n927_statement_begin_α
n926_statement_end_β:
                                                                                        jmp   n933_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n927_statement_begin_α:
                                                                                        jmp   n928_var_α
n927_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n929_lit_integer_α
n928_var_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n929_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1506_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n930_binop_α
n929_lit_integer_β:
                                                                                        jmp   n905_statement_begin_α
.Lx1506_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n930_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx1507_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n931_assign_α
.Lx1507_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1507_240
                        add              rsp, 32
                                                                                        jmp   n905_statement_begin_α
.Lx1507_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n931_assign_α
n930_binop_β:
                        add              rsp, 32
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n931_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n932_statement_end_α
n931_assign_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n932_statement_end_α:
                                                                                        jmp   n905_statement_begin_α
n932_statement_end_β:
                                                                                        jmp   n905_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n933_statement_begin_α:
                                                                                        jmp   n934_var_α
n933_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n934_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2336], rax                    # result
                        mov              qword ptr [rsp + 2344], rdx
                                                                                        jmp   n935_lit_integer_α
n934_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n935_lit_integer_α:
                        mov              qword ptr [rsp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1514_0]
                        mov              qword ptr [rsp + 2360], rax
                                                                                        jmp   n936_var_α
n935_lit_integer_β:
                                                                                        jmp   n816_save_restore_α
.Lx1514_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n936_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2368], rax                    # result
                        mov              qword ptr [rsp + 2376], rdx
                                                                                        jmp   n937_call_α
n936_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n937_call_α:
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
.Lrkfn1517:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1517]                        # fn
                        lea              rsi, [rsp + 2272]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n938_assign_α
n937_call_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n938_assign_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n939_statement_end_α
n938_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n939_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n939_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n940_goto_α:
                                                                                        jmp   n905_statement_begin_α
n940_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n941_goto_α:
                                                                                        jmp   n933_statement_begin_α
n941_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n942_goto_α:
                                                                                        jmp   n642_statement_begin_α
n942_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n943_goto_α:
                                                                                        jmp   n944_statement_begin_α
n943_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n944_statement_begin_α:
                                                                                        jmp   n945_var_α
n944_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2480], rax                    # result
                        mov              qword ptr [rsp + 2488], rdx
                                                                                        jmp   n946_call_α
n945_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n946_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1529_0]               # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1529_5
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1529_6]
                        lea              rdx, [rip + .Lx1529_7]
                                                                                        jmp   rax
.Lx1529_6:
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
                                                                                        jmp   .Lx1529_2
.Lx1529_7:
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
                                                                                        jmp   .Lx1529_2
.Lx1529_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1529_20
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1529_21
.Lx1529_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2480]                    # v
                        mov              rdx, qword ptr [rsp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx1529_21:
                        mov              rdi, qword ptr [rip + .Lx1529_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1529_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1529_3]
                        lea              rdx, [rip + .Lx1529_4]
                                                                                        jmp   rax
.Lx1529_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1529_2
.Lx1529_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1529_2
.Lx1529_1:
                        call             rt_faildescr@PLT
.Lx1529_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n947_call_α
n946_call_β:
                                                                                        jmp   n816_save_restore_α
.Lx1529_0:
                        .quad            .Lx1529_0_s
.Lx1529_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n947_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1531_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1531_5
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1531_6]
                        lea              rdx, [rip + .Lx1531_7]
                                                                                        jmp   rax
.Lx1531_6:
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
                                                                                        jmp   .Lx1531_2
.Lx1531_7:
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
                                                                                        jmp   .Lx1531_2
.Lx1531_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1531_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1531_21
.Lx1531_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2432]                    # v
                        mov              rdx, qword ptr [rsp + 2440]                    # v
                        call             rt_arg_stage@PLT
.Lx1531_21:
                        mov              rdi, qword ptr [rip + .Lx1531_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1531_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1531_3]
                        lea              rdx, [rip + .Lx1531_4]
                                                                                        jmp   rax
.Lx1531_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1531_2
.Lx1531_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1531_2
.Lx1531_1:
                        call             rt_faildescr@PLT
.Lx1531_2:
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n948_assign_α
n947_call_β:
                                                                                        jmp   n816_save_restore_α
.Lx1531_0:
                        .quad            .Lx1531_0_s
.Lx1531_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n948_assign_α:
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n949_statement_end_α
n948_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n949_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n949_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n950_goto_α:
                                                                                        jmp   n646_statement_begin_α
n950_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_goto_α:
                                                                                        jmp   n952_statement_begin_α
n951_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n952_statement_begin_α:
                                                                                        jmp   n953_var_α
n952_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n953_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2560], rax                    # result
                        mov              qword ptr [rsp + 2568], rdx
                                                                                        jmp   n954_var_α
n953_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n954_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 2576], rax                    # result
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n955_call_α
n954_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n955_call_α:
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn1542:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1542]                        # fn
                        lea              rsi, [rsp + 2512]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n956_assign_α
n955_call_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n956_assign_α:
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n957_statement_end_α
n956_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n957_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n957_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n958_goto_α:
                                                                                        jmp   n650_statement_begin_α
n958_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n959_goto_α:
                                                                                        jmp   n960_statement_begin_α
n959_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n960_statement_begin_α:
                                                                                        jmp   n961_var_α
n960_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2752], rax                    # result
                        mov              qword ptr [rsp + 2760], rdx
                                                                                        jmp   n962_var_α
n961_var_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n962_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 2736], rax                    # result
                        mov              qword ptr [rsp + 2744], rdx
                                                                                        jmp   n963_coerce_string_α
n962_var_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n963_coerce_string_α:
                        lea              rdi, [rsp + 2736]                              # in
                        lea              rsi, [rsp + 2720]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n964_match_begin_α
n963_coerce_string_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n964_match_begin_α:
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
.Lx1555_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n965_match_sequence_α
n964_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx1555_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1555_1
                                                                                        jmp   .Lx1555_0
.Lx1555_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx1555_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1555_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n965_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n969_match_break_α
n965_match_sequence_as:
                                                                                        jmp   n966_match_end_α
n965_match_sequence_β:
                                                                                        jmp   n968_match_patref_β
n965_match_sequence_af:
                                                                                        jmp   n964_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n966_match_end_α:
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
.Lx1559_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1559_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1559_1:
                        test             rax, rax
                                                                                        je    .Lx1559_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1559_3]
                        lea              rdx, [rip + .Lx1559_4]
                                                                                        jmp   rax
.Lx1559_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1559_1
.Lx1559_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1559_1
.Lx1559_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1559_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1559_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n967_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n967_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n967_statement_end_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n968_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1562_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1562_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1562_10
.Lx1562_9:
                        xor              eax, eax
.Lx1562_10:
                        test             rax, rax
                                                                                        jz    .Lx1562_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1562_4]
                        lea              rdx, [rip + .Lx1562_5]
                                                                                        jmp   rax
.Lx1562_4:
                                                                                        jmp   n966_match_end_α
.Lx1562_5:
                                                                                        jmp   n969_match_break_β
.Lx1562_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1562_2:
                        test             rax, rax
                                                                                        je    .Lx1562_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1562_7]
                        lea              rdx, [rip + .Lx1562_8]
                                                                                        jmp   rax
.Lx1562_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1562_2
.Lx1562_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1562_2
.Lx1562_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n969_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1562_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n966_match_end_α
.Lx1562_6:
                        add              rsp, 16
                                                                                        jmp   n969_match_break_β
n968_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n969_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx1564_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1564_240
                        add              rsp, 16
                                                                                        jmp   n964_match_begin_β
.Lx1564_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1564_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1564_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1564_1
                        add              edx, 1
                                                                                        jmp   .Lx1564_2
.Lx1564_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1564_0
.Lx1564_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n968_match_patref_α
n969_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n964_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n970_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n971_goto_α:
                                                                                        jmp   n654_statement_begin_α
n971_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n972_goto_α:
                                                                                        jmp   n973_statement_begin_α
n972_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n973_statement_begin_α:
                                                                                        jmp   n974_var_α
n973_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n974_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n975_match_begin_α
n974_var_β:
                        add              rsp, 16
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n975_match_begin_α:
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
.Lx1573_0:
                        mov              r14d, dword ptr [rbp + 2784]
                                                                                        jmp   n976_match_sequence_α
n975_match_begin_β:
                        add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, r15d
                                                                                        jg    .Lx1573_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1573_1
                                                                                        jmp   .Lx1573_0
.Lx1573_1:
                        mov              rax, qword ptr [rbp + 2792]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2800]
                        mov              r10, qword ptr [1879048192]
.Lx1573_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1573_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n976_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n980_lit_integer_α
n976_match_sequence_as:
                                                                                        jmp   n977_match_end_α
n976_match_sequence_β:
                                                                                        jmp   n979_match_patref_β
n976_match_sequence_af:
                                                                                        jmp   n975_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n977_match_end_α:
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
.Lx1577_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1577_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1577_1:
                        test             rax, rax
                                                                                        je    .Lx1577_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1577_3]
                        lea              rdx, [rip + .Lx1577_4]
                                                                                        jmp   rax
.Lx1577_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1577_1
.Lx1577_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1577_1
.Lx1577_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1577_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1577_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n978_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n978_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n978_statement_end_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n979_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1580_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1580_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1580_10
.Lx1580_9:
                        xor              eax, eax
.Lx1580_10:
                        test             rax, rax
                                                                                        jz    .Lx1580_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1580_4]
                        lea              rdx, [rip + .Lx1580_5]
                                                                                        jmp   rax
.Lx1580_4:
                                                                                        jmp   n977_match_end_α
.Lx1580_5:
                                                                                        jmp   n975_match_begin_β
.Lx1580_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1580_2:
                        test             rax, rax
                                                                                        je    .Lx1580_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1580_7]
                        lea              rdx, [rip + .Lx1580_8]
                                                                                        jmp   rax
.Lx1580_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1580_2
.Lx1580_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1580_2
.Lx1580_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n975_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1580_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n977_match_end_α
.Lx1580_6:
                        add              rsp, 16
                                                                                        jmp   n975_match_begin_β
n979_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n980_lit_integer_α:
                        mov              qword ptr [rsp + 2880], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1581_0]
                        mov              qword ptr [rsp + 2888], rax
                                                                                        jmp   n981_match_pos_α
n980_lit_integer_β:
                                                                                        jmp   n975_match_begin_β
.Lx1581_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n981_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n975_match_begin_β
                                                                                        jmp   n979_match_patref_α
n981_match_pos_β:
                                                                                        jmp   n975_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n982_goto_α:
                                                                                        jmp   n658_statement_begin_α
n982_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n983_goto_α:
                                                                                        jmp   n984_statement_begin_α
n983_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n984_statement_begin_α:
                                                                                        jmp   n985_var_α
n984_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n985_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n986_match_begin_α
n985_var_β:
                        add              rsp, 16
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n986_match_begin_α:
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
.Lx1589_0:
                        mov              r14d, dword ptr [rbp + 2944]
                                                                                        jmp   n987_match_sequence_α
n986_match_begin_β:
                        add              dword ptr [rbp + 2944], 1
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, r15d
                                                                                        jg    .Lx1589_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1589_1
                                                                                        jmp   .Lx1589_0
.Lx1589_1:
                        mov              rax, qword ptr [rbp + 2952]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2960]
                        mov              r10, qword ptr [1879048192]
.Lx1589_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1589_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n987_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n992_match_patref_α
n987_match_sequence_as:
                                                                                        jmp   n988_match_end_α
n987_match_sequence_β:
                                                                                        jmp   n991_match_rpos_β
n987_match_sequence_af:
                                                                                        jmp   n986_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n988_match_end_α:
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
.Lx1593_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1593_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1593_1:
                        test             rax, rax
                                                                                        je    .Lx1593_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1593_3]
                        lea              rdx, [rip + .Lx1593_4]
                                                                                        jmp   rax
.Lx1593_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1593_1
.Lx1593_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1593_1
.Lx1593_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1593_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1593_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n989_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n989_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n989_statement_end_β:
                                                                                        jmp   n970_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n990_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1596_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n991_match_rpos_α
n990_lit_integer_β:
                                                                                        jmp   n992_match_patref_β
.Lx1596_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n991_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n992_match_patref_β
                                                                                        jmp   n988_match_end_α
n991_match_rpos_β:
                                                                                        jmp   n992_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n992_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1598_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1598_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1598_10
.Lx1598_9:
                        xor              eax, eax
.Lx1598_10:
                        test             rax, rax
                                                                                        jz    .Lx1598_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1598_4]
                        lea              rdx, [rip + .Lx1598_5]
                                                                                        jmp   rax
.Lx1598_4:
                                                                                        jmp   n990_lit_integer_α
.Lx1598_5:
                                                                                        jmp   n986_match_begin_β
.Lx1598_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1598_2:
                        test             rax, rax
                                                                                        je    .Lx1598_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1598_7]
                        lea              rdx, [rip + .Lx1598_8]
                                                                                        jmp   rax
.Lx1598_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1598_2
.Lx1598_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1598_2
.Lx1598_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n986_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1598_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n990_lit_integer_α
.Lx1598_6:
                        add              rsp, 16
                                                                                        jmp   n986_match_begin_β
n992_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n993_goto_α:
                                                                                        jmp   n662_statement_begin_α
n993_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n994_goto_α:
                                                                                        jmp   n995_statement_begin_α
n994_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n995_statement_begin_α:
                                                                                        jmp   n996_lit_integer_α
n995_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n996_lit_integer_α:
                        mov              qword ptr [rsp + 3088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1603_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n997_assign_α
n996_lit_integer_β:
                                                                                        jmp   n999_statement_begin_α
.Lx1603_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n997_assign_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n998_statement_end_α
n997_assign_β:
                                                                                        jmp   n999_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n998_statement_end_α:
                                                                                        jmp   n999_statement_begin_α
n998_statement_end_β:
                                                                                        jmp   n999_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n999_statement_begin_α:
                                                                                        jmp   n1000_var_α
n999_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3104], rax                    # result
                        mov              qword ptr [rsp + 3112], rdx
                                                                                        jmp   n1001_assign_α
n1000_var_β:
                                                                                        jmp   n1003_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_assign_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n1002_statement_end_α
n1001_assign_β:
                                                                                        jmp   n1003_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_statement_end_α:
                                                                                        jmp   n1003_statement_begin_α
n1002_statement_end_β:
                                                                                        jmp   n1003_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_statement_begin_α:
                                                                                        jmp   n1004_var_α
n1003_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3296], rax                    # result
                        mov              qword ptr [rsp + 3304], rdx
                                                                                        jmp   n1005_var_α
n1004_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3280], rax                    # result
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n1006_coerce_string_α
n1005_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_coerce_string_α:
                        lea              rdi, [rsp + 3280]                              # in
                        lea              rsi, [rsp + 3264]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n1007_match_begin_α
n1006_coerce_string_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_match_begin_α:
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
.Lx1620_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n1008_match_assign_save_α
n1007_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1620_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1620_1
                                                                                        jmp   .Lx1620_0
.Lx1620_1:
                        mov              r10, qword ptr [1879048192]
.Lx1620_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1620_2
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
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n1009_match_break_α
n1008_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n1007_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1009_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx1624_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1624_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_match_begin_β
.Lx1624_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1624_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1624_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1624_1
                        add              edx, 1
                                                                                        jmp   .Lx1624_2
.Lx1624_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1624_0
.Lx1624_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n1010_match_assign_cond_α
n1009_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1010_match_assign_cond_α:
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
                                                                                        jmp   n1011_match_end_α
n1010_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n1009_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n1011_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1628_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1628_9
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
.Lx1628_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1628_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1628_1:
                        test             rax, rax
                                                                                        je    .Lx1628_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1628_3]
                        lea              rdx, [rip + .Lx1628_4]
                                                                                        jmp   rax
.Lx1628_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1628_1
.Lx1628_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1628_1
.Lx1628_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1628_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1628_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n1012_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_statement_end_α:
                                                                                        jmp   n1013_statement_begin_α
n1012_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1013_statement_begin_α:
                                                                                        jmp   n1014_var_α
n1013_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3376], rax                    # result
                        mov              qword ptr [rsp + 3384], rdx
                                                                                        jmp   n1015_call_α
n1014_var_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_call_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn1635:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1635]                        # fn
                        lea              rsi, [rsp + 3344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                                                                                        jmp   n1016_lit_integer_α
n1015_call_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_integer_α:
                        mov              qword ptr [rsp + 3392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1636_0]
                        mov              qword ptr [rsp + 3400], rax
                                                                                        jmp   n1017_binop_α
n1016_lit_integer_β:
                                                                                        jmp   n816_save_restore_α
.Lx1636_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1017_binop_α:
                        mov              eax, dword ptr [rsp + 3328]
                        cmp              eax, 3
                                                                                        jne   .Lx1637_0
                        mov              rax, qword ptr [rsp + 3336]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3312], 3
                        mov              qword ptr [rsp + 3320], rax
                                                                                        jmp   n1018_assign_α
.Lx1637_0:
                        mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              rdx, qword ptr [rsp + 3392]
                        mov              rcx, qword ptr [rsp + 3400]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n816_save_restore_α
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                                                                                        jmp   n1018_assign_α
n1017_binop_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_assign_α:
                        mov              rax, qword ptr [rsp + 3312]
                        mov              rdx, qword ptr [rsp + 3320]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n1019_statement_end_α
n1018_assign_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_statement_end_α:
                                                                                        jmp   n816_save_restore_α
n1019_statement_end_β:
                                                                                        jmp   n816_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_goto_α:
                                                                                        jmp   n666_statement_begin_α
n1020_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1021_goto_α:
                                                                                        jmp   n723_statement_begin_α
n1021_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1022_goto_α:
                                                                                        jmp   n727_statement_begin_α
n1022_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1023_goto_α:
                                                                                        jmp   n738_statement_begin_α
n1023_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1024_goto_α:
                                                                                        jmp   n742_statement_begin_α
n1024_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1025_goto_α:
                                                                                        jmp   n753_statement_begin_α
n1025_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1026_goto_α:
                                                                                        jmp   n757_statement_begin_α
n1026_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1027_goto_α:
                                                                                        jmp   n764_statement_begin_α
n1027_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1028_goto_α:
                                                                                        jmp   n772_statement_begin_α
n1028_goto_β:
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
