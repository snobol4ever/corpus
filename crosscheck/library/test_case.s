                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_α:
proc_LBL__lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_α:
proc_LBL__upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_var_α
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_α:
proc_LBL__cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_var_α
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_α:
proc_LBL__icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_var_α
n86_statement_begin_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_call_α
n87_var_β:
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd132:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd132]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx131_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
.Lx131_240:
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
n89_statement_end_β:
                        add              rsp, 32
                                                                                        jmp   n91_statement_begin_α
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
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n93_match_begin_α
n92_var_β:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_begin_α:
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              qword ptr [rbp + 888], rbp                     # old_rbp
                        mov              rdi, qword ptr [rbp + 1040]                    # lo
                        mov              rsi, qword ptr [rbp + 1048]                    # hi
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
.Lx141_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n94_match_sequence_α
n93_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx141_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx141_1
                                                                                        jmp   .Lx141_0
.Lx141_1:
                        mov              r10, qword ptr [1879048192]
.Lx141_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx141_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_sequence_α:
                                                                                        jmp   n107_lit_integer_α
n94_match_sequence_as:
                                                                                        jmp   n95_match_end_α
n94_match_sequence_β:
                                                                                        jmp   n106_match_assign_cond_β
n94_match_sequence_af:
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx145_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_9
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
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx145_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx145_1:
                        test             rax, rax
                                                                                        je    .Lx145_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx145_3]
                        lea              rdx, [rip + .Lx145_4]
                                                                                        jmp   rax
.Lx145_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx145_1
.Lx145_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx145_1
.Lx145_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx145_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n97_match_replace_α
n96_lit_string_β:
                                                                                        jmp   n109_statement_begin_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx148_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx148_1
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "str"
.Lx148_1:
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                                                                                        jmp   n99_statement_begin_α
n98_statement_end_β:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:
                                                                                        jmp   n100_lit_string_α
n99_statement_begin_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n101_call_α
n100_lit_string_β:
                                                                                        jmp   n86_statement_begin_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn155:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n86_statement_begin_α
                                                                                        jmp   n102_assign_α
n101_call_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n103_statement_end_α
n102_assign_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:
                                                                                        jmp   n86_statement_begin_α
n103_statement_end_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n105_match_any_α
n104_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx162_239
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
.Lx162_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx162_240
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
.Lx162_240:
                        add              r14d, 1
                                                                                        jmp   n106_match_assign_cond_α
n105_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n95_match_end_α
n106_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n105_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n108_match_pos_α
n107_lit_integer_β:
                                                                                        jmp   n93_match_begin_β
.Lx165_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n93_match_begin_β
                                                                                        jmp   n104_match_assign_save_α
n108_match_pos_β:
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_var_α
n109_statement_begin_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n111_match_begin_α
n110_var_β:
                                                                                        jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_match_begin_α:
                        mov              qword ptr [rbp + 1184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1192], r14                    # outer_δ
                        mov              qword ptr [rbp + 1200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1208], rax                    # cap_gen
                        mov              qword ptr [rbp + 1176], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 1328]                    # lo
                        mov              rsi, qword ptr [rbp + 1336]                    # hi
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
.Lx171_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n112_match_sequence_α
n111_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx171_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx171_1
                                                                                        jmp   .Lx171_0
.Lx171_1:
                        mov              r10, qword ptr [1879048192]
.Lx171_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx171_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1176]                    # old_rbp
                                                                                        jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_match_sequence_α:
                                                                                        jmp   n120_lit_integer_α
n112_match_sequence_as:
                                                                                        jmp   n113_match_end_α
n112_match_sequence_β:
                                                                                        jmp   n119_match_assign_cond_β
n112_match_sequence_af:
                                                                                        jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx175_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx175_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1184], eax
                        mov              qword ptr [rsp + 1208], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx175_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx175_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx175_1:
                        test             rax, rax
                                                                                        je    .Lx175_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4]
                                                                                        jmp   rax
.Lx175_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx175_1
.Lx175_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx175_1
.Lx175_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx175_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx175_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n115_match_replace_α
n114_lit_string_β:
                                                                                        jmp   n122_statement_begin_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx178_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx178_1
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "str"
.Lx178_1:
                        mov              rbp, qword ptr [rbp + 1176]                    # old_rbp
                                                                                        jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                                                                                        jmp   n122_statement_begin_α
n116_statement_end_β:
                                                                                        jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n118_match_len_α
n117_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx183_240
                        add              rsp, 16
                                                                                        jmp   n111_match_begin_β
.Lx183_240:
                        add              r14d, 1
                                                                                        jmp   n119_match_assign_cond_α
n118_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n113_match_end_α
n119_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n118_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n121_match_pos_α
n120_lit_integer_β:
                                                                                        jmp   n111_match_begin_β
.Lx186_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n121_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n111_match_begin_β
                                                                                        jmp   n117_match_assign_save_α
