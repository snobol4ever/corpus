                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__pad_left_α
proc_LBL__pad_left_α:
proc_LBL__pad_left_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__pad_left_ω
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
.Lrkfnzd31:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd31]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 16
                                                                                        jmp   n7_var_α
.Lx30_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                        add              rsp, 16
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_binop_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
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
                                                                                        jmp   n6_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_α:
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_call_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd39:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd39]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx38_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s4_ω_d96
.Lx38_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_var_α
n8_call_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s4_ω_d96
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx42_1
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
.Lx42_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n11_coerce_numeric_α
.Lx42_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx44_1
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
.Lx44_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_cmp_test_α
.Lx44_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n12_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx46_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s4_ω_d160
.Lx46_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n16_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_α:
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s4_ω_d208:
                        add              rsp, 208
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d192:
                        add              rsp, 192
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d176:
                        add              rsp, 176
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d160:
                        add              rsp, 160
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d144:
                        add              rsp, 144
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d128:
                        add              rsp, 128
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d112:
                        add              rsp, 112
                                                                                        jmp   n17_var_α
proc_LBL__pad_left_zw5s4_ω_d96:
                        add              rsp, 96
                                                                                        jmp   n17_var_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_call_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd56:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd56]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s5_ω_d48
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_binop_α
n20_call_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s5_ω_d48
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx57_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s5_ω_d64
.Lx57_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_call_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:
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
.Lrkfnzd59:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd59]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx58_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s5_ω_d80
.Lx58_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_var_α
n22_call_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_left_zw5s5_ω_d80
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n26_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_α:
                        add              rsp, 128
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d128:
                        add              rsp, 128
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d112:
                        add              rsp, 112
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d96:
                        add              rsp, 96
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d80:
                        add              rsp, 80
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d64:
                        add              rsp, 64
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d48:
                        add              rsp, 48
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d32:
                        add              rsp, 32
                                                                                        jmp   n27_save_restore_α
proc_LBL__pad_left_zw5s5_ω_d16:
                        add              rsp, 16
                                                                                        jmp   n27_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:
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
                        .globl           proc_LBL__pad_right_α
proc_LBL__pad_right_α:
proc_LBL__pad_right_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n68_var_α
n67_goto_β:
                                                                                        jmp   proc_LBL__pad_right_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_call_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd98:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd98]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx97_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_right_zw5s8_ω_d32
.Lx97_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n70_lit_string_α
n69_call_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_right_zw5s8_ω_d32
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_binop_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n73_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_α:
                        add              rsp, 80
                                                                                        jmp   n74_var_α
proc_LBL__pad_right_zw5s8_ω_d80:
                        add              rsp, 80
                                                                                        jmp   n74_var_α
proc_LBL__pad_right_zw5s8_ω_d64:
                        add              rsp, 64
                                                                                        jmp   n74_var_α
proc_LBL__pad_right_zw5s8_ω_d48:
                        add              rsp, 48
                                                                                        jmp   n74_var_α
proc_LBL__pad_right_zw5s8_ω_d32:
                        add              rsp, 32
                                                                                        jmp   n74_var_α
proc_LBL__pad_right_zw5s8_ω_d16:
                        add              rsp, 16
                                                                                        jmp   n74_var_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_call_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd106:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd106]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx105_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_right_zw5s9_ω_d16
.Lx105_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_var_α
n75_call_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_right_zw5s9_ω_d16
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx109_1
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n78_coerce_numeric_α
.Lx109_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx111_1
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n79_cmp_test_α
.Lx111_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n79_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n79_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx113_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__pad_right_zw5s9_ω_d80
.Lx113_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n81_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n83_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_α:
                                                                                        jmp   n94_save_restore_α
proc_LBL__pad_right_zw5s9_ω_d128:
                        add              rsp, 128
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d112:
                        add              rsp, 112
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d96:
                        add              rsp, 96
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d80:
                        add              rsp, 80
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d64:
                        add              rsp, 64
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d48:
                        add              rsp, 48
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d32:
                        add              rsp, 32
                                                                                        jmp   n84_var_α
proc_LBL__pad_right_zw5s9_ω_d16:
                        add              rsp, 16
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n88_call_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn124:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]                         # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n94_save_restore_α
                                                                                        jmp   n89_binop_α
n88_call_β:
                                                                                        jmp   n94_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx125_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx125_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n90_call_α
.Lx125_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n94_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n90_call_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn127:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]                         # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n94_save_restore_α
                                                                                        jmp   n91_binop_α
n90_call_β:
                                                                                        jmp   n94_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n93_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_α:
                                                                                        jmp   n94_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n94_save_restore_α:
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
                        .globl           proc_LBL__ltrim_α
proc_LBL__ltrim_α:
proc_LBL__ltrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n135_lit_string_α
n134_goto_β:
                                                                                        jmp   proc_LBL__ltrim_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n136_lit_integer_α
n135_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_call_α
n136_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx170_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
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
                                                                                        jne   .Lx171_240
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx171_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_binop_α
n137_call_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_lit_integer_α
n138_binop_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_call_α
n139_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx173_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:
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
                                                                                        jne   .Lx174_240
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_binop_α
n140_call_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_lit_integer_α
n141_binop_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_call_α
n142_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx176_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd65:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd65]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx177_240
                        add              rsp, 16
                                                                                        jmp   n147_var_α
.Lx177_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_binop_α
n143_call_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_assign_α
n144_binop_β:
                        add              rsp, 16
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n146_statement_α
n145_assign_β:
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_α:
                                                                                        jmp   n147_var_α
n146_statement_β:
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_var_α
n147_var_β:
                        add              rsp, 16
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n149_coerce_string_α
n148_var_β:
                        add              rsp, 16
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n150_match_begin_α
n149_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_match_begin_α:
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
.Lx187_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n151_match_sequence_α
n150_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx187_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx187_1
                                                                                        jmp   .Lx187_0
.Lx187_1:
                        mov              r10, qword ptr [1879048192]
.Lx187_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx187_2
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
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n151_match_sequence_α:
                                                                                        jmp   n162_lit_integer_α
n151_match_sequence_as:
                                                                                        jmp   n152_match_end_α
n151_match_sequence_β:
                                                                                        jmp   n158_match_assign_cond_β
n151_match_sequence_af:
                                                                                        jmp   n150_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx191_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_9
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
.Lx191_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx191_1:
                        test             rax, rax
                                                                                        je    .Lx191_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx191_1
.Lx191_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx191_1
.Lx191_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx191_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1264]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1272]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1280]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1288]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_match_replace_α
n153_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n164_var_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n154_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx194_0]                # name
                        mov              rsi, qword ptr [rbp + 1488]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1496]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1216]                    # start
                        mov              r8, qword ptr [rbp + 1240]                     # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx194_1
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "s"
.Lx194_1:
                                                                                        jmp   n155_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_α:
                                                                                        jmp   n164_var_α
n155_statement_β:
                                                                                        jmp   n164_var_α
proc_LBL__ltrim_zw5s14_ω_d1744:
                        add              rsp, 1744
                                                                                        jmp   n164_var_α
proc_LBL__ltrim_zw5s14_ω_d1728:
                        add              rsp, 1728
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n157_match_rem_α
n156_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n159_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n158_match_assign_cond_α
n157_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n159_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n158_match_assign_cond_α:
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
                                                                                        jmp   n152_match_end_α
n158_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n157_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n159_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx203_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n161_match_span_α
.Lx203_21:
                        lea              rax, [rip + .Lx203_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n160_match_lit_α
n159_match_alternate_s0:
                        lea              rax, [rip + .Lx203_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n159_match_alternate_as
n159_match_alternate_s1:
                        lea              rax, [rip + .Lx203_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n159_match_alternate_as
.Lx203_40:
                                                                                        jmp   n161_match_span_β
.Lx203_41:
                                                                                        jmp   n160_match_lit_β
n159_match_alternate_as:
                                                                                        jmp   n156_match_assign_save_α
n159_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n159_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx203_19:
                                                                                        jmp   n163_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n160_match_lit_α:
                                                                                        jmp   n159_match_alternate_s1
n160_match_lit_β:
                                                                                        jmp   n159_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n161_match_span_α:
                        mov              dword ptr [rbp + 1392], 0
                        mov              r8, qword ptr [rbp + 1464]
                        mov              r9d, dword ptr [rbp + 1460]
.Lx207_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jge   .Lx207_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx207_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx207_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx207_3
                        add              edx, 1
                                                                                        jmp   .Lx207_2
.Lx207_3:
                        add              dword ptr [rbp + 1392], 1
                                                                                        jmp   .Lx207_0
.Lx207_1:
                        mov              eax, dword ptr [rbp + 1392]
                        test             eax, eax
                                                                                        jle   n159_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1396], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n159_match_alternate_s0
n161_match_span_β:
                        mov              r14d, dword ptr [rbp + 1396]
                                                                                        jmp   n159_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rsp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n163_match_pos_α
n162_lit_integer_β:
                                                                                        jmp   n150_match_begin_β
.Lx208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n150_match_begin_β
                                                                                        jmp   n159_match_alternate_α
n163_match_pos_β:
                                                                                        jmp   n150_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_assign_α
n164_var_β:
                        add              rsp, 16
                                                                                        jmp   n167_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n166_statement_α
n165_assign_β:
                                                                                        jmp   n167_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_α:
                                                                                        jmp   n167_save_restore_α
n166_statement_β:
                                                                                        jmp   n167_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n167_save_restore_α:
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
                        .globl           proc_LBL__rtrim_α
proc_LBL__rtrim_α:
proc_LBL__rtrim_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n216_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n217_lit_string_α
n216_goto_β:
                                                                                        jmp   proc_LBL__rtrim_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_lit_integer_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n219_call_α
.Lx266_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd92:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd92]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                                                                                        jmp   n229_var_α
.Lx267_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n220_binop_α
n219_call_β:
                        add              rsp, 16
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n221_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n222_call_α
.Lx269_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd95:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd95]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx270_240
                        add              rsp, 16
                                                                                        jmp   n229_var_α
.Lx270_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n223_binop_α
n222_call_β:
                        add              rsp, 16
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n225_call_α
.Lx272_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:
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
                                                                                        jne   .Lx273_240
                        add              rsp, 16
                                                                                        jmp   n229_var_α
.Lx273_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n226_binop_α
n225_call_β:
                        add              rsp, 16
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n227_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n228_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_α:
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n230_call_α
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd280:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd280]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx279_240
                        add              rsp, 16
                                                                                        jmp   n233_var_α
.Lx279_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n231_assign_α
n230_call_β:
                        add              rsp, 16
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n232_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_α:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n235_coerce_numeric_α
.Lx285_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n235_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx287_1
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
.Lx287_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n236_coerce_numeric_α
.Lx287_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n236_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n236_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx289_1
                        cmp              eax, 3
                                                                                        jne   .Lx289_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx289_0
.Lx289_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n237_cmp_test_α
.Lx289_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n237_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n237_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx291_240
                        add              rsp, 16
                                                                                        jmp   proc_LBL__rtrim_zw5s20_ω_d272
.Lx291_240:
                                                                                        jmp   n238_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_α:
                                                                                        jmp   n257_var_α
proc_LBL__rtrim_zw5s20_ω_d272:
                        add              rsp, 272
                                                                                        jmp   n239_var_α
proc_LBL__rtrim_zw5s20_ω_d256:
                        add              rsp, 256
                                                                                        jmp   n239_var_α
proc_LBL__rtrim_zw5s20_ω_d240:
                        add              rsp, 240
                                                                                        jmp   n239_var_α
