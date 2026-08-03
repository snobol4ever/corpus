                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_α:
proc_LBL__lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n1_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx8_0]                  # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_keyword_snobol4_α
.Lx8_0:
                        .quad            .Lx8_0_s
.Lx8_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx9_0]                  # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_call_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:
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
.Lrkfnzd11:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd11]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx10_240
                        add              rsp, 16
                                                                                        jmp   n6_save_restore_α
.Lx10_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_assign_α
n3_call_β:
                        add              rsp, 16
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n5_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_α:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n6_save_restore_α:
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
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx25_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_keyword_snobol4_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n19_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx26_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
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
.Lrkfnzd28:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd28]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 16
                                                                                        jmp   n23_save_restore_α
.Lx27_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_assign_α
n20_call_β:
                        add              rsp, 16
                                                                                        jmp   n23_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n22_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_α:
                                                                                        jmp   n23_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n23_save_restore_α:
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
n34_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_lit_integer_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_call_α
.Lx54_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
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
.Lrkfnzd56:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd56]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n51_save_restore_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_keyword_snobol4_α
n37_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n51_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_keyword_snobol4_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx58_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_call_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
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
.Lrkfnzd60:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd60]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx59_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n51_save_restore_α
.Lx59_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_var_α
n40_call_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n51_save_restore_α
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
                                                                                        jmp   n43_call_α
.Lx62_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
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
.Lrkfnzd64:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd64]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx63_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n51_save_restore_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_keyword_snobol4_α
n43_call_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n51_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n44_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_keyword_snobol4_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_call_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
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
.Lrkfnzd68:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd68]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx67_240
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   n51_save_restore_α
.Lx67_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_binop_α
n46_call_β:
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   n51_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # call
                        mov              rsi, qword ptr [rsp + 120]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n49_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_α:
                                                                                        jmp   n50_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n50_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n51_save_restore_α:
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
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_call_α
n77_var_β:
                        add              rsp, 16
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd116:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd116]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx115_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_var_α
.Lx115_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_statement_α
n78_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_α:
                                                                                        jmp   n80_save_restore_α
n79_statement_β:
                        add              rsp, 32
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n82_match_begin_α
n81_var_β:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_match_begin_α:
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
.Lx123_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n83_match_sequence_α
n82_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx123_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx123_1
                                                                                        jmp   .Lx123_0
.Lx123_1:
                        mov              r10, qword ptr [1879048192]
.Lx123_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_2
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
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_match_sequence_α:
                                                                                        jmp   n95_lit_integer_α
n83_match_sequence_as:
                                                                                        jmp   n84_match_end_α
n83_match_sequence_β:
                                                                                        jmp   n94_match_assign_cond_β
n83_match_sequence_af:
                                                                                        jmp   n82_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n84_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx127_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx127_9
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
.Lx127_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx127_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx127_1:
                        test             rax, rax
                                                                                        je    .Lx127_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx127_3]
                        lea              rdx, [rip + .Lx127_4]
                                                                                        jmp   rax
.Lx127_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx127_1
.Lx127_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx127_1
.Lx127_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx127_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx127_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n86_match_replace_α
n85_lit_string_β:
                                                                                        jmp   n97_var_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n86_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx130_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx130_1
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "str"
.Lx130_1:
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n87_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_α:
                                                                                        jmp   n88_lit_string_α
n87_statement_β:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n89_call_α
n88_lit_string_β:
                                                                                        jmp   n77_var_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn135:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n77_var_α
                                                                                        jmp   n90_assign_α
n89_call_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n91_statement_α
n90_assign_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_α:
                                                                                        jmp   n77_var_α
n91_statement_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n93_match_any_α
n92_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n82_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n93_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx142_239
                        add              rsp, 16
                                                                                        jmp   n82_match_begin_β
.Lx142_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx142_240
                        add              rsp, 16
                                                                                        jmp   n82_match_begin_β
.Lx142_240:
                        add              r14d, 1
                                                                                        jmp   n94_match_assign_cond_α
n93_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n82_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_assign_cond_α:
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
                                                                                        jmp   n84_match_end_α
n94_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n93_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n96_match_pos_α
n95_lit_integer_β:
                                                                                        jmp   n82_match_begin_β
.Lx145_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n82_match_begin_β
                                                                                        jmp   n92_match_assign_save_α
n96_match_pos_β:
                                                                                        jmp   n82_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n98_match_begin_α
n97_var_β:
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_match_begin_α:
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
.Lx149_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n99_match_sequence_α
n98_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx149_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx149_1
                                                                                        jmp   .Lx149_0
.Lx149_1:
                        mov              r10, qword ptr [1879048192]
.Lx149_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_2
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
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_match_sequence_α:
                                                                                        jmp   n107_lit_integer_α
n99_match_sequence_as:
                                                                                        jmp   n100_match_end_α