n121_match_pos_β:
                                                                                        jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:
                                                                                        jmp   n123_var_α
n122_statement_begin_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n124_var_α
n123_var_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n125_binop_α
n124_var_β:
                        add              rsp, 16
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n126_assign_α
n125_binop_β:
                        add              rsp, 32
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n127_statement_end_α
n126_assign_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:
                                                                                        jmp   n86_statement_begin_α
n127_statement_end_β:
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
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
                        .string          "lwr"
.Lx201_1:
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
                        .string          "upr"
.Lx207_1:
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
                        .string          "cap"
.Lx213_1:
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
n214_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n215_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n215_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx219_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx219_1
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "icase"
.Lx219_1:
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
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n220_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n220_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n228_match_patref_α
n220_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n220_match_sequence_β:
                                                                                        jmp   n221_match_alternate_β
n220_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx232_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n225_var_α
.Lx232_21:
                        lea              rax, [rip + .Lx232_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n222_var_α
n221_match_alternate_s0:
                        lea              rax, [rip + .Lx232_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n221_match_alternate_as
n221_match_alternate_s1:
                        lea              rax, [rip + .Lx232_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n221_match_alternate_as
.Lx232_40:
                                                                                        jmp   n227_match_value_β
.Lx232_41:
                                                                                        jmp   n224_match_value_β
n221_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n221_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n221_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx232_19:
                                                                                        jmp   n228_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n223_call_α
n222_var_β:
                                                                                        jmp   n221_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx235_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx235_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_6]
                        lea              rdx, [rip + .Lx235_7]
                                                                                        jmp   rax
.Lx235_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx235_21:
                        mov              rdi, qword ptr [rip + .Lx235_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n221_match_alternate_af
                                                                                        jmp   n224_match_value_α
n223_call_β:
                                                                                        jmp   n221_match_alternate_af
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n224_match_value_α:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx236_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx236_4]
                        lea              rdx, [rip + .Lx236_5]
                                                                                        jmp   rax
.Lx236_4:
                                                                                        jmp   n221_match_alternate_s1
.Lx236_5:
                                                                                        jmp   n221_match_alternate_af
.Lx236_0:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n221_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx236_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n221_match_alternate_s1
.Lx236_6:
                        add              rsp, 16
                                                                                        jmp   n221_match_alternate_af
n224_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax                     # result
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n226_call_α
n225_var_β:
                                                                                        jmp   n221_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx239_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx239_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx239_6]
                        lea              rdx, [rip + .Lx239_7]
                                                                                        jmp   rax
.Lx239_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx239_2
.Lx239_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx239_2
.Lx239_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx239_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx239_21
.Lx239_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx239_21:
                        mov              rdi, qword ptr [rip + .Lx239_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx239_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx239_3]
                        lea              rdx, [rip + .Lx239_4]
                                                                                        jmp   rax
.Lx239_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx239_2
.Lx239_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx239_2
.Lx239_1:
                        call             rt_faildescr@PLT
.Lx239_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n221_match_alternate_af
                                                                                        jmp   n227_match_value_α
n226_call_β:
                                                                                        jmp   n221_match_alternate_af
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n227_match_value_α:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx240_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx240_4]
                        lea              rdx, [rip + .Lx240_5]
                                                                                        jmp   rax
.Lx240_4:
                                                                                        jmp   n221_match_alternate_s0
.Lx240_5:
                                                                                        jmp   n221_match_alternate_af
.Lx240_0:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n221_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx240_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n221_match_alternate_s0
.Lx240_6:
                        add              rsp, 16
                                                                                        jmp   n221_match_alternate_af
n227_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n228_match_patref_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx241_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx241_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx241_10
.Lx241_9:
                        xor              eax, eax
.Lx241_10:
                        test             rax, rax
                                                                                        jz    .Lx241_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx241_4]
                        lea              rdx, [rip + .Lx241_5]
                                                                                        jmp   rax
.Lx241_4:
                                                                                        jmp   n221_match_alternate_α
.Lx241_5:
                                                                                        jmp   proc_PAT$0_ω
.Lx241_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx241_2:
                        test             rax, rax
                                                                                        je    .Lx241_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx241_7]
                        lea              rdx, [rip + .Lx241_8]
                                                                                        jmp   rax
.Lx241_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx241_2
.Lx241_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx241_2
.Lx241_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$0_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx241_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n221_match_alternate_α
.Lx241_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
n228_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx242_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx242_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx243_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx243_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx243_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx243_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
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
                        mov              esi, 2464
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
                        mov              esi, 2464
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
                        mov              esi, 2464
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
                        mov              esi, 2464
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
                        mov              esi, 224
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
n244_statement_begin_α:
                                                                                        jmp   n245_statement_end_α
n244_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:
                                                                                        jmp   n246_statement_begin_α
n245_statement_end_β:
                                                                                        jmp   n246_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'no match ok'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:
                                                                                        jmp   n247_statement_end_α
