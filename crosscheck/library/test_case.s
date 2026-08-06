                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_α:
proc_LBL__lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n7_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx11_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_keyword_snobol4_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx12_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_call_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
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
.Lrkfnzd14:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd14]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx13_240
                        add              rsp, 16
                                                                                        jmp   n7_save_restore_α
.Lx13_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
n4_call_β:
                        add              rsp, 16
                                                                                        jmp   n7_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:
                                                                                        jmp   n7_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n7_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_β:
                                                                                        jmp   proc_LBL__lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_α:
proc_LBL__upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_var_α
n20_statement_begin_β:
                                                                                        jmp   n27_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n22_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx31_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_keyword_snobol4_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n23_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx32_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_call_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:
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
.Lrkfnzd34:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd34]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx33_240
                        add              rsp, 16
                                                                                        jmp   n27_save_restore_α
.Lx33_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_assign_α
n24_call_β:
                        add              rsp, 16
                                                                                        jmp   n27_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:
                                                                                        jmp   n27_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_β:
                                                                                        jmp   proc_LBL__upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_α:
proc_LBL__cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_var_α
n40_statement_begin_β:
                                                                                        jmp   n58_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_lit_integer_α
n42_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_save_restore_α
.Lx62_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_call_α
n43_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n42_lit_integer_β
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
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
.Lrkfnzd65:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd65]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx64_240
                        add              rsp, 16
                                                                                        jmp   n43_lit_integer_β
.Lx64_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_keyword_snobol4_α
n44_call_β:
                        add              rsp, 16
                                                                                        jmp   n43_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_keyword_snobol4_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n46_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx67_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_call_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:
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
.Lrkfnzd69:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd69]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx68_240
                        add              rsp, 64
                                                                                        jmp   n43_lit_integer_β
.Lx68_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_var_α
n47_call_β:
                        add              rsp, 64
                                                                                        jmp   n43_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_lit_integer_α
n48_var_β:
                        add              rsp, 80
                                                                                        jmp   n43_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_call_α
n49_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n48_var_β
.Lx71_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:
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
.Lrkfnzd73:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd73]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx72_240
                        add              rsp, 16
                                                                                        jmp   n49_lit_integer_β
.Lx72_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_keyword_snobol4_α
n50_call_β:
                        add              rsp, 16
                                                                                        jmp   n49_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx74_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_keyword_snobol4_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n52_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx75_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_call_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
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
.Lrkfnzd77:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd77]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx76_240
                        add              rsp, 64
                                                                                        jmp   n49_lit_integer_β
.Lx76_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_binop_α
n53_call_β:
                        add              rsp, 64
                                                                                        jmp   n49_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # call
                        mov              rsi, qword ptr [rsp + 120]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_binop_β:
                        add              rsp, 80
                                                                                        jmp   n49_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                                                                                        jmp   n57_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n57_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n58_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_β:
                                                                                        jmp   proc_LBL__cap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_α:
proc_LBL__icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_var_α
n86_statement_begin_β:
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_call_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd130:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd130]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx129_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
.Lx129_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_statement_end_α
n88_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                                                                                        jmp   n90_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n90_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_var_α
n91_statement_begin_β:
                                                                                        jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1024], rax                    # result
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n93_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_begin_α:
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              qword ptr [rbp + 888], rbp                     # old_rbp
                        mov              rdi, qword ptr [rbp + 1024]                    # lo
                        mov              rsi, qword ptr [rbp + 1032]                    # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx139_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n94_lit_integer_α
n93_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx139_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx139_1
                                                                                        jmp   .Lx139_0
.Lx139_1:
.Lx139_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx139_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rsp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n95_match_pos_α
.Lx140_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n93_match_begin_β
                                                                                        jmp   n96_match_assign_save_α
n95_match_pos_β:
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n97_match_any_α
n96_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx145_239
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
.Lx145_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx145_240
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
.Lx145_240:
                        add              r14d, 1
                                                                                        jmp   n98_match_assign_cond_α
n97_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n99_match_end_α
n98_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n97_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_end_α:
                        mov              r10, r12
.Lx149_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx149_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx149_1:
                        test             rax, rax
                                                                                        je    .Lx149_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx149_3]
                        lea              rdx, [rip + .Lx149_4]
                                                                                        jmp   rax
.Lx149_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx149_1
.Lx149_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx149_1
.Lx149_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx149_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_6
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n101_match_replace_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx152_0]                # name
                        mov              rsi, qword ptr [rbp + 1024]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1032]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx152_1
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "str"
.Lx152_1:
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:
                                                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:
                                                                                        jmp   n104_lit_string_α
n103_statement_begin_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rsp + 1088], 2                      # result
                        mov              dword ptr [rsp + 1092], 5
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n105_call_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn159:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]                         # fn
                        lea              rsi, [rsp + 1056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n86_statement_begin_α
                                                                                        jmp   n106_assign_α
n105_call_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n107_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α:
                                                                                        jmp   n109_var_α
n108_statement_begin_β:
                                                                                        jmp   n120_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1296], rax                    # result
                        mov              qword ptr [rsp + 1304], rdx
                                                                                        jmp   n110_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_match_begin_α:
                        mov              qword ptr [rbp + 1168], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1176], r14                    # outer_δ
                        mov              qword ptr [rbp + 1184], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax                    # cap_gen
                        mov              qword ptr [rbp + 1160], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 1296]                    # lo
                        mov              rsi, qword ptr [rbp + 1304]                    # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx167_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n111_lit_integer_α