n99_match_sequence_β:
                                                                                        jmp   n106_match_assign_cond_β
n99_match_sequence_af:
                                                                                        jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx153_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_9
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
.Lx153_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx153_1:
                        test             rax, rax
                                                                                        je    .Lx153_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx153_3]
                        lea              rdx, [rip + .Lx153_4]
                                                                                        jmp   rax
.Lx153_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx153_1
.Lx153_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx153_1
.Lx153_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx153_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n102_match_replace_α
n101_lit_string_β:
                                                                                        jmp   n109_var_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n102_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx156_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx156_1
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "str"
.Lx156_1:
                        mov              rbp, qword ptr [rbp + 1176]                    # old_rbp
                                                                                        jmp   n103_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_α:
                                                                                        jmp   n109_var_α
n103_statement_β:
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n105_match_len_α
n104_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx161_240
                        add              rsp, 16
                                                                                        jmp   n98_match_begin_β
.Lx161_240:
                        add              r14d, 1
                                                                                        jmp   n106_match_assign_cond_α
n105_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_match_assign_cond_α:
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
                                                                                        jmp   n100_match_end_α
n106_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n105_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n108_match_pos_α
n107_lit_integer_β:
                                                                                        jmp   n98_match_begin_β
.Lx164_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n98_match_begin_β
                                                                                        jmp   n104_match_assign_save_α
n108_match_pos_β:
                                                                                        jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n110_var_α
n109_var_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n111_binop_α
n110_var_β:
                        add              rsp, 16
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n112_assign_α
n111_binop_β:
                        add              rsp, 32
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n113_statement_α
n112_assign_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_α:
                                                                                        jmp   n77_var_α
n113_statement_β:
                                                                                        jmp   n77_var_α
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
n172_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n173_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n173_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx177_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx177_1
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "lwr"
.Lx177_1:
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
n178_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n179_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n179_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx183_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx183_1
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "upr"
.Lx183_1:
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
n184_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n185_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n185_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx189_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx189_1
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "cap"
.Lx189_1:
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
                        .string          "icase"
.Lx195_1:
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
                        lea              rax, [rip + n196_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n196_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n204_match_patref_α
n196_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n196_match_sequence_β:
                                                                                        jmp   n197_match_alternate_β
n196_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx208_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n201_var_α
.Lx208_21:
                        lea              rax, [rip + .Lx208_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n198_var_α
n197_match_alternate_s0:
                        lea              rax, [rip + .Lx208_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s1:
                        lea              rax, [rip + .Lx208_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n197_match_alternate_as
.Lx208_40:
                                                                                        jmp   n203_match_value_β
.Lx208_41:
                                                                                        jmp   n200_match_value_β
n197_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n197_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n197_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx208_19:
                                                                                        jmp   n204_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n199_call_α
n198_var_β:
                                                                                        jmp   n197_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx211_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_6]
                        lea              rdx, [rip + .Lx211_7]
                                                                                        jmp   rax
.Lx211_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx211_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx211_21
.Lx211_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx211_21:
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx211_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_3]
                        lea              rdx, [rip + .Lx211_4]
                                                                                        jmp   rax
.Lx211_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_1:
                        call             rt_faildescr@PLT
.Lx211_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n197_match_alternate_af
                                                                                        jmp   n200_match_value_α
n199_call_β:
                                                                                        jmp   n197_match_alternate_af
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n200_match_value_α:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx212_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx212_4]
                        lea              rdx, [rip + .Lx212_5]
                                                                                        jmp   rax
.Lx212_4:
                                                                                        jmp   n197_match_alternate_s1
.Lx212_5:
                                                                                        jmp   n197_match_alternate_af
.Lx212_0:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx212_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s1
.Lx212_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n200_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax                     # result
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n202_call_α
n201_var_β:
                                                                                        jmp   n197_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx215_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx215_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx215_6]
                        lea              rdx, [rip + .Lx215_7]
                                                                                        jmp   rax
.Lx215_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx215_21
.Lx215_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx215_21:
                        mov              rdi, qword ptr [rip + .Lx215_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx215_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx215_3]
                        lea              rdx, [rip + .Lx215_4]
                                                                                        jmp   rax
.Lx215_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_1:
                        call             rt_faildescr@PLT
.Lx215_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n197_match_alternate_af
                                                                                        jmp   n203_match_value_α
n202_call_β:
                                                                                        jmp   n197_match_alternate_af
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n203_match_value_α:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx216_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx216_4]
                        lea              rdx, [rip + .Lx216_5]
                                                                                        jmp   rax
.Lx216_4:
                                                                                        jmp   n197_match_alternate_s0
.Lx216_5:
                                                                                        jmp   n197_match_alternate_af
.Lx216_0:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx216_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s0
.Lx216_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n203_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n204_match_patref_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx217_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx217_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx217_10
.Lx217_9:
                        xor              eax, eax
