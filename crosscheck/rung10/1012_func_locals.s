                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__lfunc_α
proc_LBL__lfunc_α:
proc_LBL__lfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n1_statement_α
n0_goto_β:
                                                                                        jmp   proc_LBL__lfunc_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_α:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         IDENT(a, 'p')              :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
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
.Lrkfnzd47:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd47]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx46_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n38_lit_string_α
.Lx46_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_statement_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_α:
                        add              rsp, 48
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# e001    IDENT(b, 'q')              :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # b
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_call_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
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
.Lrkfnzd53:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd53]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx52_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_string_α
.Lx52_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_statement_α
n8_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                                                                                        jmp   n10_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_α:
                        add              rsp, 48
                                                                                        jmp   n11_var_α
#=======================================================================================================================
#         DIFFER(d)                  :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_call_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd60:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd60]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx59_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_statement_α
.Lx59_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_statement_α
n12_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_α:
                        add              rsp, 32
                                                                                        jmp   n14_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/003: local d should be null' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "FAIL 1012/003: local d should be null"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx64_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n16_statement_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_α:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_α:
                                                                                        jmp   n18_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n20_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_α:
                        add              rsp, 16
                                                                                        jmp   n21_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "bb"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # b
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n23_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_α:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "dd"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # d
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n26_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_α:
                        add              rsp, 16
                                                                                        jmp   n27_var_α
#=======================================================================================================================
#         lfunc = a b d                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # b
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
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
                        mov              qword ptr [1879052288], rax                    # lfunc
                        mov              qword ptr [1879052296], rdx
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
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/002: arg b should be q'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "FAIL 1012/002: arg b should be q"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx92_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n37_statement_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_α:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__lfunc_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/001: arg a should be p'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "FAIL 1012/001: arg a should be p"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx96_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n40_statement_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_α:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_β:
                                                                                        jmp   proc_LBL__lfunc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__checklocal_α
proc_LBL__checklocal_α:
proc_LBL__checklocal_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n100_statement_α
n99_goto_β:
                                                                                        jmp   proc_LBL__checklocal_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_α:
                        add              rsp, 16
                                                                                        jmp   n101_var_α
#=======================================================================================================================
#         DIFFER(x)                  :f(e007_inner)
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # x
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_call_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd117:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd117]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx116_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_statement_α
.Lx116_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_statement_α
n102_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_α:
                        add              rsp, 32
                                                                                        jmp   n104_lit_string_α
#=======================================================================================================================
#         checklocal = 'local-not-null'                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_assign_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "local-not-null"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # checklocal
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n106_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_α:
                                                                                        jmp   n111_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_α:
                                                                                        jmp   n108_lit_string_α
#=======================================================================================================================
#         checklocal =                                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # checklocal
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n110_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_α:
                        add              rsp, 16
                                                                                        jmp   n111_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n111_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_β:
                                                                                        jmp   proc_LBL__checklocal_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lfunc_α
proc_lfunc_α:
proc_lfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n132_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n133_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n133_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx137_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx137_1
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "lfunc"
.Lx137_1:
                                                                                        jmp   proc_lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lfunc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lfunc_β:
                                                                                        jmp   proc_lfunc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lfunc_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lfunc_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_checklocal_α
proc_checklocal_α:
proc_checklocal_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n138_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n139_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n139_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx143_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx143_1
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "checklocal"
.Lx143_1:
                                                                                        jmp   proc_checklocal_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_checklocal_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_checklocal_β:
                                                                                        jmp   proc_checklocal_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_checklocal_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_checklocal_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__lfunc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__lfunc_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__checklocal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__checklocal_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "lfunc"
.Lstartup_pp2_0:        .string          "a"
.Lstartup_pp2_1:        .string          "b"
.Lstartup_pp2_2:        .string          "c"
.Lstartup_pp2_3:        .string          "d"
.Lstartup_pp2_4:        .string          "e"
.Lstartup_pp2_5:        .string          "f"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            .Lstartup_pp2_1
                        .quad            .Lstartup_pp2_2
                        .quad            .Lstartup_pp2_3
                        .quad            .Lstartup_pp2_4
                        .quad            .Lstartup_pp2_5
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 6
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_lfunc_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "checklocal"
.Lstartup_pp3_0:        .string          "x"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_checklocal_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "lfunc"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
.Lgvan3:                .string          "c"
.Lgvan4:                .string          "d"
.Lgvan5:                .string          "e"
.Lgvan6:                .string          "f"
.Lgvan7:                .string          "checklocal"
.Lgvan8:                .string          "x"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
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
n144_statement_α:
                                                                                        jmp   n145_statement_α