n246_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:
                                                                                        jmp   n248_statement_begin_α
n247_statement_end_β:
                                                                                        jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α:
                                                                                        jmp   n249_statement_end_α
n248_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:
                                                                                        jmp   n250_statement_begin_α
n249_statement_end_β:
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:
                                                                                        jmp   n251_statement_end_α
n250_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:
                                                                                        jmp   n252_statement_begin_α
n251_statement_end_β:
                                                                                        jmp   n252_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α:
                                                                                        jmp   n253_statement_end_α
n252_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:
                                                                                        jmp   n254_statement_begin_α
n253_statement_end_β:
                                                                                        jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α:
                                                                                        jmp   n255_statement_end_α
n254_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:
                                                                                        jmp   n256_statement_begin_α
n255_statement_end_β:
                                                                                        jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α:
                                                                                        jmp   n257_statement_end_α
n256_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:
                                                                                        jmp   n258_statement_begin_α
n257_statement_end_β:
                                                                                        jmp   n258_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α:
                                                                                        jmp   n259_statement_end_α
n258_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:
                                                                                        jmp   n260_statement_begin_α
n259_statement_end_β:
                                                                                        jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α:
                                                                                        jmp   n261_statement_end_α
n260_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:
                                                                                        jmp   n262_statement_begin_α
n261_statement_end_β:
                                                                                        jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:
                                                                                        jmp   n263_statement_end_α
n262_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:
                                                                                        jmp   n264_statement_begin_α
n263_statement_end_β:
                                                                                        jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α:
                                                                                        jmp   n265_lit_string_α
n264_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n266_lit_integer_α
n265_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n267_call_α
n266_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
.Lx476_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:
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
.Lrkfnzd478:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd478]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx477_240
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
.Lx477_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n268_statement_end_α
n267_call_β:
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:
                                                                                        jmp   n269_statement_begin_α
n268_statement_end_β:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:
                                                                                        jmp   n270_statement_end_α
n269_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:
                                                                                        jmp   n271_statement_begin_α
n270_statement_end_β:
                                                                                        jmp   n271_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_begin_α:
                                                                                        jmp   n272_lit_string_α
n271_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n273_call_α
n272_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n276_statement_begin_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx489_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx489_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx489_6]
                        lea              rdx, [rip + .Lx489_7]
                                                                                        jmp   rax
.Lx489_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx489_2
.Lx489_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx489_2
.Lx489_5:
                        add              rsp, 16
.Lx489_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx489_240
                        add              rsp, 16
                                                                                        jmp   n276_statement_begin_α
.Lx489_240:
                                                                                        jmp   n274_assign_α
n273_call_β:
                                                                                        jmp   n276_statement_begin_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx490_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n275_statement_end_α
n274_assign_β:
                                                                                        jmp   n276_statement_begin_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:
                                                                                        jmp   n276_statement_begin_α
n275_statement_end_β:
                                                                                        jmp   n276_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_begin_α:
                                                                                        jmp   n277_lit_string_α
n276_statement_begin_β:
                        add              rsp, 80
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n278_call_α
n277_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n281_statement_begin_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx497_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx497_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx497_6]
                        lea              rdx, [rip + .Lx497_7]
                                                                                        jmp   rax
.Lx497_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx497_2
.Lx497_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx497_2
.Lx497_5:
                        add              rsp, 16
.Lx497_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx497_240
                        add              rsp, 16
                                                                                        jmp   n281_statement_begin_α
.Lx497_240:
                                                                                        jmp   n279_assign_α
n278_call_β:
                                                                                        jmp   n281_statement_begin_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx498_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n280_statement_end_α
n279_assign_β:
                                                                                        jmp   n281_statement_begin_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:
                                                                                        jmp   n281_statement_begin_α
n280_statement_end_β:
                                                                                        jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α:
                                                                                        jmp   n282_lit_string_α
n281_statement_begin_β:
                        add              rsp, 112
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n283_call_α
n282_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n286_statement_begin_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx505_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx505_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx505_6]
                        lea              rdx, [rip + .Lx505_7]
                                                                                        jmp   rax
.Lx505_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx505_2
.Lx505_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx505_2
.Lx505_5:
                        add              rsp, 16
.Lx505_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx505_240
                        add              rsp, 16
                                                                                        jmp   n286_statement_begin_α
.Lx505_240:
                                                                                        jmp   n284_assign_α
n283_call_β:
                                                                                        jmp   n286_statement_begin_α
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx506_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n285_statement_end_α
n284_assign_β:
                                                                                        jmp   n286_statement_begin_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:
                                                                                        jmp   n286_statement_begin_α
n285_statement_end_β:
                                                                                        jmp   n286_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_begin_α:
                                                                                        jmp   n287_statement_end_α
n286_statement_begin_β:
                        add              rsp, 144
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_end_α:
                                                                                        jmp   n288_statement_begin_α