proc_LBL__rtrim_zw5s20_ω_d224:
                        add              rsp, 224
                                                                                        jmp   n239_var_α
proc_LBL__rtrim_zw5s20_ω_d208:
                        add              rsp, 208
                                                                                        jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n241_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n242_call_α
.Lx296_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:
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
.Lrkfn298:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]                         # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n245_var_α
                                                                                        jmp   n243_assign_α
n242_call_β:
                                                                                        jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n244_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_α:
                                                                                        jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n246_var_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n247_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n248_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_match_begin_α:
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
.Lx307_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n249_match_any_α
n248_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx307_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx307_1
                                                                                        jmp   .Lx307_0
.Lx307_1:
                        mov              r10, qword ptr [1879048192]
.Lx307_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_2
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
                                                                                        jmp   n257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n248_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              edx, 0
.Lx309_5:
                        cmp              edx, r9d
                                                                                        jge   n248_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx309_6
                        add              edx, 1
                                                                                        jmp   .Lx309_5
.Lx309_6:
                        add              r14d, 1
                                                                                        jmp   n250_match_end_α
n249_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n248_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx311_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx311_9
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
.Lx311_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx311_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx311_1:
                        test             rax, rax
                                                                                        je    .Lx311_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4]
                                                                                        jmp   rax
.Lx311_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx311_1
.Lx311_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx311_1
.Lx311_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx311_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx311_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                                                                                        jmp   n251_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_α:
                                                                                        jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n254_binop_α
.Lx315_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx316_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n255_assign_α
.Lx316_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx316_240
                        add              rsp, 32
                                                                                        jmp   n233_var_α
.Lx316_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n256_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_α:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n258_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n259_var_α
.Lx321_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n260_call_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
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
.Lrkfnzd324:            .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd324]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx323_240
                        add              rsp, 16
                                                                                        jmp   n263_save_restore_α
.Lx323_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n261_assign_α
n260_call_β:
                        add              rsp, 16
                                                                                        jmp   n263_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n262_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_α:
                                                                                        jmp   n263_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n263_save_restore_α:
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
                        .globl           proc_LBL__trimws_α
proc_LBL__trimws_α:
proc_LBL__trimws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n331_var_α
n330_goto_β:
                                                                                        jmp   proc_LBL__trimws_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n332_call_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx340_0]                # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx340_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx340_6]
                        lea              rdx, [rip + .Lx340_7]
                                                                                        jmp   rax
.Lx340_6:
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
                                                                                        jmp   .Lx340_2
.Lx340_7:
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
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        add              rsp, 80
.Lx340_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx340_240
                        add              rsp, 16
                                                                                        jmp   n336_save_restore_α
.Lx340_240:
                                                                                        jmp   n333_call_α
n332_call_β:
                                                                                        jmp   n336_save_restore_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx342_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx342_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx342_6]
                        lea              rdx, [rip + .Lx342_7]
                                                                                        jmp   rax
.Lx342_6:
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
                                                                                        jmp   .Lx342_2
.Lx342_7:
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
                                                                                        jmp   .Lx342_2
.Lx342_5:
                        add              rsp, 64
.Lx342_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                                                                                        jmp   n336_save_restore_α
.Lx342_240:
                                                                                        jmp   n334_assign_α
n333_call_β:
                                                                                        jmp   n336_save_restore_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n335_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_α:
                                                                                        jmp   n336_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n336_save_restore_α:
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
                        .globl           proc_LBL__repeat_α
proc_LBL__repeat_α:
proc_LBL__repeat_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n348_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n349_var_α
n348_goto_β:
                                                                                        jmp   proc_LBL__repeat_ω
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n351_call_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:
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
.Lrkfnzd359:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd359]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx358_240
                        add              rsp, 16
                                                                                        jmp   n354_save_restore_α
.Lx358_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n352_assign_α
n351_call_β:
                        add              rsp, 16
                                                                                        jmp   n354_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n353_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_α:
                                                                                        jmp   n354_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n354_save_restore_α:
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
                        .globl           proc_LBL__contains_α
proc_LBL__contains_α:
proc_LBL__contains_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n365_goto_α:
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
                                                                                        jmp   n366_var_α
n365_goto_β:
                                                                                        jmp   proc_LBL__contains_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 160], rax                     # result
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 144], rax                     # result
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n368_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_coerce_string_α:
                        lea              rdi, [rsp + 144]                               # in
                        lea              rsi, [rsp + 128]                               # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n369_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n369_match_begin_α:
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
.Lx383_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n370_match_sequence_α
n369_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx383_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx383_1
                                                                                        jmp   .Lx383_0
.Lx383_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx383_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx383_2
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
                                                                                        jmp   n376_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n370_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n375_match_break_α
n370_match_sequence_as:
                                                                                        jmp   n371_match_end_α
n370_match_sequence_β:
                                                                                        jmp   n374_match_patref_β
n370_match_sequence_af:
                                                                                        jmp   n369_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n371_match_end_α:
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
.Lx387_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx387_1:
                        test             rax, rax
                                                                                        je    .Lx387_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx387_3]
                        lea              rdx, [rip + .Lx387_4]
                                                                                        jmp   rax
.Lx387_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx387_1
.Lx387_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx387_1
.Lx387_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx387_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2648]                    # old_rbp
                                                                                        jmp   n372_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_α:
                                                                                        jmp   n373_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n373_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n374_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx392_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx392_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx392_10
.Lx392_9:
                        xor              eax, eax
.Lx392_10:
                        test             rax, rax
                                                                                        jz    .Lx392_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx392_4]
                        lea              rdx, [rip + .Lx392_5]
                                                                                        jmp   rax
.Lx392_4:
                                                                                        jmp   n371_match_end_α
.Lx392_5:
                                                                                        jmp   n375_match_break_β
.Lx392_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx392_2:
                        test             rax, rax
                                                                                        je    .Lx392_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx392_7]
                        lea              rdx, [rip + .Lx392_8]
                                                                                        jmp   rax
.Lx392_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx392_2
.Lx392_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx392_2
.Lx392_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n375_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx392_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n371_match_end_α
.Lx392_6:
                        add              rsp, 16
                                                                                        jmp   n375_match_break_β
n374_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n375_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx394_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx394_240
                        add              rsp, 16
                                                                                        jmp   n369_match_begin_β
.Lx394_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx394_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx394_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx394_1
                        add              edx, 1
                                                                                        jmp   .Lx394_2
.Lx394_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx394_0
.Lx394_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n374_match_patref_α
n375_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n369_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n376_save_restore_α:
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
                        .globl           proc_LBL__startswith_α
proc_LBL__startswith_α:
proc_LBL__startswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n397_goto_α:
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
                                                                                        jmp   n398_var_α
n397_goto_β:
                                                                                        jmp   proc_LBL__startswith_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n399_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n399_match_begin_α:
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
.Lx411_0:
                        mov              r14d, dword ptr [rbp + 2752]
                                                                                        jmp   n400_match_sequence_α
n399_match_begin_β:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, r15d
                                                                                        jg    .Lx411_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx411_1
                                                                                        jmp   .Lx411_0
.Lx411_1:
                        mov              rax, qword ptr [rbp + 2760]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2768]
                        mov              r10, qword ptr [1879048192]
.Lx411_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx411_2
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
                                                                                        jmp   n407_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n400_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n405_lit_integer_α
n400_match_sequence_as:
                                                                                        jmp   n401_match_end_α
n400_match_sequence_β:
                                                                                        jmp   n404_match_patref_β
n400_match_sequence_af:
                                                                                        jmp   n399_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n401_match_end_α:
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
.Lx415_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx415_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx415_1:
                        test             rax, rax
                                                                                        je    .Lx415_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx415_3]
                        lea              rdx, [rip + .Lx415_4]
                                                                                        jmp   rax
.Lx415_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx415_1
.Lx415_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx415_1
.Lx415_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx415_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx415_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2800]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2808]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2816]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2824]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n402_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_α:
                                                                                        jmp   n403_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n403_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n404_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx420_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx420_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx420_10
.Lx420_9:
                        xor              eax, eax
.Lx420_10:
                        test             rax, rax
                                                                                        jz    .Lx420_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx420_4]
                        lea              rdx, [rip + .Lx420_5]
                                                                                        jmp   rax
.Lx420_4:
                                                                                        jmp   n401_match_end_α
.Lx420_5:
                                                                                        jmp   n399_match_begin_β
.Lx420_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx420_2:
                        test             rax, rax
                                                                                        je    .Lx420_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_7]
                        lea              rdx, [rip + .Lx420_8]
                                                                                        jmp   rax
.Lx420_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx420_2
.Lx420_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx420_2
.Lx420_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n399_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx420_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n401_match_end_α
.Lx420_6:
                        add              rsp, 16
                                                                                        jmp   n399_match_begin_β
n404_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:
                        mov              qword ptr [rsp + 2848], 3                      # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 2856], rax
                                                                                        jmp   n406_match_pos_α
n405_lit_integer_β:
                                                                                        jmp   n399_match_begin_β
.Lx421_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n406_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n399_match_begin_β
                                                                                        jmp   n404_match_patref_α
n406_match_pos_β:
                                                                                        jmp   n399_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n407_save_restore_α:
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
                        .globl           proc_LBL__endswith_α
proc_LBL__endswith_α:
proc_LBL__endswith_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n425_goto_α:
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
                                                                                        jmp   n426_var_α
n425_goto_β:
                                                                                        jmp   proc_LBL__endswith_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n427_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_match_begin_α:
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
.Lx439_0:
                        mov              r14d, dword ptr [rbp + 2912]
                                                                                        jmp   n428_match_sequence_α
n427_match_begin_β:
                        add              dword ptr [rbp + 2912], 1
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, r15d
                                                                                        jg    .Lx439_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx439_1
                                                                                        jmp   .Lx439_0
.Lx439_1:
                        mov              rax, qword ptr [rbp + 2920]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2928]
                        mov              r10, qword ptr [1879048192]
.Lx439_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx439_2
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
                                                                                        jmp   n435_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n428_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n434_match_patref_α
n428_match_sequence_as:
                                                                                        jmp   n429_match_end_α
n428_match_sequence_β:
                                                                                        jmp   n433_match_rpos_β
n428_match_sequence_af:
                                                                                        jmp   n427_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_match_end_α:
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
.Lx443_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx443_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx443_1:
                        test             rax, rax
                                                                                        je    .Lx443_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx443_3]
                        lea              rdx, [rip + .Lx443_4]
                                                                                        jmp   rax
.Lx443_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx443_1
.Lx443_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx443_1
.Lx443_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx443_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx443_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2960]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2968]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2976]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2984]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n430_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_α:
                                                                                        jmp   n431_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n431_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:
                        mov              qword ptr [rsp + 3024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 3032], rax
                                                                                        jmp   n433_match_rpos_α
n432_lit_integer_β:
                                                                                        jmp   n434_match_patref_β
.Lx448_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n433_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n434_match_patref_β
                                                                                        jmp   n429_match_end_α
n433_match_rpos_β:
                                                                                        jmp   n434_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n434_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx450_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx450_10
.Lx450_9:
                        xor              eax, eax
.Lx450_10:
                        test             rax, rax
                                                                                        jz    .Lx450_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx450_4]
                        lea              rdx, [rip + .Lx450_5]
                                                                                        jmp   rax
.Lx450_4:
                                                                                        jmp   n432_lit_integer_α
.Lx450_5:
                                                                                        jmp   n427_match_begin_β
.Lx450_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx450_2:
                        test             rax, rax
                                                                                        je    .Lx450_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx450_7]
                        lea              rdx, [rip + .Lx450_8]
                                                                                        jmp   rax