.Lx217_10:
                        test             rax, rax
                                                                                        jz    .Lx217_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx217_4]
                        lea              rdx, [rip + .Lx217_5]
                                                                                        jmp   rax
.Lx217_4:
                                                                                        jmp   n197_match_alternate_α
.Lx217_5:
                                                                                        jmp   proc_PAT$0_ω
.Lx217_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx217_2:
                        test             rax, rax
                                                                                        je    .Lx217_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx217_7]
                        lea              rdx, [rip + .Lx217_8]
                                                                                        jmp   rax
.Lx217_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx217_2
.Lx217_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx217_2
.Lx217_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$0_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx217_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_α
.Lx217_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
n204_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx218_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx218_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx219_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx219_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx219_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx219_0:
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
n220_statement_α:
                                                                                        jmp   n221_statement_α
n220_statement_β:
                                                                                        jmp   n221_statement_α
#=======================================================================================================================
#         OUTPUT = 'no match ok'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_α:
                        sub              rsp, 2432
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
                                                                                        jmp   n222_statement_α
n221_statement_β:
                                                                                        jmp   n222_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_α:
                                                                                        jmp   n223_statement_α
n222_statement_β:
                                                                                        jmp   n223_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_α:
                                                                                        jmp   n224_statement_α
n223_statement_β:
                                                                                        jmp   n224_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_α:
                                                                                        jmp   n225_statement_α
n224_statement_β:
                                                                                        jmp   n225_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_α:
                                                                                        jmp   n226_statement_α
n225_statement_β:
                                                                                        jmp   n226_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_α:
                                                                                        jmp   n227_statement_α
n226_statement_β:
                                                                                        jmp   n227_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_α:
                                                                                        jmp   n228_statement_α
n227_statement_β:
                                                                                        jmp   n228_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_α:
                                                                                        jmp   n229_statement_α
n228_statement_β:
                                                                                        jmp   n229_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_α:
                                                                                        jmp   n230_lit_string_α
n229_statement_β:
                                                                                        jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rsp + 1424], 2                      # result
                        mov              dword ptr [rsp + 1428], 4
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n231_lit_integer_α
n230_lit_string_β:
                                                                                        jmp   n234_statement_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n232_call_α
n231_lit_integer_β:
                                                                                        jmp   n234_statement_α
.Lx394_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn396:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]                         # fn
                        lea              rsi, [rsp + 1376]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n234_statement_α
                                                                                        jmp   n233_statement_α
n232_call_β:
                                                                                        jmp   n234_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_α:
                                                                                        jmp   n234_statement_α
n233_statement_β:
                                                                                        jmp   n234_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_α:
                                                                                        jmp   n235_lit_string_α
n234_statement_β:
                                                                                        jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rsp + 1504], 2                      # result
                        mov              dword ptr [rsp + 1508], 11
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 1512], rax
                                                                                        jmp   n236_call_α
n235_lit_string_β:
                                                                                        jmp   n239_lit_string_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx403_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx403_5
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx403_6]
                        lea              rdx, [rip + .Lx403_7]
                                                                                        jmp   rax
.Lx403_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx403_20
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx403_21
.Lx403_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1504]                    # v
                        mov              rdx, qword ptr [rsp + 1512]                    # v
                        call             rt_arg_stage@PLT
.Lx403_21:
                        mov              rdi, qword ptr [rip + .Lx403_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx403_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx403_3]
                        lea              rdx, [rip + .Lx403_4]
                                                                                        jmp   rax
.Lx403_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_1:
                        call             rt_faildescr@PLT
.Lx403_2:
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n239_lit_string_α
                                                                                        jmp   n237_assign_α
n236_call_β:
                                                                                        jmp   n239_lit_string_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:
                        mov              rsi, qword ptr [rsp + 1456]                    # val
                        mov              rdx, qword ptr [rsp + 1464]                    # val
                        mov              rdi, qword ptr [rip + .Lx404_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n238_statement_α
n237_assign_β:
                                                                                        jmp   n239_lit_string_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_α:
                                                                                        jmp   n239_lit_string_α
n238_statement_β:
                                                                                        jmp   n239_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rsp + 1568], 2                      # result
                        mov              dword ptr [rsp + 1572], 11
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 1576], rax
                                                                                        jmp   n240_call_α
n239_lit_string_β:
                                                                                        jmp   n243_lit_string_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx409_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx409_5
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx409_6]
                        lea              rdx, [rip + .Lx409_7]
                                                                                        jmp   rax
.Lx409_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx409_20
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx409_21
.Lx409_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1568]                    # v
                        mov              rdx, qword ptr [rsp + 1576]                    # v
                        call             rt_arg_stage@PLT
.Lx409_21:
                        mov              rdi, qword ptr [rip + .Lx409_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx409_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4]
                                                                                        jmp   rax
.Lx409_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_1:
                        call             rt_faildescr@PLT