n110_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx167_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx167_1
                                                                                        jmp   .Lx167_0
.Lx167_1:
.Lx167_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx167_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                                                                                        jmp   n120_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        mov              qword ptr [rsp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n112_match_pos_α
.Lx168_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n112_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n110_match_begin_β
                                                                                        jmp   n113_match_assign_save_α
n112_match_pos_β:
                                                                                        jmp   n110_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n114_match_len_α
n113_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n110_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx172_240
                        add              rsp, 16
                                                                                        jmp   n110_match_begin_β
.Lx172_240:
                        add              r14d, 1
                                                                                        jmp   n115_match_assign_cond_α
n114_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n110_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n116_match_end_α
n115_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n114_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n116_match_end_α:
                        mov              r10, r12
.Lx176_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1168], eax
                        mov              qword ptr [rsp + 1192], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx176_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx176_1:
                        test             rax, rax
                                                                                        je    .Lx176_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx176_3]
                        lea              rdx, [rip + .Lx176_4]
                                                                                        jmp   rax
.Lx176_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx176_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_6
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 1216], 2                      # result
                        mov              dword ptr [rsp + 1220], 0
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n118_match_replace_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n118_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx179_0]                # name
                        mov              rsi, qword ptr [rbp + 1296]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1304]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1120]                    # start
                        mov              r8, qword ptr [rbp + 1144]                     # end
                        lea              r9, [rbp + 1216]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx179_1
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "str"
.Lx179_1:
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                                                                                        jmp   n119_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:
                                                                                        jmp   n120_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α:
                                                                                        jmp   n121_var_α
n120_statement_begin_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1344], rax                    # result
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n123_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        mov              rdi, qword ptr [rsp + 1328]                    # a
                        mov              rsi, qword ptr [rsp + 1336]                    # a
                        mov              rdx, qword ptr [rsp + 1344]                    # b
                        mov              rcx, qword ptr [rsp + 1352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n124_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n190_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n191_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n191_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx195_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx195_1
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "lwr"
.Lx195_1:
                                                                                        jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_β:
                                                                                        jmp   proc_lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upr_α
proc_upr_α:
proc_upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n196_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n197_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n197_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx201_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx201_1
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "upr"
.Lx201_1:
                                                                                        jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_β:
                                                                                        jmp   proc_upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cap_α
proc_cap_α:
proc_cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n202_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n203_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n203_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx207_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx207_1
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "cap"
.Lx207_1:
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_β:
                                                                                        jmp   proc_cap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_icase_α
proc_icase_α:
proc_icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n208_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n209_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n209_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx213_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx213_1
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "icase"
.Lx213_1:
                                                                                        jmp   proc_icase_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_β:
                                                                                        jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n214_match_patref_α:
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
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx222_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx222_10
.Lx222_9:
                        xor              eax, eax
.Lx222_10:
                        test             rax, rax
                                                                                        jz    .Lx222_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx222_4]
                        lea              rdx, [rip + .Lx222_5]
                                                                                        jmp   rax
.Lx222_4:
                                                                                        jmp   n215_match_alternate_α
.Lx222_5:
                        add              rsp, 176
                                                                                        jmp   proc_PAT$0_scanfail
.Lx222_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx222_2:
                        test             rax, rax
                                                                                        je    .Lx222_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_7]
                        lea              rdx, [rip + .Lx222_8]
                                                                                        jmp   rax
.Lx222_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx222_240
                        add              rsp, 176
                                                                                        jmp   proc_PAT$0_scanfail
.Lx222_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx222_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n215_match_alternate_α
.Lx222_6:
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   proc_PAT$0_scanfail
n214_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n215_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx224_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n219_var_α
.Lx224_21:
                        lea              rax, [rip + .Lx224_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n216_var_α
n215_match_alternate_s0:
                        lea              rax, [rip + .Lx224_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n215_match_alternate_as
n215_match_alternate_s1:
                        lea              rax, [rip + .Lx224_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n215_match_alternate_as
.Lx224_40:
                                                                                        jmp   n221_match_value_β
.Lx224_41:
                                                                                        jmp   n218_match_value_β
n215_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n215_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n215_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx224_19:
                                                                                        jmp   n214_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 176], rax                     # result
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n217_call_α
n216_var_β:
                                                                                        jmp   n215_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx227_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx227_5
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx227_6]
                        lea              rdx, [rip + .Lx227_7]
                                                                                        jmp   rax
.Lx227_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx227_21
.Lx227_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 176]                     # v
                        mov              rdx, qword ptr [rbp + 184]                     # v
                        call             rt_arg_stage@PLT
.Lx227_21:
                        mov              rdi, qword ptr [rip + .Lx227_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx227_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4]
                                                                                        jmp   rax
.Lx227_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_1:
                        call             rt_faildescr@PLT
.Lx227_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n215_match_alternate_af
                                                                                        jmp   n218_match_value_α