n287_statement_end_β:
                                                                                        jmp   n288_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_begin_α:
                                                                                        jmp   n289_lit_string_α
n288_statement_begin_β:
                        add              rsp, 144
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n290_match_begin_α
n289_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n300_statement_begin_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n290_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1736], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1744], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1752], r14                    # outer_δ
                        mov              qword ptr [rbp + 1760], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1768], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1712], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1704], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1696], 0                      # start_δ
.Lx517_0:
                        mov              r14d, dword ptr [rbp + 1696]
                                                                                        jmp   n291_lit_string_α
n290_match_begin_β:
                        add              dword ptr [rbp + 1696], 1
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, r15d
                                                                                        jg    .Lx517_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx517_1
                                                                                        jmp   .Lx517_0
.Lx517_1:
                        mov              rax, qword ptr [rbp + 1704]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1712]
                        mov              r10, qword ptr [1879048192]
.Lx517_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx517_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1744]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1752]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1760]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1768]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n300_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n292_call_α
n291_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 1736]                    # old_rbp
                        add              rsp, 160
                                                                                        jmp   n290_match_begin_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
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
                        mov              rdi, qword ptr [rip + .Lx520_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx520_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx520_6]
                        lea              rdx, [rip + .Lx520_7]
                                                                                        jmp   rax
.Lx520_6:
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
                                                                                        jmp   .Lx520_2
.Lx520_7:
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
                                                                                        jmp   .Lx520_2
.Lx520_5:
                        add              rsp, 64
.Lx520_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx520_240
                        mov              rbp, qword ptr [rbp + 1736]                    # old_rbp
                        add              rsp, 16
                                                                                        jmp   n291_lit_string_β
.Lx520_240:
                                                                                        jmp   n293_match_value_α
n292_call_β:
                                                                                        jmp   n291_lit_string_β
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n293_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx521_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx521_4]
                        lea              rdx, [rip + .Lx521_5]
                                                                                        jmp   rax
.Lx521_4:
                                                                                        jmp   n294_match_end_α
.Lx521_5:
                                                                                        jmp   n290_match_begin_β
.Lx521_0:
                        lea              rdi, [rbp + 1776]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n290_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx521_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n294_match_end_α
.Lx521_6:
                        add              rsp, 16
                                                                                        jmp   n290_match_begin_β
n293_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n294_match_end_α:
                        mov              rax, qword ptr [rbp + 1704]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1712]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx523_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx523_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx523_1:
                        test             rax, rax
                                                                                        je    .Lx523_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx523_3]
                        lea              rdx, [rip + .Lx523_4]
                                                                                        jmp   rax
.Lx523_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx523_1
.Lx523_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx523_1
.Lx523_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx523_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx523_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1744]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1752]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1760]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1768]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n295_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_end_α:
                                                                                        jmp   n296_statement_begin_α
n295_statement_end_β:
                                                                                        jmp   n300_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_begin_α:
                                                                                        jmp   n297_lit_string_α
n296_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1736]                    # old_rbp
                        add              rsp, 192
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n298_assign_α
n297_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n300_statement_begin_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx529_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n299_statement_end_α
n298_assign_β:
                                                                                        jmp   n300_statement_begin_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_end_α:
                                                                                        jmp   n300_statement_begin_α
n299_statement_end_β:
                                                                                        jmp   n300_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_begin_α:
                                                                                        jmp   n301_statement_end_α
n300_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1736]                    # old_rbp
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:
                                                                                        jmp   n302_statement_begin_α
n301_statement_end_β:
                                                                                        jmp   n302_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α:
                                                                                        jmp   n303_lit_string_α
n302_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1736]                    # old_rbp
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n304_match_begin_α
n303_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n314_statement_begin_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n304_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1928], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1936], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1944], r14                    # outer_δ
                        mov              qword ptr [rbp + 1952], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1960], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1904], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1896], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1888], 0                      # start_δ
.Lx540_0:
                        mov              r14d, dword ptr [rbp + 1888]
                                                                                        jmp   n305_lit_string_α
n304_match_begin_β:
                        add              dword ptr [rbp + 1888], 1
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, r15d
                                                                                        jg    .Lx540_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx540_1
                                                                                        jmp   .Lx540_0
.Lx540_1:
                        mov              rax, qword ptr [rbp + 1896]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1904]
                        mov              r10, qword ptr [1879048192]
.Lx540_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx540_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1936]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1944]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1952]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1960]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n314_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n306_call_α
n305_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 1928]                    # old_rbp
                        add              rsp, 224
                                                                                        jmp   n304_match_begin_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
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
                        mov              rdi, qword ptr [rip + .Lx543_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx543_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx543_6]
                        lea              rdx, [rip + .Lx543_7]
                                                                                        jmp   rax
.Lx543_6:
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
                                                                                        jmp   .Lx543_2
.Lx543_7:
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
                                                                                        jmp   .Lx543_2