.Lx450_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx450_2
.Lx450_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx450_2
.Lx450_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n427_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx450_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n432_lit_integer_α
.Lx450_6:
                        add              rsp, 16
                                                                                        jmp   n427_match_begin_β
n434_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n435_save_restore_α:
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
                        .globl           proc_LBL__index_α
proc_LBL__index_α:
proc_LBL__index_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n453_goto_α:
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
                                                                                        jmp   n454_lit_integer_α
n453_goto_β:
                                                                                        jmp   proc_LBL__index_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n455_assign_α
.Lx477_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n456_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_α:
                                                                                        jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3072], rax                    # result
                        mov              qword ptr [rsp + 3080], rdx
                                                                                        jmp   n458_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              rdx, qword ptr [rsp + 3080]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n459_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_α:
                                                                                        jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3264], rax                    # result
                        mov              qword ptr [rsp + 3272], rdx
                                                                                        jmp   n461_var_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3248], rax                    # result
                        mov              qword ptr [rsp + 3256], rdx
                                                                                        jmp   n462_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n462_coerce_string_α:
                        lea              rdi, [rsp + 3248]                              # in
                        lea              rsi, [rsp + 3232]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n463_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n463_match_begin_α:
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
.Lx490_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n464_match_assign_save_α
n463_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx490_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx490_1
                                                                                        jmp   .Lx490_0
.Lx490_1:
                        mov              r10, qword ptr [1879048192]
.Lx490_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx490_2
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
                                                                                        jmp   n475_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n464_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n465_match_break_α
n464_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n463_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx494_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx494_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n463_match_begin_β
.Lx494_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx494_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx494_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx494_1
                        add              edx, 1
                                                                                        jmp   .Lx494_2
.Lx494_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx494_0
.Lx494_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n466_match_assign_cond_α
n465_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n463_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n466_match_assign_cond_α:
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
                                                                                        jmp   n467_match_end_α
n466_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n465_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n467_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx498_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx498_9
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
.Lx498_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx498_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx498_1:
                        test             rax, rax
                                                                                        je    .Lx498_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx498_3]
                        lea              rdx, [rip + .Lx498_4]
                                                                                        jmp   rax
.Lx498_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx498_1
.Lx498_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx498_1
.Lx498_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx498_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx498_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 3176]                    # old_rbp
                                                                                        jmp   n468_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_α:
                                                                                        jmp   n469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3344], rax                    # result
                        mov              qword ptr [rsp + 3352], rdx
                                                                                        jmp   n470_call_α
#-----------------------------------------------------------------------------------------------------------------------
n470_call_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn503:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]                         # fn
                        lea              rsi, [rsp + 3312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n475_save_restore_α
                                                                                        jmp   n471_lit_integer_α
n470_call_β:
                                                                                        jmp   n475_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:
                        mov              qword ptr [rsp + 3360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n472_binop_α
.Lx504_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n472_binop_α:
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 3
                                                                                        jne   .Lx505_0
                        mov              rax, qword ptr [rsp + 3304]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3280], 3
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n473_assign_α
.Lx505_0:
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 3360]
                        mov              rcx, qword ptr [rsp + 3368]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n475_save_restore_α
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n473_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n474_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_α:
                                                                                        jmp   n475_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n475_save_restore_α:
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
n511_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n512_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n512_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx516_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx516_1
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "pad_left"
.Lx516_1:
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
n517_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n518_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n518_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx522_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx522_1
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "pad_right"
.Lx522_1:
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
n523_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n524_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n524_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx528_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx528_1
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "ltrim"
.Lx528_1:
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
n529_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n530_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n530_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx534_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx534_1
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "rtrim"
.Lx534_1:
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
n535_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n536_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n536_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx540_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx540_1
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "trimws"
.Lx540_1:
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
n541_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n542_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n542_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx546_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx546_1
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "repeat"
.Lx546_1:
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
n547_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n548_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n548_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx552_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx552_1
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "contains"
.Lx552_1:
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
n553_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n554_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n554_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx558_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx558_1
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "startswith"
.Lx558_1:
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
n559_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n560_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n560_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx564_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx564_1
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "endswith"
.Lx564_1:
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
n565_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n566_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n566_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx570_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx570_1
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "index"
.Lx570_1:
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_α:
                                                                                        jmp   n572_statement_α
n571_statement_β:
                                                                                        jmp   n572_statement_α
#=======================================================================================================================
#         OUTPUT = 'endswith ok'          :(ew1)
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_α:
                                                                                        jmp   n573_statement_α
n572_statement_β:
                                                                                        jmp   n573_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_α:
                                                                                        jmp   n574_statement_α
n573_statement_β:
                                                                                        jmp   n574_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n574_statement_α:
                                                                                        jmp   n575_statement_α
n574_statement_β:
                                                                                        jmp   n575_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_α:
                                                                                        jmp   n576_statement_α
n575_statement_β:
                                                                                        jmp   n576_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_α:
                                                                                        jmp   n577_statement_α
n576_statement_β:
                                                                                        jmp   n577_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_α:
                                                                                        jmp   n578_statement_α
n577_statement_β:
                                                                                        jmp   n578_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n578_statement_α:
                                                                                        jmp   n579_statement_α
n578_statement_β:
                                                                                        jmp   n579_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n579_statement_α:
                                                                                        jmp   n580_statement_α
n579_statement_β:
                                                                                        jmp   n580_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n580_statement_α:
                                                                                        jmp   n581_statement_α
n580_statement_β:
                                                                                        jmp   n581_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n581_statement_α:
                                                                                        jmp   n582_statement_α
n581_statement_β:
                                                                                        jmp   n582_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n582_statement_α:
                                                                                        jmp   n583_statement_α
n582_statement_β:
                                                                                        jmp   n583_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_α:
                                                                                        jmp   n584_statement_α
n583_statement_β:
                                                                                        jmp   n584_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_α:
                                                                                        jmp   n585_statement_α
n584_statement_β:
                                                                                        jmp   n585_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_α:
                                                                                        jmp   n586_statement_α
n585_statement_β:
                                                                                        jmp   n586_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_α:
                                                                                        jmp   n587_statement_α
n586_statement_β:
                                                                                        jmp   n587_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n587_statement_α:
                                                                                        jmp   n588_statement_α
n587_statement_β:
                                                                                        jmp   n588_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n588_statement_α:
                                                                                        jmp   n589_statement_α
n588_statement_β:
                                                                                        jmp   n589_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_α:
                                                                                        jmp   n590_statement_α
n589_statement_β:
                                                                                        jmp   n590_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n590_statement_α:
                                                                                        jmp   n591_statement_α
n590_statement_β:
                                                                                        jmp   n591_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n591_statement_α:
                                                                                        jmp   n592_statement_α
n591_statement_β:
                                                                                        jmp   n592_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_α:
                                                                                        jmp   n593_lit_string_α
n592_statement_β:
                                                                                        jmp   n593_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n594_lit_integer_α
n593_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n597_statement_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n595_call_α
n594_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n597_statement_α
.Lx945_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:
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
.Lrkfnzd947:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd947]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx946_240
                        add              rsp, 16
                                                                                        jmp   n597_statement_α
.Lx946_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n596_statement_α
n595_call_β:
                        add              rsp, 16
                                                                                        jmp   n597_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_α:
                                                                                        jmp   n597_statement_α
n596_statement_β:
                                                                                        jmp   n597_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_α:
                                                                                        jmp   n598_lit_string_α
n597_statement_β:
                                                                                        jmp   n598_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n599_lit_integer_α
n598_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n604_lit_string_α
.Lx952_0:
                        .quad            .Lx952_0_s
.Lx952_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n600_lit_string_α
n599_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n604_lit_string_α
.Lx953_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n601_call_α
n600_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n604_lit_string_α
.Lx954_0:
                        .quad            .Lx954_0_s
.Lx954_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx956_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx956_5
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
                        lea              rcx, [rip + .Lx956_6]
                        lea              rdx, [rip + .Lx956_7]
                                                                                        jmp   rax
.Lx956_6:
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
                                                                                        jmp   .Lx956_2
.Lx956_7:
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
                                                                                        jmp   .Lx956_2
.Lx956_5:
                        add              rsp, 64
.Lx956_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx956_240
                        add              rsp, 16
                                                                                        jmp   n604_lit_string_α
.Lx956_240:
                                                                                        jmp   n602_assign_α
n601_call_β:
                                                                                        jmp   n604_lit_string_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          "pad_left"
#-----------------------------------------------------------------------------------------------------------------------
n602_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx957_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n603_statement_α
n602_assign_β:
                                                                                        jmp   n604_lit_string_α
.Lx957_0:
                        .quad            .Lx957_0_s
.Lx957_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n603_statement_α:
                                                                                        jmp   n604_lit_string_α
n603_statement_β:
                                                                                        jmp   n604_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n605_lit_integer_α
n604_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n610_lit_string_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n606_lit_string_α
n605_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n610_lit_string_α
.Lx961_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n607_call_α
n606_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n610_lit_string_α
.Lx962_0:
                        .quad            .Lx962_0_s
.Lx962_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n607_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx964_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx964_5
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
                        lea              rcx, [rip + .Lx964_6]
                        lea              rdx, [rip + .Lx964_7]
                                                                                        jmp   rax
.Lx964_6:
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
                                                                                        jmp   .Lx964_2
.Lx964_7:
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
                                                                                        jmp   .Lx964_2
.Lx964_5:
                        add              rsp, 64
.Lx964_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx964_240
                        add              rsp, 16
                                                                                        jmp   n610_lit_string_α
.Lx964_240:
                                                                                        jmp   n608_assign_α
n607_call_β:
                                                                                        jmp   n610_lit_string_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "pad_right"
#-----------------------------------------------------------------------------------------------------------------------
n608_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx965_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n609_statement_α
n608_assign_β:
                                                                                        jmp   n610_lit_string_α
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n609_statement_α:
                                                                                        jmp   n610_lit_string_α
n609_statement_β:
                                                                                        jmp   n610_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n611_call_α
n610_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n614_lit_string_α
.Lx968_0:
                        .quad            .Lx968_0_s
.Lx968_0_s:
                        .string          "   hello"
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx970_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx970_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx970_6]
                        lea              rdx, [rip + .Lx970_7]
                                                                                        jmp   rax
.Lx970_6:
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
                                                                                        jmp   .Lx970_2
.Lx970_7:
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
                                                                                        jmp   .Lx970_2
.Lx970_5:
                        add              rsp, 64
.Lx970_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx970_240
                        add              rsp, 16
                                                                                        jmp   n614_lit_string_α
.Lx970_240:
                                                                                        jmp   n612_assign_α
n611_call_β:
                                                                                        jmp   n614_lit_string_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n612_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx971_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n613_statement_α
n612_assign_β:
                                                                                        jmp   n614_lit_string_α
.Lx971_0:
                        .quad            .Lx971_0_s
.Lx971_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n613_statement_α:
                                                                                        jmp   n614_lit_string_α
n613_statement_β:
                                                                                        jmp   n614_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n615_call_α
n614_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n618_lit_string_α
.Lx974_0:
                        .quad            .Lx974_0_s
.Lx974_0_s:
                        .string          "hello   "
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx976_0]                # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx976_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx976_6]
                        lea              rdx, [rip + .Lx976_7]
                                                                                        jmp   rax
.Lx976_6:
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
                                                                                        jmp   .Lx976_2
.Lx976_7:
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
                                                                                        jmp   .Lx976_2
.Lx976_5:
                        add              rsp, 80
.Lx976_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx976_240
                        add              rsp, 16
                                                                                        jmp   n618_lit_string_α