.Lx409_2:
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n241_assign_α
n240_call_β:
                                                                                        jmp   n243_lit_string_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rsi, qword ptr [rsp + 1520]                    # val
                        mov              rdx, qword ptr [rsp + 1528]                    # val
                        mov              rdi, qword ptr [rip + .Lx410_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n242_statement_α
n241_assign_β:
                                                                                        jmp   n243_lit_string_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_α:
                                                                                        jmp   n243_lit_string_α
n242_statement_β:
                                                                                        jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rsp + 1632], 2                      # result
                        mov              dword ptr [rsp + 1636], 11
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1640], rax
                                                                                        jmp   n244_call_α
n243_lit_string_β:
                                                                                        jmp   n247_statement_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx415_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx415_5
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx415_6]
                        lea              rdx, [rip + .Lx415_7]
                                                                                        jmp   rax
.Lx415_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx415_2
.Lx415_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx415_2
.Lx415_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx415_20
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx415_21
.Lx415_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1632]                    # v
                        mov              rdx, qword ptr [rsp + 1640]                    # v
                        call             rt_arg_stage@PLT
.Lx415_21:
                        mov              rdi, qword ptr [rip + .Lx415_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx415_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx415_3]
                        lea              rdx, [rip + .Lx415_4]
                                                                                        jmp   rax
.Lx415_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx415_2
.Lx415_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx415_2
.Lx415_1:
                        call             rt_faildescr@PLT
.Lx415_2:
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n247_statement_α
                                                                                        jmp   n245_assign_α
n244_call_β:
                                                                                        jmp   n247_statement_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:
                        mov              rsi, qword ptr [rsp + 1584]                    # val
                        mov              rdx, qword ptr [rsp + 1592]                    # val
                        mov              rdi, qword ptr [rip + .Lx416_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n246_statement_α
n245_assign_β:
                                                                                        jmp   n247_statement_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_α:
                                                                                        jmp   n247_statement_α
n246_statement_β:
                                                                                        jmp   n247_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_α:
                                                                                        jmp   n248_lit_string_α
n247_statement_β:
                                                                                        jmp   n248_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n249_match_begin_α
n248_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n258_statement_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n249_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1704], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1680], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx423_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n250_lit_string_α
n249_match_begin_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx423_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx423_1
                                                                                        jmp   .Lx423_0
.Lx423_1:
                        mov              rax, qword ptr [rbp + 1672]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        mov              r10, qword ptr [1879048192]
.Lx423_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx423_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n258_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rsp + 1792], 2                      # result
                        mov              dword ptr [rsp + 1796], 5
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n251_call_α
n250_lit_string_β:
                                                                                        jmp   n249_match_begin_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx426_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx426_5
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_6]
                        lea              rdx, [rip + .Lx426_7]
                                                                                        jmp   rax
.Lx426_6:
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
                                                                                        jmp   .Lx426_2
.Lx426_7:
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
                                                                                        jmp   .Lx426_2
.Lx426_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_20
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx426_21
.Lx426_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1792]                    # v
                        mov              rdx, qword ptr [rsp + 1800]                    # v
                        call             rt_arg_stage@PLT
.Lx426_21:
                        mov              rdi, qword ptr [rip + .Lx426_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx426_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_1:
                        call             rt_faildescr@PLT
.Lx426_2:
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n249_match_begin_α
                                                                                        jmp   n252_match_value_α
n251_call_β:
                                                                                        jmp   n249_match_begin_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n252_match_value_α:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx427_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx427_4]
                        lea              rdx, [rip + .Lx427_5]
                                                                                        jmp   rax
.Lx427_4:
                                                                                        jmp   n253_match_end_α
.Lx427_5:
                                                                                        jmp   n249_match_begin_β
.Lx427_0:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n249_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx427_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n253_match_end_α
.Lx427_6:
                        add              rsp, 16
                                                                                        jmp   n249_match_begin_β
n252_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n253_match_end_α:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx429_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx429_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx429_1:
                        test             rax, rax
                                                                                        je    .Lx429_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx429_3]
                        lea              rdx, [rip + .Lx429_4]
                                                                                        jmp   rax
.Lx429_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx429_1
.Lx429_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx429_1
.Lx429_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx429_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx429_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n254_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_α:
                                                                                        jmp   n255_lit_string_α
n254_statement_β:
                                                                                        jmp   n258_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 15
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n256_assign_α
n255_lit_string_β:
                                                                                        jmp   n258_statement_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_α:
                        mov              rsi, qword ptr [rsp + 1824]                    # val
                        mov              rdx, qword ptr [rsp + 1832]                    # val
                        mov              rdi, qword ptr [rip + .Lx433_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n257_statement_α
n256_assign_β:
                                                                                        jmp   n258_statement_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_α:
                                                                                        jmp   n258_statement_α
n257_statement_β:
                                                                                        jmp   n258_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_α:
                                                                                        jmp   n259_lit_string_α
n258_statement_β:
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_match_begin_α
n259_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n269_statement_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n260_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1896], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1904], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1912], r14                    # outer_δ
                        mov              qword ptr [rbp + 1920], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1928], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1872], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1864], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1856], 0                      # start_δ