n217_call_β:
                                                                                        jmp   n215_match_alternate_af
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n218_match_value_α:
                        lea              rdi, [rbp + 128]                               # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx228_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx228_4]
                        lea              rdx, [rip + .Lx228_5]
                                                                                        jmp   rax
.Lx228_4:
                                                                                        jmp   n215_match_alternate_s1
.Lx228_5:
                                                                                        jmp   n215_match_alternate_af
.Lx228_0:
                        lea              rdi, [rbp + 128]                               # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n215_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx228_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n215_match_alternate_s1
.Lx228_6:
                        add              rsp, 16
                                                                                        jmp   n215_match_alternate_af
n218_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 112], rax                     # result
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n220_call_α
n219_var_β:
                                                                                        jmp   n215_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx231_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx231_5
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_6]
                        lea              rdx, [rip + .Lx231_7]
                                                                                        jmp   rax
.Lx231_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_20
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx231_21
.Lx231_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 112]                     # v
                        mov              rdx, qword ptr [rbp + 120]                     # v
                        call             rt_arg_stage@PLT
.Lx231_21:
                        mov              rdi, qword ptr [rip + .Lx231_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx231_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_3]
                        lea              rdx, [rip + .Lx231_4]
                                                                                        jmp   rax
.Lx231_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_1:
                        call             rt_faildescr@PLT
.Lx231_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n215_match_alternate_af
                                                                                        jmp   n221_match_value_α
n220_call_β:
                                                                                        jmp   n215_match_alternate_af
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n221_match_value_α:
                        lea              rdi, [rbp + 64]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx232_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx232_4]
                        lea              rdx, [rip + .Lx232_5]
                                                                                        jmp   rax
.Lx232_4:
                                                                                        jmp   n215_match_alternate_s0
.Lx232_5:
                                                                                        jmp   n215_match_alternate_af
.Lx232_0:
                        lea              rdi, [rbp + 64]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n215_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx232_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n215_match_alternate_s0
.Lx232_6:
                        add              rsp, 16
                                                                                        jmp   n215_match_alternate_af
n221_match_value_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx233_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx233_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx234_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx234_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx234_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx234_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__lwr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__lwr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__upr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__upr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__cap"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__cap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__icase"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__icase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "lwr"
.Lstartup_pp4_0:        .string          "lwr"
                        .align           8
.Lstartup_pnames4:
                        .quad            .Lstartup_pp4_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_lwr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "upr"
.Lstartup_pp5_0:        .string          "upr"
                        .align           8
.Lstartup_pnames5:
                        .quad            .Lstartup_pp5_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + .Lstartup_pnames5]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_upr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "cap"
.Lstartup_pp6_0:        .string          "cap"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_cap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "icase"
.Lstartup_pp7_0:        .string          "str"
.Lstartup_pp7_1:        .string          "letter"
.Lstartup_pp7_2:        .string          "ch"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            .Lstartup_pp7_1
                        .quad            .Lstartup_pp7_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_icase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "lwr"
.Lgvan1:                .string          "upr"
.Lgvan2:                .string          "cap"
.Lgvan3:                .string          "icase"
.Lgvan4:                .string          "str"
.Lgvan5:                .string          "letter"
.Lgvan6:                .string          "ch"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
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
n235_statement_begin_α:
                                                                                        jmp   n236_statement_end_α
n235_statement_begin_β:
                                                                                        jmp   n237_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:
                                                                                        jmp   n237_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'no match ok'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_begin_α:
                                                                                        jmp   n238_statement_end_α
n237_statement_begin_β:
                                                                                        jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:
                        sub              rsp, 2400
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
                                                                                        jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:
                                                                                        jmp   n240_statement_end_α
n239_statement_begin_β:
                                                                                        jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:
                                                                                        jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α:
                                                                                        jmp   n242_statement_end_α
n241_statement_begin_β:
                                                                                        jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:
                                                                                        jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α:
                                                                                        jmp   n244_statement_end_α
n243_statement_begin_β:
                                                                                        jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:
                                                                                        jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α:
                                                                                        jmp   n246_statement_end_α
n245_statement_begin_β:
                                                                                        jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:
                                                                                        jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α:
                                                                                        jmp   n248_statement_end_α
n247_statement_begin_β:
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:
                                                                                        jmp   n250_statement_end_α
n249_statement_begin_β:
                                                                                        jmp   n251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_end_α:
                                                                                        jmp   n251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_begin_α:
                                                                                        jmp   n252_statement_end_α
n251_statement_begin_β:
                                                                                        jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:
                                                                                        jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α:
                                                                                        jmp   n254_statement_end_α
n253_statement_begin_β:
                                                                                        jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:
                                                                                        jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α:
                                                                                        jmp   n256_lit_string_α
n255_statement_begin_β:
                                                                                        jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rsp + 1392], 2                      # result
                        mov              dword ptr [rsp + 1396], 4
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 1400], rax
                                                                                        jmp   n257_lit_integer_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:
                        mov              qword ptr [rsp + 1408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 1416], rax
                                                                                        jmp   n258_call_α
