                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_α:
proc_LBL__lfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_statement_end_α
n0_statement_begin_β:
                                                                                        jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:
                                                                                        jmp   n2_statement_begin_α
#=======================================================================================================================
#         IDENT(a, 'p')              :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:
                                                                                        jmp   n3_var_α
n2_statement_begin_β:
                                                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
n4_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n2_statement_begin_β
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
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
.Lrkfnzd62:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx61_240
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_β
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_statement_end_α
n5_call_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n7_statement_begin_α
#=======================================================================================================================
# e001    IDENT(b, 'q')              :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:
                                                                                        jmp   n8_var_α
n7_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_call_α
n9_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_β
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
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
.Lrkfnzd70:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd70]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n9_lit_string_β
.Lx69_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_statement_end_α
n10_call_β:
                        add              rsp, 16
                                                                                        jmp   n9_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_statement_end_α
n12_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
#         DIFFER(d)                  :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_var_α
n14_statement_begin_β:
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_call_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd81:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd81]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx80_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_β
.Lx80_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_statement_end_α
n16_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/003: local d should be null' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_lit_string_α
n18_statement_begin_β:
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "FAIL 1012/003: local d should be null"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n21_statement_end_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:
                                                                                        jmp   n23_statement_end_α
n22_statement_begin_β:
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_string_α
n24_statement_begin_β:
                                                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n28_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:
                                                                                        jmp   n29_lit_string_α
n28_statement_begin_β:
                                                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_assign_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "bb"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # b
                        mov              qword ptr [r9 + 40], rdx
                                                                                        jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
n32_statement_begin_β:
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "dd"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # d
                        mov              qword ptr [r9 + 72], rdx
                                                                                        jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
#=======================================================================================================================
#         lfunc = a b d                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_var_α
n36_statement_begin_β:
                                                                                        jmp   n44_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_binop_α
n38_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n40_var_α
n39_binop_β:
                        add              rsp, 16
                                                                                        jmp   n38_var_β
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_binop_α
n40_var_β:
                        add              rsp, 16
                                                                                        jmp   n39_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n42_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # lfunc
                        mov              qword ptr [r9 + 8], rdx
                                                                                        jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                                                                                        jmp   n44_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n44_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx123_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx123_0:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/002: arg b should be q'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_lit_string_α
n45_statement_begin_β:
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "FAIL 1012/002: arg b should be q"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n48_statement_end_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__lfunc_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/001: arg a should be p'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:
                                                                                        jmp   n50_lit_string_α
n49_statement_begin_β:
                                                                                        jmp   proc_LBL__lfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "FAIL 1012/001: arg a should be p"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n52_statement_end_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:
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
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lfunc_ω:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_α:
proc_LBL__checklocal_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:
                                                                                        jmp   n137_statement_end_α
n136_statement_begin_β:
                                                                                        jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:
                                                                                        jmp   n138_statement_begin_α
#=======================================================================================================================
#         DIFFER(x)                  :f(e007_inner)
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:
                                                                                        jmp   n139_var_α
n138_statement_begin_β:
                                                                                        jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]                      # x
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_call_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd161:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd161]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n138_statement_begin_β
.Lx160_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_statement_end_α
n140_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n142_statement_begin_α
#=======================================================================================================================
#         checklocal = 'local-not-null'                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:
                                                                                        jmp   n143_lit_string_α
n142_statement_begin_β:
                                                                                        jmp   n152_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n144_assign_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "local-not-null"
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # checklocal
                        mov              qword ptr [r9 + 120], rdx
                                                                                        jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:
                                                                                        jmp   n152_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:
                                                                                        jmp   n147_statement_end_α
n146_statement_begin_β:
                                                                                        jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:
                                                                                        jmp   n148_statement_begin_α
#=======================================================================================================================
#         checklocal =                                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:
                                                                                        jmp   n149_lit_string_α
n148_statement_begin_β:
                                                                                        jmp   n152_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_assign_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # checklocal
                        mov              qword ptr [r9 + 120], rdx
                                                                                        jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n152_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n152_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx181_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx181_0:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
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
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__checklocal_ω:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lfunc_α
proc_lfunc_α:
proc_lfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n182_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
                        mov              rcx, rbp
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_wire_adopt@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n183_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n183_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_goto_transfer@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx187_1
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "lfunc"
.Lx187_1:
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
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lfunc_ω:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_checklocal_α
proc_checklocal_α:
proc_checklocal_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n188_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
                        mov              rcx, rbp
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_wire_adopt@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n189_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n189_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_goto_transfer@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx193_1
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "checklocal"
.Lx193_1:
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
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_checklocal_ω:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:
                                                                                        jmp   n195_statement_end_α