.Lx440_0:
                        mov              r14d, dword ptr [rbp + 1856]
                                                                                        jmp   n261_lit_string_α
n260_match_begin_β:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, r15d
                                                                                        jg    .Lx440_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx440_1
                                                                                        jmp   .Lx440_0
.Lx440_1:
                        mov              rax, qword ptr [rbp + 1864]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
                        mov              r10, qword ptr [1879048192]
.Lx440_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx440_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n269_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n262_call_α
n261_lit_string_β:
                                                                                        jmp   n260_match_begin_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx443_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx443_5
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx443_6]
                        lea              rdx, [rip + .Lx443_7]
                                                                                        jmp   rax
.Lx443_6:
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
                                                                                        jmp   .Lx443_2
.Lx443_7:
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
                                                                                        jmp   .Lx443_2
.Lx443_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx443_20
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx443_21
.Lx443_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1984]                    # v
                        mov              rdx, qword ptr [rsp + 1992]                    # v
                        call             rt_arg_stage@PLT
.Lx443_21:
                        mov              rdi, qword ptr [rip + .Lx443_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx443_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx443_3]
                        lea              rdx, [rip + .Lx443_4]
                                                                                        jmp   rax
.Lx443_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx443_2
.Lx443_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx443_2
.Lx443_1:
                        call             rt_faildescr@PLT
.Lx443_2:
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n260_match_begin_α
                                                                                        jmp   n263_match_value_α
n262_call_β:
                                                                                        jmp   n260_match_begin_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n263_match_value_α:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx444_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx444_4]
                        lea              rdx, [rip + .Lx444_5]
                                                                                        jmp   rax
.Lx444_4:
                                                                                        jmp   n264_match_end_α
.Lx444_5:
                                                                                        jmp   n260_match_begin_β
.Lx444_0:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n260_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx444_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n264_match_end_α
.Lx444_6:
                        add              rsp, 16
                                                                                        jmp   n260_match_begin_β
n263_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n264_match_end_α:
                        mov              rax, qword ptr [rbp + 1864]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx446_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx446_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx446_1:
                        test             rax, rax
                                                                                        je    .Lx446_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx446_3]
                        lea              rdx, [rip + .Lx446_4]
                                                                                        jmp   rax
.Lx446_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx446_1
.Lx446_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx446_1
.Lx446_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx446_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx446_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n265_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_α:
                                                                                        jmp   n266_lit_string_α
n265_statement_β:
                                                                                        jmp   n269_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rsp + 2016], 2                      # result
                        mov              dword ptr [rsp + 2020], 15
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n267_assign_α
n266_lit_string_β:
                                                                                        jmp   n269_statement_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rsi, qword ptr [rsp + 2016]                    # val
                        mov              rdx, qword ptr [rsp + 2024]                    # val
                        mov              rdi, qword ptr [rip + .Lx450_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n268_statement_α
n267_assign_β:
                                                                                        jmp   n269_statement_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_α:
                                                                                        jmp   n269_statement_α
n268_statement_β:
                                                                                        jmp   n269_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_α:
                                                                                        jmp   n270_lit_string_α
n269_statement_β:
                                                                                        jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n271_match_begin_α
n270_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n280_statement_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n271_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2088], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2096], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2104], r14                    # outer_δ
                        mov              qword ptr [rbp + 2112], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2120], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2064], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2056], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2048], 0                      # start_δ
.Lx457_0:
                        mov              r14d, dword ptr [rbp + 2048]
                                                                                        jmp   n272_lit_string_α
n271_match_begin_β:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, r15d
                                                                                        jg    .Lx457_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx457_1
                                                                                        jmp   .Lx457_0
.Lx457_1:
                        mov              rax, qword ptr [rbp + 2056]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
                        mov              r10, qword ptr [1879048192]
.Lx457_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx457_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n280_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rsp + 2176], 2                      # result
                        mov              dword ptr [rsp + 2180], 5
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n273_call_α
n272_lit_string_β:
                                                                                        jmp   n271_match_begin_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx460_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx460_5
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx460_6]
                        lea              rdx, [rip + .Lx460_7]
                                                                                        jmp   rax
.Lx460_6:
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
                                                                                        jmp   .Lx460_2
.Lx460_7:
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
                                                                                        jmp   .Lx460_2
.Lx460_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx460_20
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx460_21
.Lx460_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2176]                    # v
                        mov              rdx, qword ptr [rsp + 2184]                    # v
                        call             rt_arg_stage@PLT