.Lx976_240:
                                                                                        jmp   n616_assign_α
n615_call_β:
                                                                                        jmp   n618_lit_string_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n616_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx977_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n617_statement_α
n616_assign_β:
                                                                                        jmp   n618_lit_string_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n617_statement_α:
                                                                                        jmp   n618_lit_string_α
n617_statement_β:
                                                                                        jmp   n618_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n619_call_α
n618_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n622_lit_string_α
.Lx980_0:
                        .quad            .Lx980_0_s
.Lx980_0_s:
                        .string          "  hello  "
#-----------------------------------------------------------------------------------------------------------------------
n619_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx982_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx982_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx982_6]
                        lea              rdx, [rip + .Lx982_7]
                                                                                        jmp   rax
.Lx982_6:
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
                                                                                        jmp   .Lx982_2
.Lx982_7:
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
                                                                                        jmp   .Lx982_2
.Lx982_5:
                        add              rsp, 32
.Lx982_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx982_240
                        add              rsp, 16
                                                                                        jmp   n622_lit_string_α
.Lx982_240:
                                                                                        jmp   n620_assign_α
n619_call_β:
                                                                                        jmp   n622_lit_string_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "trimws"
#-----------------------------------------------------------------------------------------------------------------------
n620_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx983_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n621_statement_α
n620_assign_β:
                                                                                        jmp   n622_lit_string_α
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n621_statement_α:
                                                                                        jmp   n622_lit_string_α
n621_statement_β:
                                                                                        jmp   n622_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n623_lit_integer_α
n622_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n627_statement_α
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n624_call_α
n623_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n627_statement_α
.Lx987_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n624_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx989_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx989_5
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
                        lea              rcx, [rip + .Lx989_6]
                        lea              rdx, [rip + .Lx989_7]
                                                                                        jmp   rax
.Lx989_6:
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
                                                                                        jmp   .Lx989_2
.Lx989_7:
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
                                                                                        jmp   .Lx989_2
.Lx989_5:
                        add              rsp, 48
.Lx989_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx989_240
                        add              rsp, 16
                                                                                        jmp   n627_statement_α
.Lx989_240:
                                                                                        jmp   n625_assign_α
n624_call_β:
                                                                                        jmp   n627_statement_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "repeat"
#-----------------------------------------------------------------------------------------------------------------------
n625_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx990_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n626_statement_α
n625_assign_β:
                                                                                        jmp   n627_statement_α
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n626_statement_α:
                                                                                        jmp   n627_statement_α
n626_statement_β:
                                                                                        jmp   n627_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n627_statement_α:
                                                                                        jmp   n628_lit_string_α
n627_statement_β:
                                                                                        jmp   n628_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n628_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n629_lit_string_α
n628_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s57_ω_d320
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n630_call_α
n629_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s57_ω_d336
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n630_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx998_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx998_5
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
                        lea              rcx, [rip + .Lx998_6]
                        lea              rdx, [rip + .Lx998_7]
                                                                                        jmp   rax
.Lx998_6:
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
                                                                                        jmp   .Lx998_2
.Lx998_7:
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
                                                                                        jmp   .Lx998_2
.Lx998_5:
                        add              rsp, 48
.Lx998_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx998_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s57_ω_d352
.Lx998_240:
                                                                                        jmp   n631_statement_α
n630_call_β:
                                                                                        jmp   main_zw5s57_ω_d352
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "contains"
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_α:
                                                                                        jmp   n632_lit_string_α
n631_statement_β:
                        add              rsp, 368
                                                                                        jmp   n635_lit_string_α
main_zw5s57_ω_d352:
                        add              rsp, 352
                                                                                        jmp   n635_lit_string_α
main_zw5s57_ω_d336:
                        add              rsp, 336
                                                                                        jmp   n635_lit_string_α
main_zw5s57_ω_d320:
                        add              rsp, 320
                                                                                        jmp   n635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n633_assign_α
n632_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n638_statement_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "contains ok"
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1002_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n634_statement_α
n633_assign_β:
                                                                                        jmp   n638_statement_α
.Lx1002_0:
                        .quad            .Lx1002_0_s
.Lx1002_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_α:
                                                                                        jmp   n638_statement_α
n634_statement_β:
                                                                                        jmp   n638_statement_α
main_zw5s58_ω_d368:
                        add              rsp, 368
                                                                                        jmp   n638_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rsp + 4160], 2                      # result
                        mov              dword ptr [rsp + 4164], 14
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 4168], rax
                                                                                        jmp   n636_assign_α
n635_lit_string_β:
                                                                                        jmp   n638_statement_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "FAIL: contains"