.Lx543_5:
                        add              rsp, 64
.Lx543_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx543_240
                        mov              rbp, qword ptr [rbp + 1928]                    # old_rbp
                        add              rsp, 16
                                                                                        jmp   n305_lit_string_β
.Lx543_240:
                                                                                        jmp   n307_match_value_α
n306_call_β:
                                                                                        jmp   n305_lit_string_β
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n307_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx544_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx544_4]
                        lea              rdx, [rip + .Lx544_5]
                                                                                        jmp   rax
.Lx544_4:
                                                                                        jmp   n308_match_end_α
.Lx544_5:
                                                                                        jmp   n304_match_begin_β
.Lx544_0:
                        lea              rdi, [rbp + 1968]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n304_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx544_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n308_match_end_α
.Lx544_6:
                        add              rsp, 16
                                                                                        jmp   n304_match_begin_β
n307_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n308_match_end_α:
                        mov              rax, qword ptr [rbp + 1896]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1904]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx546_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx546_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx546_1:
                        test             rax, rax
                                                                                        je    .Lx546_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx546_3]
                        lea              rdx, [rip + .Lx546_4]
                                                                                        jmp   rax
.Lx546_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx546_1
.Lx546_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx546_1
.Lx546_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx546_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx546_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1936]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1944]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1952]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1960]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n309_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_end_α:
                                                                                        jmp   n310_statement_begin_α
n309_statement_end_β:
                                                                                        jmp   n314_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_begin_α:
                                                                                        jmp   n311_lit_string_α
n310_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1928]                    # old_rbp
                        add              rsp, 256
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n312_assign_α
n311_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n314_statement_begin_α
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx552_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n313_statement_end_α
n312_assign_β:
                                                                                        jmp   n314_statement_begin_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n313_statement_end_α:
                                                                                        jmp   n314_statement_begin_α
n313_statement_end_β:
                                                                                        jmp   n314_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_begin_α:
                                                                                        jmp   n315_statement_end_α
n314_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1928]                    # old_rbp
                        add              rsp, 272
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:
                                                                                        jmp   n316_statement_begin_α
n315_statement_end_β:
                                                                                        jmp   n316_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α:
                                                                                        jmp   n317_lit_string_α
n316_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 1928]                    # old_rbp
                        add              rsp, 272
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n318_match_begin_α
n317_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n328_statement_begin_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n318_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2120], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2128], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2136], r14                    # outer_δ
                        mov              qword ptr [rbp + 2144], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2152], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2096], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2088], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2080], 0                      # start_δ
.Lx563_0:
                        mov              r14d, dword ptr [rbp + 2080]
                                                                                        jmp   n319_lit_string_α
n318_match_begin_β:
                        add              dword ptr [rbp + 2080], 1
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, r15d
                                                                                        jg    .Lx563_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx563_1
                                                                                        jmp   .Lx563_0
.Lx563_1:
                        mov              rax, qword ptr [rbp + 2088]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2096]
                        mov              r10, qword ptr [1879048192]
.Lx563_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx563_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n320_call_α
n319_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 288
                                                                                        jmp   n318_match_begin_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
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
                        mov              rdi, qword ptr [rip + .Lx566_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx566_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx566_6]
                        lea              rdx, [rip + .Lx566_7]
                                                                                        jmp   rax
.Lx566_6:
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
                                                                                        jmp   .Lx566_2
.Lx566_7:
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
                                                                                        jmp   .Lx566_2
.Lx566_5:
                        add              rsp, 64
.Lx566_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx566_240
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 16
                                                                                        jmp   n319_lit_string_β
.Lx566_240:
                                                                                        jmp   n321_match_value_α
n320_call_β:
                                                                                        jmp   n319_lit_string_β
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n321_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx567_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx567_4]
                        lea              rdx, [rip + .Lx567_5]
                                                                                        jmp   rax
.Lx567_4:
                                                                                        jmp   n322_match_end_α
.Lx567_5:
                                                                                        jmp   n318_match_begin_β
.Lx567_0:
                        lea              rdi, [rbp + 2160]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n318_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx567_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n322_match_end_α
.Lx567_6:
                        add              rsp, 16
                                                                                        jmp   n318_match_begin_β
n321_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n322_match_end_α:
                        mov              rax, qword ptr [rbp + 2088]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2096]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx569_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx569_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx569_1:
                        test             rax, rax
                                                                                        je    .Lx569_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx569_3]
                        lea              rdx, [rip + .Lx569_4]
                                                                                        jmp   rax
.Lx569_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx569_1
.Lx569_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx569_1
.Lx569_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx569_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx569_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2128]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2136]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2144]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2152]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n323_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:
                                                                                        jmp   n324_statement_begin_α
n323_statement_end_β:
                                                                                        jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α:
                                                                                        jmp   n325_lit_string_α