.Lx460_21:
                        mov              rdi, qword ptr [rip + .Lx460_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx460_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx460_3]
                        lea              rdx, [rip + .Lx460_4]
                                                                                        jmp   rax
.Lx460_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx460_2
.Lx460_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx460_2
.Lx460_1:
                        call             rt_faildescr@PLT
.Lx460_2:
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n271_match_begin_α
                                                                                        jmp   n274_match_value_α
n273_call_β:
                                                                                        jmp   n271_match_begin_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n274_match_value_α:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx461_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx461_4]
                        lea              rdx, [rip + .Lx461_5]
                                                                                        jmp   rax
.Lx461_4:
                                                                                        jmp   n275_match_end_α
.Lx461_5:
                                                                                        jmp   n271_match_begin_β
.Lx461_0:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n271_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx461_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n275_match_end_α
.Lx461_6:
                        add              rsp, 16
                                                                                        jmp   n271_match_begin_β
n274_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n275_match_end_α:
                        mov              rax, qword ptr [rbp + 2056]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx463_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx463_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx463_1:
                        test             rax, rax
                                                                                        je    .Lx463_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx463_3]
                        lea              rdx, [rip + .Lx463_4]
                                                                                        jmp   rax
.Lx463_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx463_1
.Lx463_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx463_1
.Lx463_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx463_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx463_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n276_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_α:
                                                                                        jmp   n277_lit_string_α
n276_statement_β:
                                                                                        jmp   n280_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rsp + 2208], 2                      # result
                        mov              dword ptr [rsp + 2212], 15
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n278_assign_α
n277_lit_string_β:
                                                                                        jmp   n280_statement_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:
                        mov              rsi, qword ptr [rsp + 2208]                    # val
                        mov              rdx, qword ptr [rsp + 2216]                    # val
                        mov              rdi, qword ptr [rip + .Lx467_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n279_statement_α
n278_assign_β:
                                                                                        jmp   n280_statement_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_α:
                                                                                        jmp   n280_statement_α
n279_statement_β:
                                                                                        jmp   n280_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_α:
                                                                                        jmp   n281_lit_string_α
n280_statement_β:
                                                                                        jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n282_match_begin_α
n281_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   n370_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n282_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2280], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2288], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2296], r14                    # outer_δ
                        mov              qword ptr [rbp + 2304], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2312], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2256], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2248], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2240], 0                      # start_δ
.Lx474_0:
                        mov              r14d, dword ptr [rbp + 2240]
                                                                                        jmp   n283_lit_string_α
n282_match_begin_β:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, r15d
                                                                                        jg    .Lx474_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx474_1
                                                                                        jmp   .Lx474_0
.Lx474_1:
                        mov              rax, qword ptr [rbp + 2248]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
                        mov              r10, qword ptr [1879048192]
.Lx474_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx474_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2248]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rsp + 2368], 2                      # result
                        mov              dword ptr [rsp + 2372], 5
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 2376], rax
                                                                                        jmp   n284_call_α
n283_lit_string_β:
                                                                                        jmp   n282_match_begin_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx477_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx477_5
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx477_6]
                        lea              rdx, [rip + .Lx477_7]
                                                                                        jmp   rax
.Lx477_6:
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
                                                                                        jmp   .Lx477_2
.Lx477_7:
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
                                                                                        jmp   .Lx477_2
.Lx477_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx477_20
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx477_21
.Lx477_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2368]                    # v
                        mov              rdx, qword ptr [rsp + 2376]                    # v
                        call             rt_arg_stage@PLT
.Lx477_21:
                        mov              rdi, qword ptr [rip + .Lx477_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx477_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx477_3]
                        lea              rdx, [rip + .Lx477_4]
                                                                                        jmp   rax
.Lx477_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx477_2
.Lx477_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx477_2
.Lx477_1:
                        call             rt_faildescr@PLT
.Lx477_2:
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104
                                                                                        je    n282_match_begin_α
                                                                                        jmp   n285_match_value_α
n284_call_β:
                                                                                        jmp   n282_match_begin_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n285_match_value_α:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx478_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx478_4]
                        lea              rdx, [rip + .Lx478_5]
                                                                                        jmp   rax
.Lx478_4:
                                                                                        jmp   n286_match_end_α
.Lx478_5:
                                                                                        jmp   n282_match_begin_β
.Lx478_0:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n282_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx478_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n286_match_end_α
.Lx478_6:
                        add              rsp, 16
                                                                                        jmp   n282_match_begin_β
n285_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n286_match_end_α:
                        mov              rax, qword ptr [rbp + 2248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx480_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx480_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx480_1:
                        test             rax, rax
                                                                                        je    .Lx480_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4]
                                                                                        jmp   rax
.Lx480_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx480_1
.Lx480_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx480_1
.Lx480_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx480_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx480_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n287_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_α:
                                                                                        jmp   n288_lit_string_α