n194_statement_begin_β:
                                                                                        jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:
                                                                                        jmp   n196_statement_begin_α
#=======================================================================================================================
#         DEFINE('lfunc(a,b,c)d,e,f')               :(lfunc_end)
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α:
                                                                                        jmp   n197_statement_end_α
n196_statement_begin_β:
                                                                                        jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:
                                                                                        jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α:
                                                                                        jmp   n199_statement_end_α
n198_statement_begin_β:
                                                                                        jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:
                                                                                        jmp   n200_statement_begin_α
#=======================================================================================================================
#         a = 'global_a'
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:
                                                                                        jmp   n201_lit_string_α
n200_statement_begin_β:
                                                                                        jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n202_assign_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "global_a"
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n203_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n204_statement_begin_α
#=======================================================================================================================
#         d = 'global_d'
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α:
                                                                                        jmp   n205_lit_string_α
n204_statement_begin_β:
                                                                                        jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n206_assign_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "global_d"
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # d
                        mov              qword ptr [r9 + 72], rdx
                                                                                        jmp   n207_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n208_statement_begin_α
#=======================================================================================================================
#         d = 'global_d'
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α:
                                                                                        jmp   n209_statement_end_α
n208_statement_begin_β:
                                                                                        jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:
                                                                                        jmp   n210_statement_begin_α
#=======================================================================================================================
#         DIFFER(lfunc('p', 'q', 'r'), 'aabbdd')                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:
                                                                                        jmp   n211_lit_string_α
n210_statement_begin_β:
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n213_lit_string_α
n212_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n210_statement_begin_β
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n214_call_α
n213_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n212_lit_string_β
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:
                        sub              rsp, 16
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]                      # lit_string
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_arg_stage@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_arg_stage@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_arg_stage@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        sub              rsp, 112
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [r9 + 32]                       # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [r9 + 48]                       # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [r9 + 80]                       # e
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [r9 + 96]                       # f
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [r9 + 0]                        # lfunc
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rip + .Lx379_0]
                        mov              esi, 6
                        mov              edx, 3
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_open_slim@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax
                                                                                        je    .Lx379_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 24], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [r9 + 32], rax                       # b
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [r9 + 40], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 32]
                        mov              qword ptr [r9 + 48], rax                       # c
                        mov              rax, qword ptr [r10 + 40]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx379_6]
                        lea              rdx, [rip + .Lx379_7]
                                                                                        jmp   rax
.Lx379_6:
                        mov              rdi, qword ptr [r9 + 0]                        # lfunc
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 96], rax                       # f
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax                       # e
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax                       # d
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 48], rax                       # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 32], rax                       # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        add              rsp, 112
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_slim_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx379_2
.Lx379_7:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 0], rax                        # lfunc
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 96], rax                       # f
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax                       # e
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax                       # d
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 48], rax                       # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 32], rax                       # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 40], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        add              rsp, 112
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_slim_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx379_2
.Lx379_5:
                        add              rsp, 112
.Lx379_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx379_240
                        add              rsp, 16
                                                                                        jmp   n213_lit_string_β
.Lx379_240:
                                                                                        jmp   n215_lit_string_α
n214_call_β:
                                                                                        jmp   n213_lit_string_β
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "lfunc"
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n216_call_α
n215_lit_string_β:
                        add              rsp, 32
                                                                                        jmp   n213_lit_string_β
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "aabbdd"
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:
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
.Lrkfnzd382:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd382]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_β
.Lx381_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n217_statement_end_α
n216_call_β:
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n218_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/004: lfunc return value'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:
                                                                                        jmp   n219_lit_string_α
n218_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n220_assign_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "FAIL 1012/004: lfunc return value"
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n221_statement_end_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α:
                                                                                        jmp   n223_statement_end_α
n222_statement_begin_β:
                                                                                        jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:
                                                                                        jmp   n224_statement_begin_α
#=======================================================================================================================
#         IDENT(a, 'global_a')                           :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α:
                                                                                        jmp   n225_var_α
n224_statement_begin_β:
                                                                                        jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n226_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n227_call_α
n226_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n224_statement_begin_β
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "global_a"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
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
.Lrkfnzd400:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd400]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx399_240
                        add              rsp, 16
                                                                                        jmp   n226_lit_string_β
.Lx399_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n228_statement_end_α
n227_call_β:
                        add              rsp, 16
                                                                                        jmp   n226_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:
                                                                                        jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α:
                                                                                        jmp   n230_statement_end_α