#-----------------------------------------------------------------------------------------------------------------------
n636_assign_α:
                        mov              rsi, qword ptr [rsp + 4160]                    # val
                        mov              rdx, qword ptr [rsp + 4168]                    # val
                        mov              rdi, qword ptr [rip + .Lx1006_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n637_statement_α
n636_assign_β:
                                                                                        jmp   n638_statement_α
.Lx1006_0:
                        .quad            .Lx1006_0_s
.Lx1006_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_α:
                                                                                        jmp   n638_statement_α
n637_statement_β:
                                                                                        jmp   n638_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_α:
                                                                                        jmp   n639_lit_string_α
n638_statement_β:
                                                                                        jmp   n639_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n640_lit_string_α
n639_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s61_ω_d384
.Lx1011_0:
                        .quad            .Lx1011_0_s
.Lx1011_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n640_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n641_call_α
n640_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s61_ω_d400
.Lx1012_0:
                        .quad            .Lx1012_0_s
.Lx1012_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1014_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1014_5
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
                        lea              rcx, [rip + .Lx1014_6]
                        lea              rdx, [rip + .Lx1014_7]
                                                                                        jmp   rax
.Lx1014_6:
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
                                                                                        jmp   .Lx1014_2
.Lx1014_7:
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
                                                                                        jmp   .Lx1014_2
.Lx1014_5:
                        add              rsp, 48
.Lx1014_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1014_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s61_ω_d416
.Lx1014_240:
                                                                                        jmp   n642_statement_α
n641_call_β:
                                                                                        jmp   main_zw5s61_ω_d416
.Lx1014_0:
                        .quad            .Lx1014_0_s
.Lx1014_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n642_statement_α:
                                                                                        jmp   n643_lit_string_α
n642_statement_β:
                        add              rsp, 432
                                                                                        jmp   n646_lit_string_α
main_zw5s61_ω_d416:
                        add              rsp, 416
                                                                                        jmp   n646_lit_string_α
main_zw5s61_ω_d400:
                        add              rsp, 400
                                                                                        jmp   n646_lit_string_α
main_zw5s61_ω_d384:
                        add              rsp, 384
                                                                                        jmp   n646_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n644_assign_α
n643_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n649_statement_α
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n644_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1018_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n645_statement_α
n644_assign_β:
                                                                                        jmp   n649_statement_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_α:
                                                                                        jmp   n649_statement_α
n645_statement_β:
                                                                                        jmp   n649_statement_α
main_zw5s62_ω_d432:
                        add              rsp, 432
                                                                                        jmp   n649_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:
                        mov              qword ptr [rsp + 4288], 2                      # result
                        mov              dword ptr [rsp + 4292], 16
                        mov              rax, qword ptr [rip + .Lx1021_0]
                        mov              qword ptr [rsp + 4296], rax
                                                                                        jmp   n647_assign_α
n646_lit_string_β:
                                                                                        jmp   n649_statement_α
.Lx1021_0:
                        .quad            .Lx1021_0_s
.Lx1021_0_s:
                        .string          "FAIL: startswith"
#-----------------------------------------------------------------------------------------------------------------------
n647_assign_α:
                        mov              rsi, qword ptr [rsp + 4288]                    # val
                        mov              rdx, qword ptr [rsp + 4296]                    # val
                        mov              rdi, qword ptr [rip + .Lx1022_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n648_statement_α
n647_assign_β:
                                                                                        jmp   n649_statement_α
.Lx1022_0:
                        .quad            .Lx1022_0_s
.Lx1022_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_α:
                                                                                        jmp   n649_statement_α
n648_statement_β:
                                                                                        jmp   n649_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_α:
                                                                                        jmp   n650_lit_string_α
n649_statement_β:
                                                                                        jmp   n650_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n651_lit_string_α
n650_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s65_ω_d448
.Lx1027_0:
                        .quad            .Lx1027_0_s
.Lx1027_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n652_call_α
n651_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s65_ω_d464
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n652_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1030_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1030_5
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
                        lea              rcx, [rip + .Lx1030_6]
                        lea              rdx, [rip + .Lx1030_7]
                                                                                        jmp   rax
.Lx1030_6:
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
                                                                                        jmp   .Lx1030_2
.Lx1030_7:
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
                                                                                        jmp   .Lx1030_2
.Lx1030_5:
                        add              rsp, 48
.Lx1030_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1030_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s65_ω_d480
.Lx1030_240:
                                                                                        jmp   n653_statement_α
n652_call_β:
                                                                                        jmp   main_zw5s65_ω_d480
.Lx1030_0:
                        .quad            .Lx1030_0_s
.Lx1030_0_s:
                        .string          "endswith"
#-----------------------------------------------------------------------------------------------------------------------
n653_statement_α:
                                                                                        jmp   n654_lit_string_α
n653_statement_β:
                        add              rsp, 496
                                                                                        jmp   n657_lit_string_α
main_zw5s65_ω_d480:
                        add              rsp, 480
                                                                                        jmp   n657_lit_string_α
main_zw5s65_ω_d464:
                        add              rsp, 464
                                                                                        jmp   n657_lit_string_α
main_zw5s65_ω_d448:
                        add              rsp, 448
                                                                                        jmp   n657_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n655_assign_α
n654_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n660_statement_α
.Lx1033_0:
                        .quad            .Lx1033_0_s
.Lx1033_0_s:
                        .string          "endswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n655_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1034_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n656_statement_α
n655_assign_β:
                                                                                        jmp   n660_statement_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n656_statement_α:
                                                                                        jmp   n660_statement_α
n656_statement_β:
                                                                                        jmp   n660_statement_α
main_zw5s66_ω_d496:
                        add              rsp, 496
                                                                                        jmp   n660_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:
                        mov              qword ptr [rsp + 4416], 2                      # result
                        mov              dword ptr [rsp + 4420], 14
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rsp + 4424], rax
                                                                                        jmp   n658_assign_α
n657_lit_string_β:
                                                                                        jmp   n660_statement_α
.Lx1037_0:
                        .quad            .Lx1037_0_s
.Lx1037_0_s:
                        .string          "FAIL: endswith"
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:
                        mov              rsi, qword ptr [rsp + 4416]                    # val
                        mov              rdx, qword ptr [rsp + 4424]                    # val
                        mov              rdi, qword ptr [rip + .Lx1038_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n659_statement_α
n658_assign_β:
                                                                                        jmp   n660_statement_α
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_α:
                                                                                        jmp   n660_statement_α
n659_statement_β:
                                                                                        jmp   n660_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_α:
                                                                                        jmp   n661_lit_string_α
n660_statement_β:
                                                                                        jmp   n661_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n662_lit_string_α
n661_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s69_ω_d512
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1044_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n663_call_α
n662_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s69_ω_d528
.Lx1044_0:
                        .quad            .Lx1044_0_s
.Lx1044_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n663_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1046_0]               # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1046_5
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
                        lea              rcx, [rip + .Lx1046_6]
                        lea              rdx, [rip + .Lx1046_7]
                                                                                        jmp   rax
.Lx1046_6:
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
                                                                                        jmp   .Lx1046_2
.Lx1046_7:
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
                                                                                        jmp   .Lx1046_2
.Lx1046_5:
                        add              rsp, 48
.Lx1046_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1046_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s69_ω_d544
.Lx1046_240:
                                                                                        jmp   n664_statement_α
n663_call_β:
                                                                                        jmp   main_zw5s69_ω_d544
.Lx1046_0:
                        .quad            .Lx1046_0_s
.Lx1046_0_s:
                        .string          "startswith"
#-----------------------------------------------------------------------------------------------------------------------
n664_statement_α:
                                                                                        jmp   n665_lit_string_α
n664_statement_β:
                        add              rsp, 560
                                                                                        jmp   n668_lit_string_α
main_zw5s69_ω_d544:
                        add              rsp, 544
                                                                                        jmp   n668_lit_string_α
main_zw5s69_ω_d528:
                        add              rsp, 528
                                                                                        jmp   n668_lit_string_α
main_zw5s69_ω_d512:
                        add              rsp, 512
                                                                                        jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n666_assign_α
n665_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n671_statement_α
.Lx1049_0:
                        .quad            .Lx1049_0_s
.Lx1049_0_s:
                        .string          "FAIL: startswith matched wrong"
#-----------------------------------------------------------------------------------------------------------------------
n666_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1050_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n667_statement_α
n666_assign_β:
                                                                                        jmp   n671_statement_α
.Lx1050_0:
                        .quad            .Lx1050_0_s
.Lx1050_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n667_statement_α:
                                                                                        jmp   n671_statement_α
n667_statement_β:
                                                                                        jmp   n671_statement_α
main_zw5s71_ω_d560:
                        add              rsp, 560
                                                                                        jmp   n671_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:
                        mov              qword ptr [rsp + 4528], 2                      # result
                        mov              dword ptr [rsp + 4532], 16
                        mov              rax, qword ptr [rip + .Lx1053_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n669_assign_α
n668_lit_string_β:
                                                                                        jmp   n671_statement_α
.Lx1053_0:
                        .quad            .Lx1053_0_s
.Lx1053_0_s:
                        .string          "no startswith ok"
#-----------------------------------------------------------------------------------------------------------------------
n669_assign_α:
                        mov              rsi, qword ptr [rsp + 4528]                    # val
                        mov              rdx, qword ptr [rsp + 4536]                    # val
                        mov              rdi, qword ptr [rip + .Lx1054_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n670_statement_α
n669_assign_β:
                                                                                        jmp   n671_statement_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_α:
                                                                                        jmp   n671_statement_α
n670_statement_β:
                                                                                        jmp   n671_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n671_statement_α:
                                                                                        jmp   n672_lit_string_α
n671_statement_β:
                                                                                        jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n673_lit_string_α
n672_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n674_call_α
n673_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "oba"
#-----------------------------------------------------------------------------------------------------------------------
n674_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1062_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1062_5
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
                        lea              rcx, [rip + .Lx1062_6]
                        lea              rdx, [rip + .Lx1062_7]
                                                                                        jmp   rax
.Lx1062_6:
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
                                                                                        jmp   .Lx1062_2
.Lx1062_7:
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
                                                                                        jmp   .Lx1062_2
.Lx1062_5:
                        add              rsp, 64
.Lx1062_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1062_240
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
.Lx1062_240:
                                                                                        jmp   n675_assign_α
n674_call_β:
                                                                                        jmp   n677_lit_string_α
.Lx1062_0:
                        .quad            .Lx1062_0_s
.Lx1062_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n675_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1063_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n676_statement_α
n675_assign_β:
                                                                                        jmp   n677_lit_string_α
.Lx1063_0:
                        .quad            .Lx1063_0_s
.Lx1063_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n676_statement_α:
                                                                                        jmp   n677_lit_string_α
n676_statement_β:
                                                                                        jmp   n677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n678_lit_string_α
n677_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s74_ω_d624
.Lx1066_0:
                        .quad            .Lx1066_0_s
.Lx1066_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n679_call_α
n678_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s74_ω_d640
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n679_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1069_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1069_5
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
                        lea              rcx, [rip + .Lx1069_6]
                        lea              rdx, [rip + .Lx1069_7]
                                                                                        jmp   rax
.Lx1069_6:
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
                                                                                        jmp   .Lx1069_2
.Lx1069_7:
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
                                                                                        jmp   .Lx1069_2
.Lx1069_5:
                        add              rsp, 64
.Lx1069_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1069_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s74_ω_d656
.Lx1069_240:
                                                                                        jmp   n680_assign_α
n679_call_β:
                                                                                        jmp   main_zw5s74_ω_d656
.Lx1069_0:
                        .quad            .Lx1069_0_s
.Lx1069_0_s:
                        .string          "index"
#-----------------------------------------------------------------------------------------------------------------------
n680_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1070_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n681_statement_α
n680_assign_β:
                                                                                        jmp   main_zw5s74_ω_d672
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n681_statement_α:
                        add              rsp, 672
                                                                                        jmp   main_γ
n681_statement_β:
                        add              rsp, 672
                                                                                        jmp   main_γ
main_zw5s74_ω_d672:
                        add              rsp, 672
                                                                                        jmp   main_γ
main_zw5s74_ω_d656:
                        add              rsp, 656
                                                                                        jmp   main_γ
main_zw5s74_ω_d640:
                        add              rsp, 640
                                                                                        jmp   main_γ
main_zw5s74_ω_d624:
                        add              rsp, 624
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n682_goto_α:
                                                                                        jmp   n683_var_α
n682_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n684_call_α
n683_var_β:
                                                                                        jmp   n689_var_α
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1076:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1076]                        # fn
                        lea              rsi, [rsp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n689_var_α
                                                                                        jmp   n685_lit_string_α
n684_call_β:
                                                                                        jmp   n689_var_α
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:
                        mov              qword ptr [rsp + 128], 2                       # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n686_binop_α
n685_lit_string_β:
                                                                                        jmp   n689_var_α
.Lx1077_0:
                        .quad            .Lx1077_0_s
.Lx1077_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n686_binop_α:
                        mov              rdi, qword ptr [rsp + 64]                      # a
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n687_assign_α
n686_binop_β:
                                                                                        jmp   n689_var_α
#-----------------------------------------------------------------------------------------------------------------------
n687_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n688_statement_α
n687_assign_β:
                                                                                        jmp   n689_var_α
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_α:
                                                                                        jmp   n689_var_α
n688_statement_β:
                                                                                        jmp   n689_var_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n690_call_α
n689_var_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n690_call_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn1084:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1084]                        # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n699_var_α
                                                                                        jmp   n691_var_α
n690_call_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n692_coerce_numeric_α
n691_var_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n692_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx1087_1
                        cmp              eax, 3
                                                                                        jne   .Lx1087_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx1087_0
.Lx1087_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n693_coerce_numeric_α
.Lx1087_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n693_coerce_numeric_α
n692_coerce_numeric_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n693_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx1089_1
                        cmp              eax, 3
                                                                                        jne   .Lx1089_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx1089_0
.Lx1089_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n694_cmp_test_α
.Lx1089_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n694_cmp_test_α
n693_coerce_numeric_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n694_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    n699_var_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n695_var_α
n694_cmp_test_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n695_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 288], rax                     # result
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n696_binop_α
n695_var_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n696_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 288]                     # b
                        mov              rcx, qword ptr [rsp + 296]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n697_assign_α
n696_binop_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n697_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n698_statement_α
n697_assign_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n698_statement_α:
                                                                                        jmp   n709_save_restore_α
n698_statement_β:
                                                                                        jmp   n699_var_α
#=======================================================================================================================
#         startswith('foobar', 'bar')     :S(bad_sw2)
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n700_var_α
n699_var_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n701_var_α
n700_var_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n702_call_α
n701_var_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1101:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1101]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1100_240
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
.Lx1100_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n703_binop_α
n702_call_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n703_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1102_240
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
.Lx1102_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n704_call_α
n703_binop_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n704_call_α:
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
.Lrkfnzd1104:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1104]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1103_240
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
.Lx1103_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n705_var_α
n704_call_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n705_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n706_binop_α
n705_var_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n706_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n707_assign_α
n706_binop_β:
                        add              rsp, 16
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n707_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # pad_left
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n708_statement_α
n707_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_α:
                                                                                        jmp   n709_save_restore_α
n708_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n709_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n710_goto_α:
                                                                                        jmp   n573_statement_α
n710_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_goto_α:
                                                                                        jmp   n712_var_α
n711_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 576], rax                     # result
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n713_call_α
n712_var_β:
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n713_call_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn1116:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1116]                        # fn
                        lea              rsi, [rsp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n718_var_α
                                                                                        jmp   n714_lit_string_α
n713_call_β:
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n715_binop_α
n714_lit_string_β:
                                                                                        jmp   n718_var_α
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n715_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 592]                     # b
                        mov              rcx, qword ptr [rsp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n716_assign_α
n715_binop_β:
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n717_statement_α
n716_assign_β:
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n717_statement_α:
                                                                                        jmp   n718_var_α
n717_statement_β:
                                                                                        jmp   n718_var_α
#=======================================================================================================================
#         OUTPUT = index('foobar', 'xyz') ;* 0
#-----------------------------------------------------------------------------------------------------------------------
n718_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n719_call_α
n718_var_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n719_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1124:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1124]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1123_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d16
.Lx1123_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n720_var_α
n719_call_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d16
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n721_coerce_numeric_α
n720_var_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d32
#-----------------------------------------------------------------------------------------------------------------------
n721_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1127_1
                        cmp              eax, 3
                                                                                        jne   .Lx1127_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx1127_0
.Lx1127_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n722_coerce_numeric_α
.Lx1127_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n722_coerce_numeric_α
n721_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d48
#-----------------------------------------------------------------------------------------------------------------------
n722_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx1129_1
                        cmp              eax, 3
                                                                                        jne   .Lx1129_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1129_0
.Lx1129_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n723_cmp_test_α
.Lx1129_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n723_cmp_test_α
n722_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d64
#-----------------------------------------------------------------------------------------------------------------------
n723_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx1131_240
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d80
.Lx1131_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n724_var_α
n723_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d80
#-----------------------------------------------------------------------------------------------------------------------
n724_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n725_binop_α
n724_var_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d96
#-----------------------------------------------------------------------------------------------------------------------
n725_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n726_assign_α
n725_binop_β:
                        add              rsp, 16
                                                                                        jmp   main_zw5s9_ω_d112
#-----------------------------------------------------------------------------------------------------------------------
n726_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n727_statement_α
n726_assign_β:
                                                                                        jmp   main_zw5s9_ω_d128
#-----------------------------------------------------------------------------------------------------------------------
n727_statement_α:
                        add              rsp, 128
                                                                                        jmp   n709_save_restore_α
n727_statement_β:
                        add              rsp, 128
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d128:
                        add              rsp, 128
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d112:
                        add              rsp, 112
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d96:
                        add              rsp, 96
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d80:
                        add              rsp, 80
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d64:
                        add              rsp, 64
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d48:
                        add              rsp, 48
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d32:
                        add              rsp, 32
                                                                                        jmp   n728_var_α
main_zw5s9_ω_d16:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n729_var_α
n728_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n729_var_α:
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 864], rax                     # result
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n730_var_α
n729_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n730_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n731_var_α
n730_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n731_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n732_call_α
n731_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n732_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1142:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1142]                        # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n733_binop_α
n732_call_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n733_binop_α:
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx1143_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx1143_0
                        mov              rax, qword ptr [rsp + 904]
                        mov              rcx, qword ptr [rsp + 920]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n734_call_α