n287_statement_β:
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rsp + 2416], 2                      # result
                        mov              dword ptr [rsp + 2420], 32
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 2424], rax
                                                                                        jmp   n289_assign_α
n288_lit_string_β:
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   main_γ
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "FAIL: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rsi, qword ptr [rsp + 2416]                    # val
                        mov              rdx, qword ptr [rsp + 2424]                    # val
                        mov              rdi, qword ptr [rip + .Lx484_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n290_statement_α
n289_assign_β:
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   main_γ
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_α:
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   main_γ
n290_statement_β:
                        mov              rbp, qword ptr [rbp + 2280]
                        add              rsp, 2432
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:
                                                                                        jmp   n292_var_α
n291_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n293_keyword_snobol4_α
n292_var_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n293_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx489_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n294_keyword_snobol4_α
n293_keyword_snobol4_β:
                                                                                        jmp   n298_save_restore_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n294_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx490_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n295_call_α
n294_keyword_snobol4_β:
                                                                                        jmp   n298_save_restore_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:
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
.Lrkfn492:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n298_save_restore_α
                                                                                        jmp   n296_assign_α
n295_call_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n297_statement_α
n296_assign_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_α:
                                                                                        jmp   n298_save_restore_α
n297_statement_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n298_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:
                                                                                        jmp   n222_statement_α
n299_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:
                                                                                        jmp   n301_var_α
n300_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n302_keyword_snobol4_α
n301_var_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n302_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx501_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n303_keyword_snobol4_α
n302_keyword_snobol4_β:
                                                                                        jmp   n298_save_restore_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n303_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx502_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n304_call_α
n303_keyword_snobol4_β:
                                                                                        jmp   n298_save_restore_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:
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
.Lrkfn504:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]                         # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n298_save_restore_α
                                                                                        jmp   n305_assign_α
n304_call_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n306_statement_α
n305_assign_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_α:
                                                                                        jmp   n298_save_restore_α
n306_statement_β:
                                                                                        jmp   n298_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:
                                                                                        jmp   n224_statement_α
n307_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:
                                                                                        jmp   n309_var_α
n308_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 480], rax                     # result
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n310_lit_integer_α
n309_var_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n311_lit_integer_α
n310_lit_integer_β:
                                                                                        jmp   n325_save_restore_α
.Lx511_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n312_call_α
n311_lit_integer_β:
                                                                                        jmp   n325_save_restore_α
.Lx512_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
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
.Lrkfn514:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]                         # fn
                        lea              rsi, [rsp + 416]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n325_save_restore_α
                                                                                        jmp   n313_keyword_snobol4_α
n312_call_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n313_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx515_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n314_keyword_snobol4_α
n313_keyword_snobol4_β:
                                                                                        jmp   n325_save_restore_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n314_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx516_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n315_call_α
n314_keyword_snobol4_β:
                                                                                        jmp   n325_save_restore_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:
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
.Lrkfn518:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n325_save_restore_α
                                                                                        jmp   n316_var_α
n315_call_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 704], rax                     # result
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n317_lit_integer_α
n316_var_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n318_call_α
n317_lit_integer_β:
                                                                                        jmp   n325_save_restore_α
.Lx520_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn522:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n325_save_restore_α
                                                                                        jmp   n319_keyword_snobol4_α
n318_call_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n319_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx523_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n320_keyword_snobol4_α
n319_keyword_snobol4_β:
                                                                                        jmp   n325_save_restore_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n320_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx524_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n321_call_α
n320_keyword_snobol4_β:
                                                                                        jmp   n325_save_restore_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:
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
.Lrkfn526:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]                         # fn
                        lea              rsi, [rsp + 576]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n325_save_restore_α
                                                                                        jmp   n322_binop_α
n321_call_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:
                        mov              rdi, qword ptr [rsp + 320]                     # a
                        mov              rsi, qword ptr [rsp + 328]                     # a
                        mov              rdx, qword ptr [rsp + 560]                     # b
                        mov              rcx, qword ptr [rsp + 568]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n323_assign_α
n322_binop_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n324_statement_α
n323_assign_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_α:
                                                                                        jmp   n298_save_restore_α
n324_statement_β:
                                                                                        jmp   n325_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n325_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:
                                                                                        jmp   n226_statement_α
n326_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:
                                                                                        jmp   n328_var_α
n327_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n329_call_α
n328_var_β:
                                                                                        jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn537:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn537]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n331_var_α
                                                                                        jmp   n330_statement_α
n329_call_β:
                                                                                        jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_α:
                                                                                        jmp   n298_save_restore_α
n330_statement_β:
                                                                                        jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n332_match_begin_α
n331_var_β:
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_match_begin_α:
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
.Lx542_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n333_match_sequence_α
n332_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx542_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx542_1
                                                                                        jmp   .Lx542_0
.Lx542_1:
                        mov              r10, qword ptr [1879048192]