#=======================================================================================================================
#         DEFINE('lfunc(a,b,c)d,e,f')               :(lfunc_end)
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_α:
                                                                                        jmp   n146_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_α:
                                                                                        jmp   n147_lit_string_α
#=======================================================================================================================
#         a = 'global_a'
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n148_assign_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "global_a"
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n149_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_α:
                        add              rsp, 16
                                                                                        jmp   n150_lit_string_α
#=======================================================================================================================
#         d = 'global_d'
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_assign_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "global_d"
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # d
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n152_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_α:
                        add              rsp, 16
                                                                                        jmp   n153_statement_α
#=======================================================================================================================
#         d = 'global_d'
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_α:
                                                                                        jmp   n154_lit_string_α
#=======================================================================================================================
#         DIFFER(lfunc('p', 'q', 'r'), 'aabbdd')                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n155_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n156_lit_string_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_call_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 48]                      # lit_string
                        mov              rdx, qword ptr [rsp + 56]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # v
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 112
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052368]                    # e
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052384]                    # f
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052288]                    # lfunc
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rip + .Lx276_0]                # name
                        mov              esi, 6                                         # np
                        mov              edx, 3                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx276_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052320], rax                    # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052328], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [r10 + 40]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_6]
                        lea              rdx, [rip + .Lx276_7]
                                                                                        jmp   rax
.Lx276_6:
                        mov              rdi, qword ptr [1879052288]                    # lfunc
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052384], rax                    # f
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052368], rax                    # e
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax                    # d
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_7:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052288], rax                    # lfunc
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052384], rax                    # f
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052368], rax                    # e
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax                    # d
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_5:
                        add              rsp, 112
.Lx276_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx276_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n164_statement_α
.Lx276_240:
                                                                                        jmp   n158_lit_string_α
n157_call_β:
                                                                                        jmp   n164_statement_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "lfunc"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n159_call_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "aabbdd"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
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
.Lrkfnzd279:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd279]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx278_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n164_statement_α
.Lx278_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_statement_α
n159_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n164_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_α:
                        add              rsp, 96
                                                                                        jmp   n161_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/004: lfunc return value'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n162_assign_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "FAIL 1012/004: lfunc return value"
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx283_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n163_statement_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_α:
                                                                                        jmp   n165_var_α
#=======================================================================================================================
#         IDENT(a, 'global_a')                           :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_call_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "global_a"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:
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
.Lrkfnzd291:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd291]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx290_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n190_lit_string_α
.Lx290_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_statement_α
n167_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_α:
                                                                                        jmp   n169_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_α:
                        add              rsp, 48
                                                                                        jmp   n170_var_α
#=======================================================================================================================
#         IDENT(d, 'global_d')                           :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n172_call_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "global_d"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:
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
.Lrkfnzd299:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd299]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx298_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n187_lit_string_α
.Lx298_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n173_statement_α
n172_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_α:
                                                                                        jmp   n174_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_α:
                        add              rsp, 48
                                                                                        jmp   n175_statement_α
#=======================================================================================================================
#         DEFINE('checklocal()x')                        :(cl_end)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_α:
                                                                                        jmp   n176_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_α:
                                                                                        jmp   n177_call_α
#=======================================================================================================================
#         DIFFER(checklocal())       :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # checklocal
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx309_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx309_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx309_6]
                        lea              rdx, [rip + .Lx309_7]
                                                                                        jmp   rax
.Lx309_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax                    # checklocal
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_5:
                        add              rsp, 32
.Lx309_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx309_240
                        add              rsp, 16
                                                                                        jmp   n183_statement_α
.Lx309_240:
                                                                                        jmp   n178_call_α