.Lx465_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn467:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn467]                         # fn
                        lea              rsi, [rsp + 1344]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n260_statement_begin_α
                                                                                        jmp   n259_statement_end_α
n258_call_β:
                                                                                        jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:
                                                                                        jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α:
                                                                                        jmp   n261_statement_end_α
n260_statement_begin_β:
                                                                                        jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:
                                                                                        jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:
                                                                                        jmp   n263_lit_string_α
n262_statement_begin_β:
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rsp + 1472], 2                      # result
                        mov              dword ptr [rsp + 1476], 11
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n264_call_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx478_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx478_5
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx478_6]
                        lea              rdx, [rip + .Lx478_7]
                                                                                        jmp   rax
.Lx478_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_20
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx478_21
.Lx478_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1472]                    # v
                        mov              rdx, qword ptr [rsp + 1480]                    # v
                        call             rt_arg_stage@PLT
.Lx478_21:
                        mov              rdi, qword ptr [rip + .Lx478_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx478_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx478_3]
                        lea              rdx, [rip + .Lx478_4]
                                                                                        jmp   rax
.Lx478_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_1:
                        call             rt_faildescr@PLT
.Lx478_2:
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n267_statement_begin_α
                                                                                        jmp   n265_assign_α
n264_call_β:
                                                                                        jmp   n267_statement_begin_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rsi, qword ptr [rsp + 1424]                    # val
                        mov              rdx, qword ptr [rsp + 1432]                    # val
                        mov              rdi, qword ptr [rip + .Lx479_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n266_statement_end_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:
                                                                                        jmp   n268_lit_string_α
n267_statement_begin_β:
                                                                                        jmp   n272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rsp + 1536], 2                      # result
                        mov              dword ptr [rsp + 1540], 11
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   n269_call_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx486_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx486_5
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_6]
                        lea              rdx, [rip + .Lx486_7]
                                                                                        jmp   rax
.Lx486_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx486_2
.Lx486_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx486_2
.Lx486_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx486_20
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx486_21
.Lx486_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1536]                    # v
                        mov              rdx, qword ptr [rsp + 1544]                    # v
                        call             rt_arg_stage@PLT
.Lx486_21:
                        mov              rdi, qword ptr [rip + .Lx486_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx486_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_3]
                        lea              rdx, [rip + .Lx486_4]
                                                                                        jmp   rax
.Lx486_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx486_2
.Lx486_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx486_2
.Lx486_1:
                        call             rt_faildescr@PLT
.Lx486_2:
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n272_statement_begin_α
                                                                                        jmp   n270_assign_α
n269_call_β:
                                                                                        jmp   n272_statement_begin_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rsi, qword ptr [rsp + 1488]                    # val
                        mov              rdx, qword ptr [rsp + 1496]                    # val
                        mov              rdi, qword ptr [rip + .Lx487_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n271_statement_end_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:
                                                                                        jmp   n272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:
                                                                                        jmp   n273_lit_string_α
n272_statement_begin_β:
                                                                                        jmp   n277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rsp + 1600], 2                      # result
                        mov              dword ptr [rsp + 1604], 11
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n274_call_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx494_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx494_5
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx494_6]
                        lea              rdx, [rip + .Lx494_7]
                                                                                        jmp   rax
.Lx494_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx494_2
.Lx494_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx494_2
.Lx494_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx494_20
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx494_21
.Lx494_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1600]                    # v
                        mov              rdx, qword ptr [rsp + 1608]                    # v
                        call             rt_arg_stage@PLT
.Lx494_21:
                        mov              rdi, qword ptr [rip + .Lx494_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx494_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx494_3]
                        lea              rdx, [rip + .Lx494_4]
                                                                                        jmp   rax
.Lx494_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx494_2
.Lx494_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx494_2
.Lx494_1:
                        call             rt_faildescr@PLT
.Lx494_2:
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n277_statement_begin_α
                                                                                        jmp   n275_assign_α
n274_call_β:
                                                                                        jmp   n277_statement_begin_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:
                        mov              rsi, qword ptr [rsp + 1552]                    # val
                        mov              rdx, qword ptr [rsp + 1560]                    # val
                        mov              rdi, qword ptr [rip + .Lx495_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n276_statement_end_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:
                                                                                        jmp   n277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α:
                                                                                        jmp   n278_statement_end_α
n277_statement_begin_β:
                                                                                        jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_end_α:
                                                                                        jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_begin_α:
                                                                                        jmp   n280_lit_string_α
n279_statement_begin_β:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n281_match_begin_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n281_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
                        mov              qword ptr [rbp + 1704], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1680], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx506_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n282_lit_string_α
n281_match_begin_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx506_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx506_1
                                                                                        jmp   .Lx506_0
.Lx506_1:
                        mov              rax, qword ptr [rbp + 1672]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
.Lx506_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx506_2
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rsp + 1760], 2                      # result
                        mov              dword ptr [rsp + 1764], 5
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 1768], rax
                                                                                        jmp   n283_call_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx509_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx509_5
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_6]
                        lea              rdx, [rip + .Lx509_7]
                                                                                        jmp   rax
.Lx509_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_20
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx509_21
.Lx509_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1760]                    # v
                        mov              rdx, qword ptr [rsp + 1768]                    # v
                        call             rt_arg_stage@PLT