n229_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   n231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n231_statement_begin_α
#=======================================================================================================================
#         IDENT(d, 'global_d')                           :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α:
                                                                                        jmp   n232_var_α
n231_statement_begin_β:
                                                                                        jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n234_call_α
n233_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n231_statement_begin_β
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "global_d"
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:
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
.Lrkfnzd412:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd412]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx411_240
                        add              rsp, 16
                                                                                        jmp   n233_lit_string_β
.Lx411_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n235_statement_end_α
n234_call_β:
                        add              rsp, 16
                                                                                        jmp   n233_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:
                                                                                        jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α:
                                                                                        jmp   n237_statement_end_α
n236_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n238_statement_begin_α
#=======================================================================================================================
#         DEFINE('checklocal()x')                        :(cl_end)
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:
                                                                                        jmp   n239_statement_end_α
n238_statement_begin_β:
                                                                                        jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:
                                                                                        jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α:
                                                                                        jmp   n241_statement_end_α
n240_statement_begin_β:
                                                                                        jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:
                                                                                        jmp   n242_statement_begin_α
#=======================================================================================================================
#         DIFFER(checklocal())       :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α:
                                                                                        jmp   n243_call_α
n242_statement_begin_β:
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [r9 + 128]                      # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [r9 + 112]                      # checklocal
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx430_0]
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_open_slim@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax
                                                                                        je    .Lx430_5
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx430_6]
                        lea              rdx, [rip + .Lx430_7]
                                                                                        jmp   rax
.Lx430_6:
                        mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax                      # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        add              rsp, 32
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_slim_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx430_2
.Lx430_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 112], rax                      # checklocal
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax                      # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        add              rsp, 32
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_slim_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx430_2
.Lx430_5:
                        add              rsp, 32
.Lx430_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx430_240
                        add              rsp, 16
                                                                                        jmp   n242_statement_begin_β
.Lx430_240:
                                                                                        jmp   n244_call_α
n243_call_β:
                                                                                        jmp   n242_statement_begin_β
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "checklocal"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd432:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd432]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx431_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n242_statement_begin_β
.Lx431_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_statement_end_α
n244_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n242_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n246_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/007: local null on fresh call' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:
                                                                                        jmp   n247_lit_string_α
n246_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n248_assign_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "FAIL 1012/007: local null on fresh call"
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n249_statement_end_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:
                                                                                        jmp   n251_statement_end_α
n250_statement_begin_β:
                                                                                        jmp   n252_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:
                                                                                        jmp   n252_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1012_func_locals (7/7)'
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α:
                                                                                        jmp   n253_lit_string_α
n252_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n254_assign_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "PASS 1012_func_locals (7/7)"
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n255_statement_end_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/006: global d not clobbered' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α:
                                                                                        jmp   n257_lit_string_α
n256_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n258_assign_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "FAIL 1012/006: global d not clobbered"
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n259_statement_end_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/005: global a not clobbered' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α:
                                                                                        jmp   n261_lit_string_α
n260_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n262_assign_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "FAIL 1012/005: global a not clobbered"
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n263_statement_end_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n264_goto_α:
                                                                                        jmp   n265_statement_begin_α
n264_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:
                                                                                        jmp   n266_statement_end_α
n265_statement_begin_β:
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:
                                                                                        jmp   n267_statement_begin_α
#=======================================================================================================================
#         IDENT(a, 'p')              :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:
                                                                                        jmp   n268_var_α
n267_statement_begin_β:
                                                                                        jmp   n314_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n270_call_α
n269_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n267_statement_begin_β
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
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
.Lrkfnzd473:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd473]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx472_240
                        add              rsp, 16
                                                                                        jmp   n269_lit_string_β
.Lx472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n271_statement_end_α
n270_call_β:
                        add              rsp, 16
                                                                                        jmp   n269_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n272_statement_begin_α
#=======================================================================================================================
# e001    IDENT(b, 'q')              :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:
                                                                                        jmp   n273_var_α
n272_statement_begin_β:
                                                                                        jmp   n310_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n275_call_α
n274_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n272_statement_begin_β
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:
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
.Lrkfnzd481:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd481]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx480_240
                        add              rsp, 16
                                                                                        jmp   n274_lit_string_β
.Lx480_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n276_statement_end_α
n275_call_β:
                        add              rsp, 16
                                                                                        jmp   n274_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:
                                                                                        jmp   n277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α:
                                                                                        jmp   n278_statement_end_α