.Lx542_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx542_2
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
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_match_sequence_α:
                                                                                        jmp   n345_lit_integer_α
n333_match_sequence_as:
                                                                                        jmp   n334_match_end_α
n333_match_sequence_β:
                                                                                        jmp   n344_match_assign_cond_β
n333_match_sequence_af:
                                                                                        jmp   n332_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n334_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx546_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx546_9
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
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n335_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n336_match_replace_α
n335_lit_string_β:
                                                                                        jmp   n347_var_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n336_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx549_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx549_1
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "str"
.Lx549_1:
                                                                                        jmp   n337_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_α:
                                                                                        jmp   n338_lit_string_α
n337_statement_β:
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n339_call_α
n338_lit_string_β:
                                                                                        jmp   n328_var_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn554:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n328_var_α
                                                                                        jmp   n340_assign_α
n339_call_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n341_statement_α
n340_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_α:
                                                                                        jmp   n328_var_α
n341_statement_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n343_match_any_α
n342_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n332_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n343_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx561_239
                        add              rsp, 16
                                                                                        jmp   n332_match_begin_β
.Lx561_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx561_240
                        add              rsp, 16
                                                                                        jmp   n332_match_begin_β
.Lx561_240:
                        add              r14d, 1
                                                                                        jmp   n344_match_assign_cond_α
n343_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n332_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_match_assign_cond_α:
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
                                                                                        jmp   n334_match_end_α
n344_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n343_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n346_match_pos_α
n345_lit_integer_β:
                                                                                        jmp   n332_match_begin_β
.Lx564_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n346_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n332_match_begin_β
                                                                                        jmp   n342_match_assign_save_α
n346_match_pos_β:
                                                                                        jmp   n332_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n348_match_begin_α
n347_var_β:
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_match_begin_α:
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
.Lx568_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n349_match_sequence_α
n348_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx568_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx568_1
                                                                                        jmp   .Lx568_0
.Lx568_1:
                        mov              r10, qword ptr [1879048192]
.Lx568_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx568_2
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
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_match_sequence_α:
                                                                                        jmp   n357_lit_integer_α
n349_match_sequence_as:
                                                                                        jmp   n350_match_end_α
n349_match_sequence_β:
                                                                                        jmp   n356_match_assign_cond_β
n349_match_sequence_af:
                                                                                        jmp   n348_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n350_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx572_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx572_9
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
.Lx572_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx572_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx572_1:
                        test             rax, rax
                                                                                        je    .Lx572_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx572_3]
                        lea              rdx, [rip + .Lx572_4]
                                                                                        jmp   rax
.Lx572_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx572_1
.Lx572_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx572_1
.Lx572_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx572_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx572_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n351_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n352_match_replace_α
n351_lit_string_β:
                                                                                        jmp   n359_var_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n352_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx575_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx575_1
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "str"
.Lx575_1:
                                                                                        jmp   n353_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_α:
                                                                                        jmp   n359_var_α
n353_statement_β:
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n355_match_len_α
n354_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n348_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n355_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx580_240
                        add              rsp, 16
                                                                                        jmp   n348_match_begin_β
.Lx580_240:
                        add              r14d, 1
                                                                                        jmp   n356_match_assign_cond_α
n355_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n348_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_match_assign_cond_α:
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
                                                                                        jmp   n350_match_end_α
n356_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n355_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n358_match_pos_α
n357_lit_integer_β:
                                                                                        jmp   n348_match_begin_β
.Lx583_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n358_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n348_match_begin_β
                                                                                        jmp   n354_match_assign_save_α
n358_match_pos_β:
                                                                                        jmp   n348_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n360_var_α
n359_var_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n361_binop_α
n360_var_β:
                        add              rsp, 16
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n362_assign_α
n361_binop_β:
                        add              rsp, 32
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n363_statement_α
n362_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_α:
                                                                                        jmp   n328_var_α
n363_statement_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n364_goto_α:
                                                                                        jmp   n347_var_α
n364_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n365_goto_α:
                                                                                        jmp   n228_statement_α
n365_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_goto_α:
                                                                                        jmp   n258_statement_α
n366_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n367_goto_α:
                                                                                        jmp   n269_statement_α
n367_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n368_goto_α:
                                                                                        jmp   n280_statement_α
n368_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n369_goto_α:
                                                                                        jmp   n288_lit_string_α
n369_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rsp + 2432], 2                      # result
                        mov              dword ptr [rsp + 2436], 11
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n371_assign_α
n370_lit_string_β:
                                                                                        jmp   main_γ
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:
                        mov              rsi, qword ptr [rsp + 2432]                    # val
                        mov              rdx, qword ptr [rsp + 2440]                    # val
                        mov              rdi, qword ptr [rip + .Lx598_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n372_statement_α
n371_assign_β:
                                                                                        jmp   main_γ
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_α:
                                                                                        jmp   main_γ
n372_statement_β:
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