.Lx509_21:
                        mov              rdi, qword ptr [rip + .Lx509_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx509_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_3]
                        lea              rdx, [rip + .Lx509_4]
                                                                                        jmp   rax
.Lx509_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_1:
                        call             rt_faildescr@PLT
.Lx509_2:
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n281_match_begin_α
                                                                                        jmp   n284_match_value_α
n283_call_β:
                                                                                        jmp   n281_match_begin_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n284_match_value_α:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx510_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx510_4]
                        lea              rdx, [rip + .Lx510_5]
                                                                                        jmp   rax
.Lx510_4:
                                                                                        jmp   n285_match_end_α
.Lx510_5:
                                                                                        jmp   n281_match_begin_β
.Lx510_0:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n281_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx510_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n285_match_end_α
.Lx510_6:
                        add              rsp, 16
                                                                                        jmp   n281_match_begin_β
n284_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n285_match_end_α:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx512_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx512_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx512_1:
                        test             rax, rax
                                                                                        je    .Lx512_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx512_3]
                        lea              rdx, [rip + .Lx512_4]
                                                                                        jmp   rax
.Lx512_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx512_1
.Lx512_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx512_1
.Lx512_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx512_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx512_6
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                                                                                        jmp   n286_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:
                                                                                        jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:
                                                                                        jmp   n288_lit_string_α
n287_statement_begin_β:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rsp + 1792], 2                      # result
                        mov              dword ptr [rsp + 1796], 15
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n289_assign_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rsi, qword ptr [rsp + 1792]                    # val
                        mov              rdx, qword ptr [rsp + 1800]                    # val
                        mov              rdi, qword ptr [rip + .Lx518_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n290_statement_end_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α:
                                                                                        jmp   n292_statement_end_α
n291_statement_begin_β:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:
                                                                                        jmp   n294_lit_string_α
n293_statement_begin_β:
                                                                                        jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n295_match_begin_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n295_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1904], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1912], r14                    # outer_δ
                        mov              qword ptr [rbp + 1920], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1928], rax                    # cap_gen
                        mov              qword ptr [rbp + 1896], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1872], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1864], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1856], 0                      # start_δ
.Lx529_0:
                        mov              r14d, dword ptr [rbp + 1856]
                                                                                        jmp   n296_lit_string_α
n295_match_begin_β:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, r15d
                                                                                        jg    .Lx529_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx529_1
                                                                                        jmp   .Lx529_0
.Lx529_1:
                        mov              rax, qword ptr [rbp + 1864]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
.Lx529_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx529_2
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1896]                    # old_rbp
                                                                                        jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rsp + 1952], 2                      # result
                        mov              dword ptr [rsp + 1956], 5
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 1960], rax
                                                                                        jmp   n297_call_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx532_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx532_5
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_6]
                        lea              rdx, [rip + .Lx532_7]
                                                                                        jmp   rax
.Lx532_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_20
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx532_21
.Lx532_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1952]                    # v
                        mov              rdx, qword ptr [rsp + 1960]                    # v
                        call             rt_arg_stage@PLT
.Lx532_21:
                        mov              rdi, qword ptr [rip + .Lx532_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx532_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_3]
                        lea              rdx, [rip + .Lx532_4]
                                                                                        jmp   rax
.Lx532_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        call             rt_faildescr@PLT
.Lx532_2:
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n295_match_begin_α
                                                                                        jmp   n298_match_value_α
n297_call_β:
                                                                                        jmp   n295_match_begin_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n298_match_value_α:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx533_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx533_4]
                        lea              rdx, [rip + .Lx533_5]
                                                                                        jmp   rax
.Lx533_4:
                                                                                        jmp   n299_match_end_α
.Lx533_5:
                                                                                        jmp   n295_match_begin_β
.Lx533_0:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n295_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx533_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n299_match_end_α
.Lx533_6:
                        add              rsp, 16
                                                                                        jmp   n295_match_begin_β
n298_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n299_match_end_α:
                        mov              rax, qword ptr [rbp + 1864]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx535_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx535_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx535_1:
                        test             rax, rax
                                                                                        je    .Lx535_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx535_3]
                        lea              rdx, [rip + .Lx535_4]
                                                                                        jmp   rax
.Lx535_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx535_1
.Lx535_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx535_1
.Lx535_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx535_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx535_6
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1896]                    # old_rbp
                                                                                        jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:
                                                                                        jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α:
                                                                                        jmp   n302_lit_string_α
n301_statement_begin_β:
                                                                                        jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 15
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n303_assign_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:
                        mov              rsi, qword ptr [rsp + 1984]                    # val
                        mov              rdx, qword ptr [rsp + 1992]                    # val
                        mov              rdi, qword ptr [rip + .Lx541_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n304_statement_end_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_end_α:
                                                                                        jmp   n305_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_begin_α:
                                                                                        jmp   n306_statement_end_α
n305_statement_begin_β:
                                                                                        jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:
                                                                                        jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:
                                                                                        jmp   n308_lit_string_α
n307_statement_begin_β:
                                                                                        jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_match_begin_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n309_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2096], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2104], r14                    # outer_δ
                        mov              qword ptr [rbp + 2112], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2120], rax                    # cap_gen
                        mov              qword ptr [rbp + 2088], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2064], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2056], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2048], 0                      # start_δ