n177_call_β:
                                                                                        jmp   n183_statement_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "checklocal"
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd311:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd311]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx310_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n183_statement_α
.Lx310_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_statement_α
n178_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n183_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_α:
                        add              rsp, 32
                                                                                        jmp   n180_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/007: local null on fresh call' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_assign_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "FAIL 1012/007: local null on fresh call"
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx315_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n182_statement_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_α:
                                                                                        jmp   n184_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1012_func_locals (7/7)'
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n185_assign_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "PASS 1012_func_locals (7/7)"
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx321_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n186_statement_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/006: global d not clobbered' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n188_assign_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "FAIL 1012/006: global d not clobbered"
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx325_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n189_statement_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/005: global a not clobbered' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n191_assign_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "FAIL 1012/005: global a not clobbered"
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx329_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n192_statement_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n193_goto_α:
                                                                                        jmp   n194_statement_α
n193_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_α:
                                                                                        jmp   n195_var_α
#=======================================================================================================================
#         IDENT(a, 'p')              :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_call_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
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
.Lrkfnzd338:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd338]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx337_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n231_lit_string_α
.Lx337_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n198_statement_α
n197_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n231_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_α:
                        add              rsp, 48
                                                                                        jmp   n199_var_α
#=======================================================================================================================
# e001    IDENT(b, 'q')              :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # b
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n201_call_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:
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
.Lrkfnzd344:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd344]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx343_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n228_lit_string_α
.Lx343_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n202_statement_α
n201_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_α:
                                                                                        jmp   n203_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_α:
                        add              rsp, 48
                                                                                        jmp   n204_var_α
#=======================================================================================================================
#         DIFFER(d)                  :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n205_call_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd351:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd351]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx350_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n210_statement_α
.Lx350_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n206_statement_α
n205_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n210_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_α:
                        add              rsp, 32
                                                                                        jmp   n207_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/003: local d should be null' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n208_assign_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "FAIL 1012/003: local d should be null"
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx355_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n209_statement_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_α:
                                                                                        jmp   n211_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_assign_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # a
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n213_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_α:
                        add              rsp, 16
                                                                                        jmp   n214_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n215_assign_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "bb"
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # b
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n216_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_α:
                        add              rsp, 16
                                                                                        jmp   n217_lit_string_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_assign_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "dd"
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # d
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n219_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_α:
                        add              rsp, 16
                                                                                        jmp   n220_var_α
#=======================================================================================================================
#         lfunc = a b d                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # b
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n222_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # d
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n224_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n225_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # lfunc
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n226_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_α:
                                                                                        jmp   n227_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n227_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/002: arg b should be q'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n229_assign_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "FAIL 1012/002: arg b should be q"
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx383_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n230_statement_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/001: arg a should be p'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n232_assign_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "FAIL 1012/001: arg a should be p"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx387_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n233_statement_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:
                                                                                        jmp   n199_var_α
n234_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:
                                                                                        jmp   n203_statement_α
n235_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:
                                                                                        jmp   n210_statement_α
n236_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:
                                                                                        jmp   n146_statement_α
n237_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:
                                                                                        jmp   n164_statement_α
n238_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:
                                                                                        jmp   n169_statement_α
n239_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:
                                                                                        jmp   n174_statement_α
n240_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:
                                                                                        jmp   n242_statement_α
n241_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_α:
                                                                                        jmp   n243_var_α
#=======================================================================================================================
#         DIFFER(x)                  :f(e007_inner)
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # x
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n244_call_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd402:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd402]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx401_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n249_statement_α
.Lx401_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_statement_α
n244_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n249_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_α:
                        add              rsp, 32
                                                                                        jmp   n246_lit_string_α
#=======================================================================================================================
#         checklocal = 'local-not-null'                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n247_assign_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "local-not-null"
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # checklocal
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n248_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_α:
                        add              rsp, 16
                                                                                        jmp   n227_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_α:
                                                                                        jmp   n250_lit_string_α
#=======================================================================================================================
#         checklocal =                                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_assign_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # checklocal
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n252_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_α:
                        add              rsp, 16
                                                                                        jmp   n227_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n253_goto_α:
                                                                                        jmp   n249_statement_α
n253_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_goto_α:
                                                                                        jmp   n176_statement_α
n254_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:
                                                                                        jmp   n183_statement_α
n255_goto_β:
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