n324_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 320
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n326_assign_α
n325_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n328_statement_begin_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx575_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n327_statement_end_α
n326_assign_β:
                                                                                        jmp   n328_statement_begin_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:
                                                                                        jmp   n328_statement_begin_α
n327_statement_end_β:
                                                                                        jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:
                                                                                        jmp   n329_statement_end_α
n328_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 336
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_end_α:
                                                                                        jmp   n330_statement_begin_α
n329_statement_end_β:
                                                                                        jmp   n330_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_begin_α:
                                                                                        jmp   n331_lit_string_α
n330_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 336
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n332_match_begin_α
n331_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2120]                    # old_rbp
                        add              rsp, 336
                                                                                        jmp   n429_statement_begin_α
.Lx584_0:
                        .quad            .Lx584_0_s
.Lx584_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n332_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2312], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2320], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2328], r14                    # outer_δ
                        mov              qword ptr [rbp + 2336], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2344], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2288], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2280], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2272], 0                      # start_δ
.Lx586_0:
                        mov              r14d, dword ptr [rbp + 2272]
                                                                                        jmp   n333_lit_string_α
n332_match_begin_β:
                        add              dword ptr [rbp + 2272], 1
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, r15d
                                                                                        jg    .Lx586_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx586_1
                                                                                        jmp   .Lx586_0
.Lx586_1:
                        mov              rax, qword ptr [rbp + 2280]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2288]
                        mov              r10, qword ptr [1879048192]
.Lx586_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx586_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2320]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2328]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2336]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2344]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n331_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n334_call_α
n333_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 352
                                                                                        jmp   n332_match_begin_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
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
                        mov              rdi, qword ptr [rip + .Lx589_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx589_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx589_6]
                        lea              rdx, [rip + .Lx589_7]
                                                                                        jmp   rax
.Lx589_6:
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
                                                                                        jmp   .Lx589_2
.Lx589_7:
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
                                                                                        jmp   .Lx589_2
.Lx589_5:
                        add              rsp, 64
.Lx589_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx589_240
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 16
                                                                                        jmp   n333_lit_string_β
.Lx589_240:
                                                                                        jmp   n335_match_value_α
n334_call_β:
                                                                                        jmp   n333_lit_string_β
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n335_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx590_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx590_4]
                        lea              rdx, [rip + .Lx590_5]
                                                                                        jmp   rax
.Lx590_4:
                                                                                        jmp   n336_match_end_α
.Lx590_5:
                                                                                        jmp   n332_match_begin_β
.Lx590_0:
                        lea              rdi, [rbp + 2352]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n332_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx590_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n336_match_end_α
.Lx590_6:
                        add              rsp, 16
                                                                                        jmp   n332_match_begin_β
n335_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n336_match_end_α:
                        mov              rax, qword ptr [rbp + 2280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx592_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx592_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx592_1:
                        test             rax, rax
                                                                                        je    .Lx592_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx592_3]
                        lea              rdx, [rip + .Lx592_4]
                                                                                        jmp   rax
.Lx592_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx592_1
.Lx592_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx592_1
.Lx592_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx592_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx592_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2320]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2328]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2336]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2344]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n337_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:
                                                                                        jmp   n338_statement_begin_α
n337_statement_end_β:
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 384
                                                                                        jmp   n429_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α:
                                                                                        jmp   n339_lit_string_α
n338_statement_begin_β:
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 384
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n340_assign_α
n339_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 384
                                                                                        jmp   main_γ
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "FAIL: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx598_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n341_statement_end_α
n340_assign_β:
                                                                                        jmp   n339_lit_string_β
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:
                        mov              rbp, qword ptr [rbp + 2312]                    # old_rbp
                        add              rsp, 400
                                                                                        jmp   main_γ
n341_statement_end_β:
                        mov              rbp, qword ptr [rbp + 2312]
                        add              rsp, 400
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:
                                                                                        jmp   n343_statement_begin_α
n342_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α:
                                                                                        jmp   n344_var_α
n343_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n345_keyword_snobol4_α
n344_var_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n345_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx605_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n346_keyword_snobol4_α
n345_keyword_snobol4_β:
                                                                                        jmp   n350_save_restore_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n346_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx606_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n347_call_α
n346_keyword_snobol4_β:
                                                                                        jmp   n350_save_restore_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:
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
.Lrkfn608:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n350_save_restore_α
                                                                                        jmp   n348_assign_α
n347_call_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n349_statement_end_α
n348_assign_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:
                                                                                        jmp   n350_save_restore_α
n349_statement_end_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n350_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n351_goto_α:
                                                                                        jmp   n248_statement_begin_α
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
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n355_keyword_snobol4_α
n354_var_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n355_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx619_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n356_keyword_snobol4_α
n355_keyword_snobol4_β:
                                                                                        jmp   n350_save_restore_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n356_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx620_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n357_call_α
n356_keyword_snobol4_β:
                                                                                        jmp   n350_save_restore_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:
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
.Lrkfn622:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]                         # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n350_save_restore_α
                                                                                        jmp   n358_assign_α