.Lx1143_0:
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n734_call_α
n733_binop_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n734_call_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn1145:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1145]                        # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n735_binop_α
n734_call_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n735_binop_α:
                        mov              rdi, qword ptr [rsp + 784]                     # a
                        mov              rsi, qword ptr [rsp + 792]                     # a
                        mov              rdx, qword ptr [rsp + 800]                     # b
                        mov              rcx, qword ptr [rsp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n736_assign_α
n735_binop_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [1879052352], rax                    # pad_right
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n737_statement_α
n736_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n737_statement_α:
                                                                                        jmp   n709_save_restore_α
n737_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n738_goto_α:
                                                                                        jmp   n575_statement_α
n738_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n739_goto_α:
                                                                                        jmp   n740_lit_string_α
n739_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:
                        mov              qword ptr [rsp + 1024], 2                      # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n741_lit_integer_α
n740_lit_string_β:
                                                                                        jmp   n752_var_α
.Lx1152_0:
                        .quad            .Lx1152_0_s
.Lx1152_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_integer_α:
                        mov              qword ptr [rsp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1153_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n742_call_α
n741_lit_integer_β:
                                                                                        jmp   n752_var_α
.Lx1153_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n742_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lbynamefn59:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn59]                      # fn
                        lea              rsi, [rsp + 1056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n752_var_α
                                                                                        jmp   n743_binop_α
n742_call_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n743_binop_α:
                        mov              rdi, qword ptr [rsp + 1024]                    # a
                        mov              rsi, qword ptr [rsp + 1032]                    # a
                        mov              rdx, qword ptr [rsp + 1040]                    # b
                        mov              rcx, qword ptr [rsp + 1048]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n744_lit_integer_α
n743_binop_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n745_call_α
n744_lit_integer_β:
                                                                                        jmp   n752_var_α
.Lx1156_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lbynamefn62:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn62]                      # fn
                        lea              rsi, [rsp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n752_var_α
                                                                                        jmp   n746_binop_α
n745_call_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n746_binop_α:
                        mov              rdi, qword ptr [rsp + 1008]                    # a
                        mov              rsi, qword ptr [rsp + 1016]                    # a
                        mov              rdx, qword ptr [rsp + 1104]                    # b
                        mov              rcx, qword ptr [rsp + 1112]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n747_lit_integer_α
n746_binop_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n748_call_α
n747_lit_integer_β:
                                                                                        jmp   n752_var_α
.Lx1159_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n748_call_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lbynamefn65:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn65]                      # fn
                        lea              rsi, [rsp + 1184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n752_var_α
                                                                                        jmp   n749_binop_α
n748_call_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n749_binop_α:
                        mov              rdi, qword ptr [rsp + 992]                     # a
                        mov              rsi, qword ptr [rsp + 1000]                    # a
                        mov              rdx, qword ptr [rsp + 1168]                    # b
                        mov              rcx, qword ptr [rsp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n750_assign_α
n749_binop_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n751_statement_α
n750_assign_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n751_statement_α:
                                                                                        jmp   n752_var_α
n751_statement_β:
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n752_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1520], rax                    # result
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n753_var_α
n752_var_β:
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n753_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1504], rax                    # result
                        mov              qword ptr [rsp + 1512], rdx
                                                                                        jmp   n754_coerce_string_α
n753_var_β:
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n754_coerce_string_α:
                        lea              rdi, [rsp + 1504]                              # in
                        lea              rsi, [rsp + 1488]                              # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n755_match_begin_α
n754_coerce_string_β:
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n755_match_begin_α:
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
.Lx1170_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n756_match_sequence_α
n755_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1170_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1170_1
                                                                                        jmp   .Lx1170_0
.Lx1170_1:
                        mov              r10, qword ptr [1879048192]
.Lx1170_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1170_2
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
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n756_match_sequence_α:
                                                                                        jmp   n767_lit_integer_α
n756_match_sequence_as:
                                                                                        jmp   n757_match_end_α
n756_match_sequence_β:
                                                                                        jmp   n763_match_assign_cond_β
n756_match_sequence_af:
                                                                                        jmp   n755_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n757_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1174_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1174_9
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
.Lx1174_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1174_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1174_1:
                        test             rax, rax
                                                                                        je    .Lx1174_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1174_3]
                        lea              rdx, [rip + .Lx1174_4]
                                                                                        jmp   rax
.Lx1174_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1174_1
.Lx1174_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1174_1
.Lx1174_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1174_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1174_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1296]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1304]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1312]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1320]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        mov              qword ptr [rsp + 1344], 2                      # result
                        mov              dword ptr [rsp + 1348], 0
                        mov              rax, qword ptr [rip + .Lx1175_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n759_match_replace_α
n758_lit_string_β:
                                                                                        jmp   n769_var_α
.Lx1175_0:
                        .quad            .Lx1175_0_s
.Lx1175_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n759_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx1177_0]               # name
                        mov              rsi, qword ptr [rbp + 1520]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1528]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1248]                    # start
                        mov              r8, qword ptr [rbp + 1272]                     # end
                        lea              r9, [rbp + 1344]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx1177_1
.Lx1177_0:
                        .quad            .Lx1177_0_s
.Lx1177_0_s:
                        .string          "s"
.Lx1177_1:
                                                                                        jmp   n760_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n760_statement_α:
                                                                                        jmp   n769_var_α
n760_statement_β:
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n761_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n762_match_rem_α
n761_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n764_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n762_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n763_match_assign_cond_α
n762_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n764_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n763_match_assign_cond_α:
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
                                                                                        jmp   n757_match_end_α
n763_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n762_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n764_match_alternate_α:
                        mov              dword ptr [rbp + 1392], r14d
                        lea              rax, [rip + .Lx1186_21]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n766_match_span_α
.Lx1186_21:
                        lea              rax, [rip + .Lx1186_19]
                        mov              qword ptr [rbp + 1408], rax
                                                                                        jmp   n765_match_lit_α
n764_match_alternate_s0:
                        lea              rax, [rip + .Lx1186_40]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n764_match_alternate_as
n764_match_alternate_s1:
                        lea              rax, [rip + .Lx1186_41]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n764_match_alternate_as
.Lx1186_40:
                                                                                        jmp   n766_match_span_β
.Lx1186_41:
                                                                                        jmp   n765_match_lit_β
n764_match_alternate_as:
                                                                                        jmp   n761_match_assign_save_α
n764_match_alternate_β:
                        mov              rax, qword ptr [rbp + 1400]
                                                                                        jmp   rax
n764_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 1392]
                        mov              rax, qword ptr [rbp + 1408]
                                                                                        jmp   rax
.Lx1186_19:
                                                                                        jmp   n768_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n765_match_lit_α:
                                                                                        jmp   n764_match_alternate_s1
n765_match_lit_β:
                                                                                        jmp   n764_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n766_match_span_α:
                        mov              dword ptr [rbp + 1424], 0
                        mov              r8, qword ptr [rbp + 1496]
                        mov              r9d, dword ptr [rbp + 1492]
.Lx1190_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jge   .Lx1190_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1190_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1190_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1190_3
                        add              edx, 1
                                                                                        jmp   .Lx1190_2
.Lx1190_3:
                        add              dword ptr [rbp + 1424], 1
                                                                                        jmp   .Lx1190_0
.Lx1190_1:
                        mov              eax, dword ptr [rbp + 1424]
                        test             eax, eax
                                                                                        jle   n764_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 1428], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n764_match_alternate_s0
n766_match_span_β:
                        mov              r14d, dword ptr [rbp + 1428]
                                                                                        jmp   n764_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1191_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n768_match_pos_α
n767_lit_integer_β:
                                                                                        jmp   n755_match_begin_β
.Lx1191_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n768_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n755_match_begin_β
                                                                                        jmp   n764_match_alternate_α
n768_match_pos_β:
                                                                                        jmp   n755_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n769_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1536], rax                    # result
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n770_assign_α
n769_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n770_assign_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [1879052368], rax                    # ltrim
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n771_statement_α
n770_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n771_statement_α:
                                                                                        jmp   n709_save_restore_α
n771_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n772_goto_α:
                                                                                        jmp   n577_statement_α
n772_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n773_goto_α:
                                                                                        jmp   n774_lit_string_α
n773_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:
                        mov              qword ptr [rsp + 1600], 2                      # result
                        mov              dword ptr [rsp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx1199_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n775_lit_integer_α
n774_lit_string_β:
                                                                                        jmp   n786_var_α
.Lx1199_0:
                        .quad            .Lx1199_0_s
.Lx1199_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:
                        mov              qword ptr [rsp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1200_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   n776_call_α
n775_lit_integer_β:
                                                                                        jmp   n786_var_α
.Lx1200_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n776_call_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lbynamefn92:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn92]                      # fn
                        lea              rsi, [rsp + 1632]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    n786_var_α
                                                                                        jmp   n777_binop_α
n776_call_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n777_binop_α:
                        mov              rdi, qword ptr [rsp + 1600]                    # a
                        mov              rsi, qword ptr [rsp + 1608]                    # a
                        mov              rdx, qword ptr [rsp + 1616]                    # b
                        mov              rcx, qword ptr [rsp + 1624]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                                                                                        jmp   n778_lit_integer_α
n777_binop_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_integer_α:
                        mov              qword ptr [rsp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1203_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n779_call_α
n778_lit_integer_β:
                                                                                        jmp   n786_var_α
.Lx1203_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n779_call_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lbynamefn95:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn95]                      # fn
                        lea              rsi, [rsp + 1696]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 104
                                                                                        je    n786_var_α
                                                                                        jmp   n780_binop_α
n779_call_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n780_binop_α:
                        mov              rdi, qword ptr [rsp + 1584]                    # a
                        mov              rsi, qword ptr [rsp + 1592]                    # a
                        mov              rdx, qword ptr [rsp + 1680]                    # b
                        mov              rcx, qword ptr [rsp + 1688]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n781_lit_integer_α
n780_binop_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_integer_α:
                        mov              qword ptr [rsp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1206_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n782_call_α
n781_lit_integer_β:
                                                                                        jmp   n786_var_α
.Lx1206_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n782_call_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lbynamefn98:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn98]                      # fn
                        lea              rsi, [rsp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n786_var_α
                                                                                        jmp   n783_binop_α
n782_call_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n783_binop_α:
                        mov              rdi, qword ptr [rsp + 1568]                    # a
                        mov              rsi, qword ptr [rsp + 1576]                    # a
                        mov              rdx, qword ptr [rsp + 1744]                    # b
                        mov              rcx, qword ptr [rsp + 1752]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n784_assign_α
n783_binop_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_assign_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [1879052384], rax                    # ws
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n785_statement_α
n784_assign_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n785_statement_α:
                                                                                        jmp   n786_var_α
n785_statement_β:
                                                                                        jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1856], rax                    # result
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n787_call_α
n786_var_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n787_call_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn1214:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1214]                        # fn
                        lea              rsi, [rsp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n790_var_α
                                                                                        jmp   n788_assign_α
n787_call_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n789_statement_α
n788_assign_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_statement_α:
                                                                                        jmp   n790_var_α
n789_statement_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n790_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1920], rax                    # result
                        mov              qword ptr [rsp + 1928], rdx
                                                                                        jmp   n791_lit_integer_α
n790_var_β:
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_integer_α:
                        mov              qword ptr [rsp + 1904], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1219_0]
                        mov              qword ptr [rsp + 1912], rax
                                                                                        jmp   n792_coerce_numeric_α
n791_lit_integer_β:
                                                                                        jmp   n796_var_α