.Lx552_0:
                        mov              r14d, dword ptr [rbp + 2048]
                                                                                        jmp   n310_lit_string_α
n309_match_begin_β:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, r15d
                                                                                        jg    .Lx552_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx552_1
                                                                                        jmp   .Lx552_0
.Lx552_1:
                        mov              rax, qword ptr [rbp + 2056]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
.Lx552_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx552_2
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                                                                                        jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rsp + 2144], 2                      # result
                        mov              dword ptr [rsp + 2148], 5
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 2152], rax
                                                                                        jmp   n311_call_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx555_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx555_5
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx555_6]
                        lea              rdx, [rip + .Lx555_7]
                                                                                        jmp   rax
.Lx555_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx555_2
.Lx555_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx555_2
.Lx555_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_20
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx555_21
.Lx555_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2144]                    # v
                        mov              rdx, qword ptr [rsp + 2152]                    # v
                        call             rt_arg_stage@PLT
.Lx555_21:
                        mov              rdi, qword ptr [rip + .Lx555_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx555_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx555_3]
                        lea              rdx, [rip + .Lx555_4]
                                                                                        jmp   rax
.Lx555_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx555_2
.Lx555_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx555_2
.Lx555_1:
                        call             rt_faildescr@PLT
.Lx555_2:
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n309_match_begin_α
                                                                                        jmp   n312_match_value_α
n311_call_β:
                                                                                        jmp   n309_match_begin_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n312_match_value_α:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx556_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx556_4]
                        lea              rdx, [rip + .Lx556_5]
                                                                                        jmp   rax
.Lx556_4:
                                                                                        jmp   n313_match_end_α
.Lx556_5:
                                                                                        jmp   n309_match_begin_β
.Lx556_0:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n309_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx556_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n313_match_end_α
.Lx556_6:
                        add              rsp, 16
                                                                                        jmp   n309_match_begin_β
n312_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n313_match_end_α:
                        mov              rax, qword ptr [rbp + 2056]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx558_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx558_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx558_1:
                        test             rax, rax
                                                                                        je    .Lx558_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx558_3]
                        lea              rdx, [rip + .Lx558_4]
                                                                                        jmp   rax
.Lx558_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx558_1
.Lx558_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx558_1
.Lx558_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx558_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx558_6
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                                                                                        jmp   n314_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:
                                                                                        jmp   n315_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_begin_α:
                                                                                        jmp   n316_lit_string_α
n315_statement_begin_β:
                                                                                        jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rsp + 2176], 2                      # result
                        mov              dword ptr [rsp + 2180], 15
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n317_assign_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:
                        mov              rsi, qword ptr [rsp + 2176]                    # val
                        mov              rdx, qword ptr [rsp + 2184]                    # val
                        mov              rdi, qword ptr [rip + .Lx564_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n318_statement_end_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:
                                                                                        jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α:
                                                                                        jmp   n320_statement_end_α
n319_statement_begin_β:
                                                                                        jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:
                                                                                        jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:
                                                                                        jmp   n322_lit_string_α
n321_statement_begin_β:
                                                                                        jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n323_match_begin_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n323_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2288], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2296], r14                    # outer_δ
                        mov              qword ptr [rbp + 2304], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2312], rax                    # cap_gen
                        mov              qword ptr [rbp + 2280], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2256], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2248], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2240], 0                      # start_δ
.Lx575_0:
                        mov              r14d, dword ptr [rbp + 2240]
                                                                                        jmp   n324_lit_string_α
n323_match_begin_β:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, r15d
                                                                                        jg    .Lx575_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx575_1
                                                                                        jmp   .Lx575_0
.Lx575_1:
                        mov              rax, qword ptr [rbp + 2248]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
.Lx575_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx575_2
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2400
                                                                                        jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rsp + 2336], 2                      # result
                        mov              dword ptr [rsp + 2340], 5
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 2344], rax
                                                                                        jmp   n325_call_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx578_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx578_5
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx578_6]
                        lea              rdx, [rip + .Lx578_7]
                                                                                        jmp   rax
.Lx578_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx578_2
.Lx578_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx578_2
.Lx578_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx578_20
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx578_21
.Lx578_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2336]                    # v
                        mov              rdx, qword ptr [rsp + 2344]                    # v
                        call             rt_arg_stage@PLT
.Lx578_21:
                        mov              rdi, qword ptr [rip + .Lx578_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx578_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx578_3]
                        lea              rdx, [rip + .Lx578_4]
                                                                                        jmp   rax
.Lx578_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx578_2
.Lx578_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx578_2
.Lx578_1:
                        call             rt_faildescr@PLT
.Lx578_2:
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104
                                                                                        je    n323_match_begin_α
                                                                                        jmp   n326_match_value_α
n325_call_β:
                                                                                        jmp   n323_match_begin_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n326_match_value_α:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx579_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx579_4]
                        lea              rdx, [rip + .Lx579_5]
                                                                                        jmp   rax
.Lx579_4:
                                                                                        jmp   n327_match_end_α