n357_call_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n359_statement_end_α
n358_assign_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:
                                                                                        jmp   n350_save_restore_α
n359_statement_end_β:
                                                                                        jmp   n350_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n360_goto_α:
                                                                                        jmp   n252_statement_begin_α
n360_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_goto_α:
                                                                                        jmp   n362_statement_begin_α
n361_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α:
                                                                                        jmp   n363_var_α
n362_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 480], rax                     # result
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n364_lit_integer_α
n363_var_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n365_lit_integer_α
n364_lit_integer_β:
                                                                                        jmp   n379_save_restore_α
.Lx631_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n366_call_α
n365_lit_integer_β:
                                                                                        jmp   n379_save_restore_α
.Lx632_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:
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
.Lrkfn634:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn634]                         # fn
                        lea              rsi, [rsp + 416]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n379_save_restore_α
                                                                                        jmp   n367_keyword_snobol4_α
n366_call_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n367_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx635_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n368_keyword_snobol4_α
n367_keyword_snobol4_β:
                                                                                        jmp   n379_save_restore_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n368_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx636_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n369_call_α
n368_keyword_snobol4_β:
                                                                                        jmp   n379_save_restore_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:
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
.Lrkfn638:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n379_save_restore_α
                                                                                        jmp   n370_var_α
n369_call_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 704], rax                     # result
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n371_lit_integer_α
n370_var_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n372_call_α
n371_lit_integer_β:
                                                                                        jmp   n379_save_restore_α
.Lx640_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn642:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n379_save_restore_α
                                                                                        jmp   n373_keyword_snobol4_α
n372_call_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n373_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx643_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n374_keyword_snobol4_α
n373_keyword_snobol4_β:
                                                                                        jmp   n379_save_restore_α
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n374_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx644_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n375_call_α
n374_keyword_snobol4_β:
                                                                                        jmp   n379_save_restore_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:
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
.Lrkfn646:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]                         # fn
                        lea              rsi, [rsp + 576]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n379_save_restore_α
                                                                                        jmp   n376_binop_α
n375_call_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n376_binop_α:
                        mov              rdi, qword ptr [rsp + 320]                     # a
                        mov              rsi, qword ptr [rsp + 328]                     # a
                        mov              rdx, qword ptr [rsp + 560]                     # b
                        mov              rcx, qword ptr [rsp + 568]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n377_assign_α
n376_binop_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n378_statement_end_α
n377_assign_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_end_α:
                                                                                        jmp   n350_save_restore_α
n378_statement_end_β:
                                                                                        jmp   n379_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n379_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n380_goto_α:
                                                                                        jmp   n256_statement_begin_α
n380_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_goto_α:
                                                                                        jmp   n382_statement_begin_α
n381_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_begin_α:
                                                                                        jmp   n383_var_α
n382_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n384_call_α
n383_var_β:
                                                                                        jmp   n386_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn659:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n386_statement_begin_α
                                                                                        jmp   n385_statement_end_α
n384_call_β:
                                                                                        jmp   n386_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_end_α:
                                                                                        jmp   n350_save_restore_α
n385_statement_end_β:
                                                                                        jmp   n386_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_begin_α:
                                                                                        jmp   n387_var_α
n386_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n388_match_begin_α
n387_var_β:
                                                                                        jmp   n404_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n388_match_begin_α:
                        mov              qword ptr [rsp + 888], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 1040]                    # lo
                        mov              rsi, qword ptr [rsp + 1048]                    # hi
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
.Lx666_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n389_match_sequence_α
n388_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx666_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx666_1
                                                                                        jmp   .Lx666_0
.Lx666_1:
                        mov              r10, qword ptr [1879048192]
.Lx666_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx666_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n404_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n389_match_sequence_α:
                                                                                        jmp   n402_lit_integer_α
n389_match_sequence_as:
                                                                                        jmp   n390_match_end_α
n389_match_sequence_β:
                                                                                        jmp   n401_match_assign_cond_β
n389_match_sequence_af:
                                                                                        jmp   n388_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n390_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx670_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_9
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
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx670_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx670_1:
                        test             rax, rax
                                                                                        je    .Lx670_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx670_3]
                        lea              rdx, [rip + .Lx670_4]
                                                                                        jmp   rax
.Lx670_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx670_1
.Lx670_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx670_1
.Lx670_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx670_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n392_match_replace_α
n391_lit_string_β:
                                                                                        jmp   n404_statement_begin_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n392_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx673_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx673_1
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "str"
.Lx673_1:
                                                                                        jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:
                                                                                        jmp   n394_statement_begin_α
n393_statement_end_β:
                                                                                        jmp   n404_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:
                                                                                        jmp   n395_lit_string_α
n394_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n396_call_α
n395_lit_string_β:
                                                                                        jmp   n382_statement_begin_α
.Lx678_0:
                        .quad            .Lx678_0_s