.Lx1219_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n792_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 5
                                                                                        je    .Lx1221_1
                        cmp              eax, 3
                                                                                        jne   .Lx1221_0
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 3
                                                                                        jne   .Lx1221_0
.Lx1221_1:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n793_coerce_numeric_α
.Lx1221_0:
                        lea              rdi, [rsp + 1920]                              # self
                        lea              rsi, [rsp + 1904]                              # other
                        lea              rdx, [rsp + 1888]                              # out
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n793_coerce_numeric_α
n792_coerce_numeric_β:
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n793_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1904]
                        cmp              eax, 5
                                                                                        je    .Lx1223_1
                        cmp              eax, 3
                                                                                        jne   .Lx1223_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx1223_0
.Lx1223_1:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n794_cmp_test_α
.Lx1223_0:
                        lea              rdi, [rsp + 1904]                              # self
                        lea              rsi, [rsp + 1920]                              # other
                        lea              rdx, [rsp + 1872]                              # out
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n794_cmp_test_α
n793_coerce_numeric_β:
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n794_cmp_test_α:
                        lea              rdi, [rsp + 1888]                              # a
                        lea              rsi, [rsp + 1872]                              # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    n796_var_α
                                                                                        jmp   n795_statement_α
n794_cmp_test_β:
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_statement_α:
                                                                                        jmp   n814_var_α
n795_statement_β:
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2016], rax                    # result
                        mov              qword ptr [rsp + 2024], rdx
                                                                                        jmp   n797_var_α
n796_var_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n797_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2032], rax                    # result
                        mov              qword ptr [rsp + 2040], rdx
                                                                                        jmp   n798_lit_integer_α
n797_var_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n799_call_α
n798_lit_integer_β:
                                                                                        jmp   n802_var_α
.Lx1230_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n799_call_α:
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
.Lrkfn1232:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1232]                        # fn
                        lea              rsi, [rsp + 1952]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n802_var_α
                                                                                        jmp   n800_assign_α
n799_call_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n800_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052448], rax                    # ch
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n801_statement_α
n800_assign_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n801_statement_α:
                                                                                        jmp   n802_var_α
n801_statement_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        mov              rax, qword ptr [1879052448]                    # ch
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2192], rax                    # result
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n803_var_α
n802_var_β:
                                                                                        jmp   n814_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_α:
                        mov              rax, qword ptr [1879052384]                    # ws
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 2176], rax                    # result
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n804_coerce_string_α
n803_var_β:
                                                                                        jmp   n814_var_α
#-----------------------------------------------------------------------------------------------------------------------
n804_coerce_string_α:
                        lea              rdi, [rsp + 2176]                              # in
                        lea              rsi, [rsp + 2160]                              # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n805_match_begin_α
n804_coerce_string_β:
                                                                                        jmp   n814_var_α
#-----------------------------------------------------------------------------------------------------------------------
n805_match_begin_α:
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
.Lx1241_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n806_match_any_α
n805_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1241_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1241_1
                                                                                        jmp   .Lx1241_0
.Lx1241_1:
                        mov              r10, qword ptr [1879048192]
.Lx1241_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1241_2
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
                                                                                        jmp   n814_var_α
#-----------------------------------------------------------------------------------------------------------------------
n806_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n805_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rbp + 2168]
                        mov              edx, 0
.Lx1243_5:
                        cmp              edx, r9d
                                                                                        jge   n805_match_begin_β
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1243_6
                        add              edx, 1
                                                                                        jmp   .Lx1243_5
.Lx1243_6:
                        add              r14d, 1
                                                                                        jmp   n807_match_end_α
n806_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n805_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n807_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1245_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1245_9
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
.Lx1245_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1245_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1245_1:
                        test             rax, rax
                                                                                        je    .Lx1245_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1245_3]
                        lea              rdx, [rip + .Lx1245_4]
                                                                                        jmp   rax
.Lx1245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1245_1
.Lx1245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1245_1
.Lx1245_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1245_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1245_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n808_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n808_statement_α:
                                                                                        jmp   n809_var_α
n808_statement_β:
                                                                                        jmp   n814_var_α
#-----------------------------------------------------------------------------------------------------------------------
n809_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2224], rax                    # result
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n810_lit_integer_α
n809_var_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1249_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n811_binop_α
n810_lit_integer_β:
                                                                                        jmp   n790_var_α
.Lx1249_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n811_binop_α:
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 3
                                                                                        jne   .Lx1250_0
                        mov              rax, qword ptr [rsp + 2232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 2208], 3
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n812_assign_α
.Lx1250_0:
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1250_240
                        add              rsp, 32
                                                                                        jmp   n790_var_α
.Lx1250_240:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n812_assign_α
n811_binop_β:
                        add              rsp, 32
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n812_assign_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052432], rax                    # i
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n813_statement_α
n812_assign_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n813_statement_α:
                                                                                        jmp   n790_var_α
n813_statement_β:
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n814_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2336], rax                    # result
                        mov              qword ptr [rsp + 2344], rdx
                                                                                        jmp   n815_lit_integer_α
n814_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_integer_α:
                        mov              qword ptr [rsp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rsp + 2360], rax
                                                                                        jmp   n816_var_α
n815_lit_integer_β:
                                                                                        jmp   n709_save_restore_α
.Lx1255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n816_var_α:
                        mov              rax, qword ptr [1879052432]                    # i
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 2368], rax                    # result
                        mov              qword ptr [rsp + 2376], rdx
                                                                                        jmp   n817_call_α
n816_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n817_call_α:
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
.Lrkfn1258:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1258]                        # fn
                        lea              rsi, [rsp + 2272]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n818_assign_α
n817_call_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n818_assign_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [1879052416], rax                    # rtrim
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n819_statement_α
n818_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n819_statement_α:
                                                                                        jmp   n709_save_restore_α
n819_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n820_goto_α:
                                                                                        jmp   n790_var_α
n820_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n821_goto_α:
                                                                                        jmp   n814_var_α
n821_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n822_goto_α:
                                                                                        jmp   n579_statement_α
n822_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n823_goto_α:
                                                                                        jmp   n824_var_α
n823_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n824_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2480], rax                    # result
                        mov              qword ptr [rsp + 2488], rdx
                                                                                        jmp   n825_call_α
n824_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n825_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1268_0]               # name
                        mov              esi, 4                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1268_5
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1268_6]
                        lea              rdx, [rip + .Lx1268_7]
                                                                                        jmp   rax
.Lx1268_6:
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
                                                                                        jmp   .Lx1268_2
.Lx1268_7:
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
                                                                                        jmp   .Lx1268_2
.Lx1268_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1268_20
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1268_21
.Lx1268_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2480]                    # v
                        mov              rdx, qword ptr [rsp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx1268_21:
                        mov              rdi, qword ptr [rip + .Lx1268_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1268_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1268_3]
                        lea              rdx, [rip + .Lx1268_4]
                                                                                        jmp   rax
.Lx1268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1268_2
.Lx1268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1268_2
.Lx1268_1:
                        call             rt_faildescr@PLT
.Lx1268_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n826_call_α
n825_call_β:
                                                                                        jmp   n709_save_restore_α
.Lx1268_0:
                        .quad            .Lx1268_0_s
.Lx1268_0_s:
                        .string          "rtrim"
#-----------------------------------------------------------------------------------------------------------------------
n826_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1270_0]               # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1270_5
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1270_6]
                        lea              rdx, [rip + .Lx1270_7]
                                                                                        jmp   rax
.Lx1270_6:
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
                                                                                        jmp   .Lx1270_2
.Lx1270_7:
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
                                                                                        jmp   .Lx1270_2
.Lx1270_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1270_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1270_21
.Lx1270_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2432]                    # v
                        mov              rdx, qword ptr [rsp + 2440]                    # v
                        call             rt_arg_stage@PLT
.Lx1270_21:
                        mov              rdi, qword ptr [rip + .Lx1270_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1270_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1270_3]
                        lea              rdx, [rip + .Lx1270_4]
                                                                                        jmp   rax
.Lx1270_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1270_2
.Lx1270_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1270_2
.Lx1270_1:
                        call             rt_faildescr@PLT
.Lx1270_2:
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n827_assign_α
n826_call_β:
                                                                                        jmp   n709_save_restore_α
.Lx1270_0:
                        .quad            .Lx1270_0_s
.Lx1270_0_s:
                        .string          "ltrim"
#-----------------------------------------------------------------------------------------------------------------------
n827_assign_α:
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [1879052464], rax                    # trimws
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n828_statement_α
n827_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_α:
                                                                                        jmp   n709_save_restore_α
n828_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n829_goto_α:
                                                                                        jmp   n581_statement_α
n829_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n830_goto_α:
                                                                                        jmp   n831_var_α
n830_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2560], rax                    # result
                        mov              qword ptr [rsp + 2568], rdx
                                                                                        jmp   n832_var_α
n831_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        mov              rax, qword ptr [1879052320]                    # n
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 2576], rax                    # result
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n833_call_α
n832_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n833_call_α:
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn1279:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1279]                        # fn
                        lea              rsi, [rsp + 2512]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n834_assign_α
n833_call_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n834_assign_α:
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052480], rax                    # repeat
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n835_statement_α
n834_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n835_statement_α:
                                                                                        jmp   n709_save_restore_α
n835_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n836_goto_α:
                                                                                        jmp   n583_statement_α
n836_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n837_goto_α:
                                                                                        jmp   n838_var_α
n837_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 2752], rax                    # result
                        mov              qword ptr [rsp + 2760], rdx
                                                                                        jmp   n839_var_α
n838_var_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 2736], rax                    # result
                        mov              qword ptr [rsp + 2744], rdx
                                                                                        jmp   n840_coerce_string_α
n839_var_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n840_coerce_string_α:
                        lea              rdi, [rsp + 2736]                              # in
                        lea              rsi, [rsp + 2720]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n841_match_begin_α
n840_coerce_string_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n841_match_begin_α:
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
.Lx1290_0:
                        mov              r14d, dword ptr [rbp + 2608]
                                                                                        jmp   n842_match_sequence_α
n841_match_begin_β:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, r15d
                                                                                        jg    .Lx1290_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1290_1
                                                                                        jmp   .Lx1290_0
.Lx1290_1:
                        mov              rax, qword ptr [rbp + 2616]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2624]
                        mov              r10, qword ptr [1879048192]
.Lx1290_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1290_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n842_match_sequence_α:
                        mov              dword ptr [rbp + 2688], r14d
                                                                                        jmp   n846_match_break_α
n842_match_sequence_as:
                                                                                        jmp   n843_match_end_α
n842_match_sequence_β:
                                                                                        jmp   n845_match_patref_β
n842_match_sequence_af:
                                                                                        jmp   n841_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n843_match_end_α:
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
.Lx1294_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1294_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1294_1:
                        test             rax, rax
                                                                                        je    .Lx1294_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1294_3]
                        lea              rdx, [rip + .Lx1294_4]
                                                                                        jmp   rax
.Lx1294_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1294_1
.Lx1294_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1294_1
.Lx1294_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1294_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1294_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2656]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2664]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2672]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2680]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n844_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n844_statement_α:
                                                                                        jmp   n709_save_restore_α
n844_statement_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n845_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1297_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1297_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1297_10
.Lx1297_9:
                        xor              eax, eax
.Lx1297_10:
                        test             rax, rax
                                                                                        jz    .Lx1297_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1297_4]
                        lea              rdx, [rip + .Lx1297_5]
                                                                                        jmp   rax
.Lx1297_4:
                                                                                        jmp   n843_match_end_α
.Lx1297_5:
                                                                                        jmp   n846_match_break_β