.Lx579_5:
                                                                                        jmp   n323_match_begin_β
.Lx579_0:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n323_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx579_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n327_match_end_α
.Lx579_6:
                        add              rsp, 16
                                                                                        jmp   n323_match_begin_β
n326_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n327_match_end_α:
                        mov              rax, qword ptr [rbp + 2248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx581_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx581_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx581_1:
                        test             rax, rax
                                                                                        je    .Lx581_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx581_3]
                        lea              rdx, [rip + .Lx581_4]
                                                                                        jmp   rax
.Lx581_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx581_1
.Lx581_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx581_1
.Lx581_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx581_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx581_6
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                                                                                        jmp   n328_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:
                                                                                        jmp   n329_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α:
                                                                                        jmp   n330_lit_string_α
n329_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rsp + 2384], 2                      # result
                        mov              dword ptr [rsp + 2388], 32
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 2392], rax
                                                                                        jmp   n331_assign_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "FAIL: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rsi, qword ptr [rsp + 2384]                    # val
                        mov              rdx, qword ptr [rsp + 2392]                    # val
                        mov              rdi, qword ptr [rip + .Lx587_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n332_statement_end_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:
                        add              rsp, 2400
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:
                                                                                        jmp   n334_statement_begin_α
n333_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_begin_α:
                                                                                        jmp   n335_var_α
n334_statement_begin_β:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n336_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n336_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx594_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n337_keyword_snobol4_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n337_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx595_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n338_call_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn597:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n341_save_restore_α
                                                                                        jmp   n339_assign_α
n338_call_β:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n341_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:
                                                                                        jmp   n239_statement_begin_α
n342_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_goto_α:
                                                                                        jmp   n344_statement_begin_α
n343_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α:
                                                                                        jmp   n345_var_α
n344_statement_begin_β:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n346_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n346_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx608_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n347_keyword_snobol4_α
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n347_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx609_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n348_call_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn611:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn611]                         # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n341_save_restore_α
                                                                                        jmp   n349_assign_α
n348_call_β:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n349_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n350_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_end_α:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n351_goto_α:
                                                                                        jmp   n243_statement_begin_α
n351_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_goto_α:
                                                                                        jmp   n353_statement_begin_α
n352_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α:
                                                                                        jmp   n354_var_α
n353_statement_begin_β:
                                                                                        jmp   n370_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 480], rax                     # result
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n355_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n356_lit_integer_α
.Lx620_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n357_call_α
.Lx621_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn623:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn623]                         # fn
                        lea              rsi, [rsp + 416]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n370_save_restore_α
                                                                                        jmp   n358_keyword_snobol4_α
n357_call_β:
                                                                                        jmp   n370_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n358_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx624_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n359_keyword_snobol4_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n359_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx625_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n360_call_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn627:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn627]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n370_save_restore_α
                                                                                        jmp   n361_var_α
n360_call_β:
                                                                                        jmp   n370_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 704], rax                     # result
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n363_call_α
.Lx629_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn631:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n370_save_restore_α
                                                                                        jmp   n364_keyword_snobol4_α
n363_call_β:
                                                                                        jmp   n370_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n364_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx632_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n365_keyword_snobol4_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n365_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx633_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n366_call_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn635:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]                         # fn
                        lea              rsi, [rsp + 576]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n370_save_restore_α
                                                                                        jmp   n367_binop_α
n366_call_β:
                                                                                        jmp   n370_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n367_binop_α:
                        mov              rdi, qword ptr [rsp + 320]                     # a
                        mov              rsi, qword ptr [rsp + 328]                     # a
                        mov              rdx, qword ptr [rsp + 560]                     # b
                        mov              rcx, qword ptr [rsp + 568]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n368_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n369_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_end_α:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n370_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n371_goto_α:
                                                                                        jmp   n247_statement_begin_α
n371_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_goto_α:
                                                                                        jmp   n373_statement_begin_α
n372_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_begin_α:
                                                                                        jmp   n374_var_α
n373_statement_begin_β:
                                                                                        jmp   n377_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n375_call_α
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn648:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n377_statement_begin_α
                                                                                        jmp   n376_statement_end_α
n375_call_β:
                                                                                        jmp   n377_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_end_α:
                                                                                        jmp   n341_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_begin_α:
                                                                                        jmp   n378_var_α
n377_statement_begin_β:
                                                                                        jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1024], rax                    # result
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n379_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n379_match_begin_α:
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              qword ptr [rbp + 888], rbp                     # old_rbp
                        mov              rdi, qword ptr [rbp + 1024]                    # lo
                        mov              rsi, qword ptr [rbp + 1032]                    # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx655_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n380_lit_integer_α
n379_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx655_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx655_1
                                                                                        jmp   .Lx655_0