.Lx678_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn680:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n382_statement_begin_α
                                                                                        jmp   n397_assign_α
n396_call_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n398_statement_end_α
n397_assign_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:
                                                                                        jmp   n382_statement_begin_α
n398_statement_end_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n399_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n400_match_any_α
n399_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n388_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n400_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx687_239
                        add              rsp, 16
                                                                                        jmp   n388_match_begin_β
.Lx687_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx687_240
                        add              rsp, 16
                                                                                        jmp   n388_match_begin_β
.Lx687_240:
                        add              r14d, 1
                                                                                        jmp   n401_match_assign_cond_α
n400_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n388_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n401_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n390_match_end_α
n401_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n400_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n403_match_pos_α
n402_lit_integer_β:
                                                                                        jmp   n388_match_begin_β
.Lx690_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n403_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n388_match_begin_β
                                                                                        jmp   n399_match_assign_save_α
n403_match_pos_β:
                                                                                        jmp   n388_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_statement_begin_α:
                                                                                        jmp   n405_var_α
n404_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n406_match_begin_α
n405_var_β:
                                                                                        jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n406_match_begin_α:
                        mov              qword ptr [rsp + 1176], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1192], r14                    # outer_δ
                        mov              qword ptr [rbp + 1200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1208], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 1328]                    # lo
                        mov              rsi, qword ptr [rsp + 1336]                    # hi
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
.Lx696_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n407_match_sequence_α
n406_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx696_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx696_1
                                                                                        jmp   .Lx696_0
.Lx696_1:
                        mov              r10, qword ptr [1879048192]
.Lx696_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx696_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_match_sequence_α:
                                                                                        jmp   n415_lit_integer_α
n407_match_sequence_as:
                                                                                        jmp   n408_match_end_α
n407_match_sequence_β:
                                                                                        jmp   n414_match_assign_cond_β
n407_match_sequence_af:
                                                                                        jmp   n406_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n408_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx700_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx700_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1184], eax
                        mov              qword ptr [rsp + 1208], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx700_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx700_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx700_1:
                        test             rax, rax
                                                                                        je    .Lx700_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx700_3]
                        lea              rdx, [rip + .Lx700_4]
                                                                                        jmp   rax
.Lx700_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx700_1
.Lx700_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx700_1
.Lx700_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx700_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx700_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n410_match_replace_α
n409_lit_string_β:
                                                                                        jmp   n417_statement_begin_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n410_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx703_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx703_1
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "str"
.Lx703_1:
                                                                                        jmp   n411_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:
                                                                                        jmp   n417_statement_begin_α
n411_statement_end_β:
                                                                                        jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n412_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n413_match_len_α
n412_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n406_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n413_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx708_240
                        add              rsp, 16
                                                                                        jmp   n406_match_begin_β
.Lx708_240:
                        add              r14d, 1
                                                                                        jmp   n414_match_assign_cond_α
n413_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n406_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n414_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n408_match_end_α
n414_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n413_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n416_match_pos_α
n415_lit_integer_β:
                                                                                        jmp   n406_match_begin_β
.Lx711_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n416_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n406_match_begin_β
                                                                                        jmp   n412_match_assign_save_α
n416_match_pos_β:
                                                                                        jmp   n406_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:
                                                                                        jmp   n418_var_α
n417_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n419_var_α
n418_var_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n420_binop_α
n419_var_β:
                        add              rsp, 16
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n420_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n421_assign_α
n420_binop_β:
                        add              rsp, 32
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n422_statement_end_α
n421_assign_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_end_α:
                                                                                        jmp   n382_statement_begin_α
n422_statement_end_β:
                                                                                        jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n423_goto_α:
                                                                                        jmp   n404_statement_begin_α
n423_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_goto_α:
                                                                                        jmp   n260_statement_begin_α
n424_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_goto_α:
                                                                                        jmp   n300_statement_begin_α
n425_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_goto_α:
                                                                                        jmp   n314_statement_begin_α
n426_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_goto_α:
                                                                                        jmp   n328_statement_begin_α
n427_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_goto_α:
                                                                                        jmp   n338_statement_begin_α
n428_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_begin_α:
                                                                                        jmp   n430_lit_string_α
n429_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:
                        mov              qword ptr [rsp + 2432], 2                      # result
                        mov              dword ptr [rsp + 2436], 11
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n431_assign_α
n430_lit_string_β:
                                                                                        jmp   main_γ
.Lx729_0:
                        .quad            .Lx729_0_s
.Lx729_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:
                        mov              rsi, qword ptr [rsp + 2432]                    # val
                        mov              rdx, qword ptr [rsp + 2440]                    # val
                        mov              rdi, qword ptr [rip + .Lx730_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n432_statement_end_α
n431_assign_β:
                                                                                        jmp   main_γ
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_end_α:
                                                                                        jmp   main_γ
n432_statement_end_β:
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
