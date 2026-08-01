                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "R"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "S"
.Lgvan3:                .string          "V1"
.Lgvan4:                .string          "G"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         R =
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
n2_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n4_var_α
.Lx59_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n4_var_α
n3_assign_β:
                        add              rsp, 16
                                                                                        jmp   n4_var_α
#=======================================================================================================================
# lp      I = LT(I, 60) I + 1                                         :F(done)
#         :(lp)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_lit_integer_α
n4_var_β:
                        add              rsp, 16
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_coerce_numeric_α
n5_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n49_var_α
.Lx62_0:
                        .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx64_1
                        cmp              eax, 6
                                                                                        jne   .Lx64_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx64_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
n6_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx66_1
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
.Lx66_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_cmp_test_α
.Lx66_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_cmp_test_α
n7_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx68_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_var_α
.Lx68_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n9_var_α
n8_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
n9_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_binop_α
n10_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n49_var_α
.Lx70_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx71_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n49_var_α
.Lx71_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_binop_α
n11_binop_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_assign_α
n12_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 144
                                                                                        jmp   n14_lit_string_α
n13_assign_β:
                        add              rsp, 144
                                                                                        jmp   n49_var_α
#=======================================================================================================================
#         S = 'ab' I 'cd' DUPL('m', 5)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_var_α
n14_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_var_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_binop_α
n15_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_lit_string_α
n16_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_binop_α
n17_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_var_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_lit_string_α
n18_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_lit_integer_α
n19_lit_string_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n24_var_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_call_α
n20_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n24_var_α
.Lx80_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
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
.Lrkfnzd82:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd82]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx81_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n24_var_α
.Lx81_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_binop_α
n21_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_assign_α
n22_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 144
                                                                                        jmp   n24_var_α
n23_assign_β:
                        add              rsp, 144
                                                                                        jmp   n24_var_α
#=======================================================================================================================
#         S 'ab' BREAK('c') . V1 'cd'                                 :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        sub              rsp, 560
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_match_head_α
n24_var_β:
                        add              rsp, 16
                        add              rsp, 560
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 448], r13
                        mov              qword ptr [rsp + 456], r14
                        mov              qword ptr [rsp + 464], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 472], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx87_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n26_match_sequence_α
n25_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx87_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx87_1
                                                                                        jmp   .Lx87_0
.Lx87_1:
                        mov              r10, qword ptr [1879048192]
.Lx87_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 448]
                        mov              r14, qword ptr [rsp + 456]
                        mov              r15, qword ptr [rsp + 464]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 560
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_sequence_α:
                                                                                        jmp   n46_match_lit_α
n26_match_sequence_as:
                                                                                        jmp   n27_match_release_α
n26_match_sequence_β:
                                                                                        jmp   n42_match_lit_β
n26_match_sequence_af:
                                                                                        jmp   n25_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx91_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_9
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
.Lx91_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx91_1:
                        test             rax, rax
                                                                                        je    .Lx91_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4]
                                                                                        jmp   rax
.Lx91_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx91_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 448]
                        mov              r14, qword ptr [rsp + 456]
                        mov              r15, qword ptr [rsp + 464]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 560
                                                                                        jmp   n28_lit_string_α
#=======================================================================================================================
#         G = 'junk' DUPL('w', 40) I
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_lit_string_α
n28_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n36_var_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "junk"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_lit_integer_α
n29_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_var_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_call_α
n30_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n36_var_α
.Lx94_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
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
.Lrkfnzd96:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd96]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n36_var_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_binop_α
n31_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_var_α
n32_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_binop_α
n33_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
n34_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 112
                                                                                        jmp   n36_var_α
n35_assign_β:
                        add              rsp, 112
                                                                                        jmp   n36_var_α
#=======================================================================================================================
#         R = R ',' V1
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_lit_string_α
n36_var_β:
                        add              rsp, 16
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_binop_α
n37_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_var_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_var_α
n38_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_binop_α
n39_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_assign_α
n40_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 80
                                                                                        jmp   n4_var_α
n41_assign_β:
                        add              rsp, 80
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n45_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n45_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100
                                                                                        jne   n45_match_assign_cond_β
                        add              r14d, 2
                                                                                        jmp   n27_match_release_α
n42_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n45_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n44_match_break_α
n43_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx112_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx112_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
.Lx112_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 99
                                                                                        je    .Lx112_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx112_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
.Lx112_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 99
                                                                                        je    .Lx112_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx112_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
.Lx112_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 99
                                                                                        je    .Lx112_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx112_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
.Lx112_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 99
                                                                                        je    .Lx112_1
                        add              ecx, 1
                                                                                        jmp   .Lx112_0
.Lx112_1:
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, ecx
                                                                                        jmp   n45_match_assign_cond_α
n44_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_cond_α:
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
                                                                                        jmp   n42_match_lit_α
n45_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n44_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n25_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n25_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n25_match_head_β
                        add              r14d, 2
                                                                                        jmp   n43_match_assign_save_α
n46_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n25_match_head_β
#=======================================================================================================================
# bad     OUTPUT = 'MATCH FAILED'                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
n47_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "MATCH FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n48_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# done    OUTPUT = V1
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
n49_var_β:
                        add              rsp, 16
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n51_var_α
n50_assign_β:
                        add              rsp, 16
                                                                                        jmp   n51_var_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = SIZE(R)
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_call_α
n51_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd123:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd123]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx122_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_assign_α
n52_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 32
                                                                                        jmp   main_γ
n53_assign_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n4_var_α
n54_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_α:
                                                                                        jmp   n47_lit_string_α
n55_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_goto_α:
                                                                                        jmp   n49_var_α
n56_goto_β:
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
.S0:                    .string          "V1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