.Lx655_1:
.Lx655_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx655_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:
                        mov              qword ptr [rsp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n381_match_pos_α
.Lx656_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n381_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n379_match_begin_β
                                                                                        jmp   n382_match_assign_save_α
n381_match_pos_β:
                                                                                        jmp   n379_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n382_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n383_match_any_α
n382_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n379_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n383_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx661_239
                        add              rsp, 16
                                                                                        jmp   n379_match_begin_β
.Lx661_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx661_240
                        add              rsp, 16
                                                                                        jmp   n379_match_begin_β
.Lx661_240:
                        add              r14d, 1
                                                                                        jmp   n384_match_assign_cond_α
n383_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n379_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n384_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n385_match_end_α
n384_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n383_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n385_match_end_α:
                        mov              r10, r12
.Lx665_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx665_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx665_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx665_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx665_1:
                        test             rax, rax
                                                                                        je    .Lx665_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx665_3]
                        lea              rdx, [rip + .Lx665_4]
                                                                                        jmp   rax
.Lx665_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx665_1
.Lx665_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx665_1
.Lx665_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx665_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx665_6
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n387_match_replace_α
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n387_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx668_0]                # name
                        mov              rsi, qword ptr [rbp + 1024]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1032]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx668_1
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "str"
.Lx668_1:
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n388_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:
                                                                                        jmp   n389_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α:
                                                                                        jmp   n390_lit_string_α
n389_statement_begin_β:
                                                                                        jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rsp + 1088], 2                      # result
                        mov              dword ptr [rsp + 1092], 5
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n391_call_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn675:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]                         # fn
                        lea              rsi, [rsp + 1056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n373_statement_begin_α
                                                                                        jmp   n392_assign_α
n391_call_β:
                                                                                        jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:
                                                                                        jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:
                                                                                        jmp   n395_var_α
n394_statement_begin_β:
                                                                                        jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1296], rax                    # result
                        mov              qword ptr [rsp + 1304], rdx
                                                                                        jmp   n396_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n396_match_begin_α:
                        mov              qword ptr [rbp + 1168], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1176], r14                    # outer_δ
                        mov              qword ptr [rbp + 1184], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax                    # cap_gen
                        mov              qword ptr [rbp + 1160], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 1296]                    # lo
                        mov              rsi, qword ptr [rbp + 1304]                    # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx683_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n397_lit_integer_α
n396_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx683_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx683_1
                                                                                        jmp   .Lx683_0
.Lx683_1:
.Lx683_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx683_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                                                                                        jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_integer_α:
                        mov              qword ptr [rsp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n398_match_pos_α
.Lx684_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n398_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n396_match_begin_β
                                                                                        jmp   n399_match_assign_save_α
n398_match_pos_β:
                                                                                        jmp   n396_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n399_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n400_match_len_α
n399_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n396_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n400_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx688_240
                        add              rsp, 16
                                                                                        jmp   n396_match_begin_β
.Lx688_240:
                        add              r14d, 1
                                                                                        jmp   n401_match_assign_cond_α
n400_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n396_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n401_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n402_match_end_α
n401_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n400_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n402_match_end_α:
                        mov              r10, r12
.Lx692_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx692_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1168], eax
                        mov              qword ptr [rsp + 1192], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx692_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx692_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx692_1:
                        test             rax, rax
                                                                                        je    .Lx692_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx692_3]
                        lea              rdx, [rip + .Lx692_4]
                                                                                        jmp   rax
.Lx692_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx692_1
.Lx692_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx692_1
.Lx692_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx692_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx692_6
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n403_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rsp + 1216], 2                      # result
                        mov              dword ptr [rsp + 1220], 0
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n404_match_replace_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n404_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx695_0]                # name
                        mov              rsi, qword ptr [rbp + 1296]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1304]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1120]                    # start
                        mov              r8, qword ptr [rbp + 1144]                     # end
                        lea              r9, [rbp + 1216]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx695_1
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "str"
.Lx695_1:
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                                                                                        jmp   n405_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:
                                                                                        jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α:
                                                                                        jmp   n407_var_α
n406_statement_begin_β:
                                                                                        jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1344], rax                    # result
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n409_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n409_binop_α:
                        mov              rdi, qword ptr [rsp + 1328]                    # a
                        mov              rsi, qword ptr [rsp + 1336]                    # a
                        mov              rdx, qword ptr [rsp + 1344]                    # b
                        mov              rcx, qword ptr [rsp + 1352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n410_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n411_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:
                                                                                        jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n412_goto_α:
                                                                                        jmp   n394_statement_begin_α
n412_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n413_goto_α:
                                                                                        jmp   n251_statement_begin_α
n413_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_goto_α:
                                                                                        jmp   n291_statement_begin_α
n414_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n415_goto_α:
                                                                                        jmp   n305_statement_begin_α
n415_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_goto_α:
                                                                                        jmp   n319_statement_begin_α
n416_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_goto_α:
                                                                                        jmp   n329_statement_begin_α
n417_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:
                                                                                        jmp   n419_lit_string_α
n418_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rsp + 2400], 2                      # result
                        mov              dword ptr [rsp + 2404], 11
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 2408], rax
                                                                                        jmp   n420_assign_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:
                        mov              rsi, qword ptr [rsp + 2400]                    # val
                        mov              rdx, qword ptr [rsp + 2408]                    # val
                        mov              rdi, qword ptr [rip + .Lx715_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n421_statement_end_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_end_α:
                                                                                        jmp   main_γ
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
.S0:                    .string          "letter"
.S1:                    .string          "ch"
.S2:                    .string          "icase"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