.Lx1297_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1297_2:
                        test             rax, rax
                                                                                        je    .Lx1297_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1297_7]
                        lea              rdx, [rip + .Lx1297_8]
                                                                                        jmp   rax
.Lx1297_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1297_2
.Lx1297_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1297_2
.Lx1297_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n846_match_break_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1297_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n843_match_end_α
.Lx1297_6:
                        add              rsp, 16
                                                                                        jmp   n846_match_break_β
n845_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n846_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 2728]
                        mov              r9d, dword ptr [rbp + 2724]
.Lx1299_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1299_240
                        add              rsp, 16
                                                                                        jmp   n841_match_begin_β
.Lx1299_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1299_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1299_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1299_1
                        add              edx, 1
                                                                                        jmp   .Lx1299_2
.Lx1299_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1299_0
.Lx1299_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n845_match_patref_α
n846_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n841_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n847_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n848_goto_α:
                                                                                        jmp   n585_statement_α
n848_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n849_goto_α:
                                                                                        jmp   n850_var_α
n849_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n851_match_begin_α
n850_var_β:
                        add              rsp, 16
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n851_match_begin_α:
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
.Lx1306_0:
                        mov              r14d, dword ptr [rbp + 2784]
                                                                                        jmp   n852_match_sequence_α
n851_match_begin_β:
                        add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, r15d
                                                                                        jg    .Lx1306_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1306_1
                                                                                        jmp   .Lx1306_0
.Lx1306_1:
                        mov              rax, qword ptr [rbp + 2792]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2800]
                        mov              r10, qword ptr [1879048192]
.Lx1306_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1306_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n852_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n856_lit_integer_α
n852_match_sequence_as:
                                                                                        jmp   n853_match_end_α
n852_match_sequence_β:
                                                                                        jmp   n855_match_patref_β
n852_match_sequence_af:
                                                                                        jmp   n851_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n853_match_end_α:
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
.Lx1310_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1310_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1310_1:
                        test             rax, rax
                                                                                        je    .Lx1310_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1310_3]
                        lea              rdx, [rip + .Lx1310_4]
                                                                                        jmp   rax
.Lx1310_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1310_1
.Lx1310_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1310_1
.Lx1310_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1310_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1310_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2832]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2840]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2848]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2856]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n854_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n854_statement_α:
                                                                                        jmp   n709_save_restore_α
n854_statement_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n855_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1313_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1313_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1313_10
.Lx1313_9:
                        xor              eax, eax
.Lx1313_10:
                        test             rax, rax
                                                                                        jz    .Lx1313_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1313_4]
                        lea              rdx, [rip + .Lx1313_5]
                                                                                        jmp   rax
.Lx1313_4:
                                                                                        jmp   n853_match_end_α
.Lx1313_5:
                                                                                        jmp   n851_match_begin_β
.Lx1313_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1313_2:
                        test             rax, rax
                                                                                        je    .Lx1313_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1313_7]
                        lea              rdx, [rip + .Lx1313_8]
                                                                                        jmp   rax
.Lx1313_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1313_2
.Lx1313_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1313_2
.Lx1313_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n851_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1313_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n853_match_end_α
.Lx1313_6:
                        add              rsp, 16
                                                                                        jmp   n851_match_begin_β
n855_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n856_lit_integer_α:
                        mov              qword ptr [rsp + 2880], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1314_0]
                        mov              qword ptr [rsp + 2888], rax
                                                                                        jmp   n857_match_pos_α
n856_lit_integer_β:
                                                                                        jmp   n851_match_begin_β
.Lx1314_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n857_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n851_match_begin_β
                                                                                        jmp   n855_match_patref_α
n857_match_pos_β:
                                                                                        jmp   n851_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n858_goto_α:
                                                                                        jmp   n587_statement_α
n858_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n859_goto_α:
                                                                                        jmp   n860_var_α
n859_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n861_match_begin_α
n860_var_β:
                        add              rsp, 16
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n861_match_begin_α:
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
.Lx1320_0:
                        mov              r14d, dword ptr [rbp + 2944]
                                                                                        jmp   n862_match_sequence_α
n861_match_begin_β:
                        add              dword ptr [rbp + 2944], 1
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, r15d
                                                                                        jg    .Lx1320_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1320_1
                                                                                        jmp   .Lx1320_0
.Lx1320_1:
                        mov              rax, qword ptr [rbp + 2952]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2960]
                        mov              r10, qword ptr [1879048192]
.Lx1320_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1320_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n862_match_sequence_α:
                        mov              dword ptr [rbp + 3024], r14d
                                                                                        jmp   n867_match_patref_α
n862_match_sequence_as:
                                                                                        jmp   n863_match_end_α
n862_match_sequence_β:
                                                                                        jmp   n866_match_rpos_β
n862_match_sequence_af:
                                                                                        jmp   n861_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n863_match_end_α:
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
.Lx1324_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1324_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1324_1:
                        test             rax, rax
                                                                                        je    .Lx1324_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1324_3]
                        lea              rdx, [rip + .Lx1324_4]
                                                                                        jmp   rax
.Lx1324_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1324_1
.Lx1324_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1324_1
.Lx1324_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1324_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1324_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2992]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3000]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3008]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3016]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n864_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n864_statement_α:
                                                                                        jmp   n709_save_restore_α
n864_statement_β:
                                                                                        jmp   n847_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n865_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n866_match_rpos_α
n865_lit_integer_β:
                                                                                        jmp   n867_match_patref_β
.Lx1327_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n866_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n867_match_patref_β
                                                                                        jmp   n863_match_end_α
n866_match_rpos_β:
                                                                                        jmp   n867_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n867_match_patref_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx1329_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1329_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1329_10
.Lx1329_9:
                        xor              eax, eax
.Lx1329_10:
                        test             rax, rax
                                                                                        jz    .Lx1329_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1329_4]
                        lea              rdx, [rip + .Lx1329_5]
                                                                                        jmp   rax
.Lx1329_4:
                                                                                        jmp   n865_lit_integer_α
.Lx1329_5:
                                                                                        jmp   n861_match_begin_β
.Lx1329_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1329_2:
                        test             rax, rax
                                                                                        je    .Lx1329_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1329_7]
                        lea              rdx, [rip + .Lx1329_8]
                                                                                        jmp   rax
.Lx1329_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1329_2
.Lx1329_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1329_2
.Lx1329_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n861_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1329_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n865_lit_integer_α
.Lx1329_6:
                        add              rsp, 16
                                                                                        jmp   n861_match_begin_β
n867_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n868_goto_α:
                                                                                        jmp   n589_statement_α
n868_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n869_goto_α:
                                                                                        jmp   n870_lit_integer_α
n869_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_integer_α:
                        mov              qword ptr [rsp + 3088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1332_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n871_assign_α
n870_lit_integer_β:
                                                                                        jmp   n873_var_α
.Lx1332_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n871_assign_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n872_statement_α
n871_assign_β:
                                                                                        jmp   n873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_α:
                                                                                        jmp   n873_var_α
n872_statement_β:
                                                                                        jmp   n873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 3104], rax                    # result
                        mov              qword ptr [rsp + 3112], rdx
                                                                                        jmp   n874_assign_α
n873_var_β:
                                                                                        jmp   n876_var_α
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
                        mov              qword ptr [1879052576], rax                    # ix
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n875_statement_α
n874_assign_β:
                                                                                        jmp   n876_var_α
#-----------------------------------------------------------------------------------------------------------------------
n875_statement_α:
                                                                                        jmp   n876_var_α
n875_statement_β:
                                                                                        jmp   n876_var_α
#-----------------------------------------------------------------------------------------------------------------------
n876_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3296], rax                    # result
                        mov              qword ptr [rsp + 3304], rdx
                                                                                        jmp   n877_var_α
n876_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:
                        mov              rax, qword ptr [1879052512]                    # t
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 3280], rax                    # result
                        mov              qword ptr [rsp + 3288], rdx
                                                                                        jmp   n878_coerce_string_α
n877_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n878_coerce_string_α:
                        lea              rdi, [rsp + 3280]                              # in
                        lea              rsi, [rsp + 3264]                              # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n879_match_begin_α
n878_coerce_string_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n879_match_begin_α:
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
.Lx1345_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n880_match_assign_save_α
n879_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1345_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1345_1
                                                                                        jmp   .Lx1345_0
.Lx1345_1:
                        mov              r10, qword ptr [1879048192]
.Lx1345_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1345_2
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
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n880_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n881_match_break_α
n880_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n879_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n881_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 3272]
                        mov              r9d, dword ptr [rbp + 3268]
.Lx1349_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx1349_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_match_begin_β
.Lx1349_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx1349_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx1349_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx1349_1
                        add              edx, 1
                                                                                        jmp   .Lx1349_2
.Lx1349_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx1349_0
.Lx1349_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n882_match_assign_cond_α
n881_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n882_match_assign_cond_α:
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
                                                                                        jmp   n883_match_end_α
n882_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n881_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n883_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1353_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1353_9
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
.Lx1353_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1353_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1353_1:
                        test             rax, rax
                                                                                        je    .Lx1353_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1353_3]
                        lea              rdx, [rip + .Lx1353_4]
                                                                                        jmp   rax
.Lx1353_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1353_1
.Lx1353_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1353_1
.Lx1353_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1353_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1353_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 3184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 3192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 3200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 3208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n884_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n884_statement_α:
                                                                                        jmp   n885_var_α
n884_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        mov              rax, qword ptr [1879052576]                    # ix
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 3376], rax                    # result
                        mov              qword ptr [rsp + 3384], rdx
                                                                                        jmp   n886_call_α
n885_var_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n886_call_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn1358:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1358]                        # fn
                        lea              rsi, [rsp + 3344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                                                                                        jmp   n887_lit_integer_α
n886_call_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n887_lit_integer_α:
                        mov              qword ptr [rsp + 3392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1359_0]
                        mov              qword ptr [rsp + 3400], rax
                                                                                        jmp   n888_binop_α
n887_lit_integer_β:
                                                                                        jmp   n709_save_restore_α
.Lx1359_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n888_binop_α:
                        mov              eax, dword ptr [rsp + 3328]
                        cmp              eax, 3
                                                                                        jne   .Lx1360_0
                        mov              rax, qword ptr [rsp + 3336]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 3312], 3
                        mov              qword ptr [rsp + 3320], rax
                                                                                        jmp   n889_assign_α
.Lx1360_0:
                        mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              rdx, qword ptr [rsp + 3392]
                        mov              rcx, qword ptr [rsp + 3400]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n709_save_restore_α
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                                                                                        jmp   n889_assign_α
n888_binop_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:
                        mov              rax, qword ptr [rsp + 3312]
                        mov              rdx, qword ptr [rsp + 3320]
                        mov              qword ptr [1879052560], rax                    # index
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n890_statement_α
n889_assign_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n890_statement_α:
                                                                                        jmp   n709_save_restore_α
n890_statement_β:
                                                                                        jmp   n709_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n891_goto_α:
                                                                                        jmp   n591_statement_α
n891_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n892_goto_α:
                                                                                        jmp   n635_lit_string_α
n892_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n893_goto_α:
                                                                                        jmp   n638_statement_α
n893_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n894_goto_α:
                                                                                        jmp   n646_lit_string_α
n894_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n895_goto_α:
                                                                                        jmp   n649_statement_α
n895_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n896_goto_α:
                                                                                        jmp   n657_lit_string_α
n896_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n897_goto_α:
                                                                                        jmp   n660_statement_α
n897_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n898_goto_α:
                                                                                        jmp   n665_lit_string_α
n898_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n899_goto_α:
                                                                                        jmp   n671_statement_α
n899_goto_β:
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