n277_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n279_statement_begin_α
#=======================================================================================================================
#         DIFFER(d)                  :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_begin_α:
                                                                                        jmp   n280_var_α
n279_statement_begin_β:
                                                                                        jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n281_call_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd492:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd492]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx491_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n279_statement_begin_β
.Lx491_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n282_statement_end_α
n281_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n279_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n283_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/003: local d should be null' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α:
                                                                                        jmp   n284_lit_string_α
n283_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n285_assign_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "FAIL 1012/003: local d should be null"
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n286_statement_end_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:
                                                                                        jmp   n288_statement_end_α
n287_statement_begin_β:
                                                                                        jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:
                                                                                        jmp   n289_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_begin_α:
                                                                                        jmp   n290_lit_string_α
n289_statement_begin_β:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n291_assign_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # a
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n292_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n293_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:
                                                                                        jmp   n294_lit_string_α
n293_statement_begin_β:
                                                                                        jmp   n297_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n295_assign_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "bb"
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # b
                        mov              qword ptr [r9 + 40], rdx
                                                                                        jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n297_statement_begin_α
#=======================================================================================================================
#         a = 'aa' ; b = 'bb' ; d = 'dd'
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α:
                                                                                        jmp   n298_lit_string_α
n297_statement_begin_β:
                                                                                        jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n299_assign_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "dd"
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # d
                        mov              qword ptr [r9 + 72], rdx
                                                                                        jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n301_statement_begin_α
#=======================================================================================================================
#         lfunc = a b d                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α:
                                                                                        jmp   n302_var_α
n301_statement_begin_β:
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n304_binop_α
n303_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n301_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n305_var_α
n304_binop_β:
                        add              rsp, 16
                                                                                        jmp   n303_var_β
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # d
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n306_binop_α
n305_var_β:
                        add              rsp, 16
                                                                                        jmp   n304_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n307_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # lfunc
                        mov              qword ptr [r9 + 8], rdx
                                                                                        jmp   n308_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n309_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx534_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx534_0:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_flat_ret_snap@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/002: arg b should be q'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_begin_α:
                                                                                        jmp   n311_lit_string_α
n310_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n312_assign_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "FAIL 1012/002: arg b should be q"
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n313_statement_end_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n313_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 1012/001: arg a should be p'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_begin_α:
                                                                                        jmp   n315_lit_string_α
n314_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n316_assign_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "FAIL 1012/001: arg a should be p"
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n317_statement_end_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:
                                                                                        jmp   n272_statement_begin_α
n318_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:
                                                                                        jmp   n277_statement_begin_α
n319_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:
                                                                                        jmp   n287_statement_begin_α
n320_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:
                                                                                        jmp   n198_statement_begin_α
n321_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:
                                                                                        jmp   n222_statement_begin_α
n322_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:
                                                                                        jmp   n229_statement_begin_α
n323_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:
                                                                                        jmp   n236_statement_begin_α
n324_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:
                                                                                        jmp   n326_statement_begin_α
n325_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_begin_α:
                                                                                        jmp   n327_statement_end_α
n326_statement_begin_β:
                                                                                        jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:
                                                                                        jmp   n328_statement_begin_α
#=======================================================================================================================
#         DIFFER(x)                  :f(e007_inner)
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:
                                                                                        jmp   n329_var_α
n328_statement_begin_β:
                                                                                        jmp   n336_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]                      # x
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_call_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd563:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd563]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx562_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n328_statement_begin_β
.Lx562_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n331_statement_end_α
n330_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n328_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n332_statement_begin_α
#=======================================================================================================================
#         checklocal = 'local-not-null'                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α:
                                                                                        jmp   n333_lit_string_α
n332_statement_begin_β:
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n334_assign_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "local-not-null"
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # checklocal
                        mov              qword ptr [r9 + 120], rdx
                                                                                        jmp   n335_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_begin_α:
                                                                                        jmp   n337_statement_end_α
n336_statement_begin_β:
                                                                                        jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:
                                                                                        jmp   n338_statement_begin_α
#=======================================================================================================================
#         checklocal =                                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α:
                                                                                        jmp   n339_lit_string_α
n338_statement_begin_β:
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n340_assign_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # checklocal
                        mov              qword ptr [r9 + 120], rdx
                                                                                        jmp   n341_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n309_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:
                                                                                        jmp   n336_statement_begin_α
n342_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_goto_α:
                                                                                        jmp   n240_statement_begin_α
n343_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_goto_α:
                                                                                        jmp   n250_statement_begin_α
n344_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
