                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "BIG"
.Lgvan1:                .string          "J"
.Lgvan2:                .string          "G"
.Lgvan3:                .string          "HEAD10"
.Lgvan4:                .string          "TAIL10"
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 984
                        mov              rdi, rsp
                        mov              ecx, 984
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         BIG = DUPL('abcdefghij', 500)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n3_lit_integer_α
n0_lit_string_β:
                                                                                        jmp   n11_lit_integer_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "abcdefghij"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n4_var_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n5_var_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n6_call_α
n3_lit_integer_β:
                                                                                        jmp   n11_lit_integer_α
.Lx56_0:
                        .quad            500
#=======================================================================================================================
# cl      J = LT(J, 250) J + 1                                        :F(rd)
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n7_lit_integer_α
n4_var_β:
                                                                                        jmp   n5_var_α
#=======================================================================================================================
# rd      OUTPUT = SIZE(BIG)
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n8_call_α
n5_var_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn60:               .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_integer_α
                                                                                        jmp   n10_assign_α
n6_call_β:
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n12_op75_α
n7_lit_integer_β:
                                                                                        jmp   n5_var_α
.Lx61_0:
                        .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn63:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n9_var_α
                                                                                        jmp   n13_assign_α
n8_call_β:
                                                                                        jmp   n9_var_α
#=======================================================================================================================
#         BIG POS(0) LEN(10) . HEAD10
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                                                                                        jmp   n14_match_head_α
n9_var_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n11_lit_integer_α
n10_assign_β:
                                                                                        jmp   n11_lit_integer_α
#=======================================================================================================================
#         J = 0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
n11_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n4_var_α
.Lx66_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_op75_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 7
                                                                                        je    .Lx68_1
                        cmp              eax, 6
                                                                                        jne   .Lx68_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx68_0
.Lx68_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n17_op75_α
.Lx68_0:
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_op75_α
n12_op75_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_var_α
n13_assign_β:
                                                                                        jmp   n9_var_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_head_α:
                        mov              qword ptr [rsp + 592], r13
                        mov              qword ptr [rsp + 600], r14
                        mov              qword ptr [rsp + 608], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 616], rax
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx71_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n14_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx71_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx71_1
                                                                                        jmp   .Lx71_0
.Lx71_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx71_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 592]
                        mov              r14, qword ptr [rsp + 600]
                        mov              r15, qword ptr [rsp + 608]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 616]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n15_var_α
#=======================================================================================================================
#         OUTPUT = HEAD10
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
n15_var_β:
                        add              rsp, 16
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
n16_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op75_α:
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 7
                                                                                        je    .Lx75_1
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
.Lx75_1:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n21_op77_α
.Lx75_0:
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n21_op77_α
n17_op75_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n23_lit_integer_α
n18_match_sequence_as:
                                                                                        jmp   n22_match_release_α
n18_match_sequence_β:
                                                                                        jmp   n26_match_assign_cond_β
n18_match_sequence_af:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n20_var_α
n19_assign_β:
                                                                                        jmp   n20_var_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         BIG RTAB(10) REM . TAIL10
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n27_match_head_α
n20_var_β:
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op77_α:
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 160]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n5_var_α
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                                                                                        jmp   n29_var_α
n21_op77_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx83_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx83_1:
                        test             rax, rax
                                                                                        je    .Lx83_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx83_3]
                        lea              rdx, [rip + .Lx83_4]
                                                                                        jmp   rax
.Lx83_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx83_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 592]
                        mov              r14, qword ptr [rsp + 600]
                        mov              r15, qword ptr [rsp + 608]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 616]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 672], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n24_match_pos_α
n23_lit_integer_β:
                                                                                        jmp   n14_match_head_β
.Lx84_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n14_match_head_β
                                                                                        jmp   n25_match_assign_save_α
n24_match_pos_β:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n30_match_len_α
n25_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_cond_α:
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
                                                                                        jmp   n22_match_release_α
n26_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n30_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_head_α:
                        mov              qword ptr [rsp + 816], r13
                        mov              qword ptr [rsp + 824], r14
                        mov              qword ptr [rsp + 832], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 840], rax
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx91_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n31_match_sequence_α
n27_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx91_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx91_1
                                                                                        jmp   .Lx91_0
.Lx91_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx91_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 816]
                        mov              r14, qword ptr [rsp + 824]
                        mov              r15, qword ptr [rsp + 832]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 840]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n28_var_α
#=======================================================================================================================
#         OUTPUT = TAIL10
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_assign_α
n28_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n33_lit_integer_α
n29_var_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_len_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jle   .Lx94_240
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
.Lx94_240:
                        add              r14d, 10
                                                                                        jmp   n26_match_assign_cond_α
n30_match_len_β:
                        sub              r14d, 10
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_sequence_α:
                                                                                        jmp   n35_lit_integer_α
n31_match_sequence_as:
                                                                                        jmp   n34_match_release_α
n31_match_sequence_β:
                                                                                        jmp   n38_match_assign_cond_β
n31_match_sequence_af:
                                                                                        jmp   n27_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx97_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n32_assign_β:
                                                                                        jmp   main_γ
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n39_binop_α
n33_lit_integer_β:
                                                                                        jmp   n5_var_α
.Lx98_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_match_release_α:
                        mov              rax, qword ptr [rsp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 64]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx100_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx100_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx100_1:
                        test             rax, rax
                                                                                        je    .Lx100_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx100_3]
                        lea              rdx, [rip + .Lx100_4]
                                                                                        jmp   rax
.Lx100_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx100_1
.Lx100_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx100_1
.Lx100_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx100_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx100_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 816]
                        mov              r14, qword ptr [rsp + 824]
                        mov              r15, qword ptr [rsp + 832]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 840]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rsp + 912], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n36_match_rtab_α
n35_lit_integer_β:
                                                                                        jmp   n27_match_head_β
.Lx101_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n36_match_rtab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], r14d
                        mov              rax, 10
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jle   .Lx102_240
                        add              rsp, 16
                                                                                        jmp   n27_match_head_β
.Lx102_240:
                        mov              r14d, ecx
                                                                                        jmp   n37_match_assign_save_α
n36_match_rtab_β:
                        mov              r14d, dword ptr [rsp + 48]
                        add              rsp, 16
                                                                                        jmp   n27_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n40_match_rem_α
n37_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n36_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n34_match_release_α
n38_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n40_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 224], 6
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n41_binop_α
.Lx107_0:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n5_var_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n41_binop_α
n39_binop_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 80], r14d
                        mov              r14d, r15d
                                                                                        jmp   n38_match_assign_cond_α
n40_match_rem_β:
                        mov              r14d, dword ptr [rsp + 80]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n42_assign_α
n41_binop_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n43_lit_string_α
n42_assign_β:
                                                                                        jmp   n5_var_α
#=======================================================================================================================
#         G = 'medium-' J '-' DUPL('g', 35)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n44_var_α
n43_lit_string_β:
                                                                                        jmp   n4_var_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "medium-"
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n45_binop_α
n44_var_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n46_lit_string_α
n45_binop_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n47_binop_α
n46_lit_string_β:
                                                                                        jmp   n4_var_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n48_lit_string_α
n47_binop_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rsp + 432], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n49_lit_integer_α
n48_lit_string_β:
                                                                                        jmp   n4_var_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n50_call_α
n49_lit_integer_β:
                                                                                        jmp   n4_var_α
.Lx117_0:
                        .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn119:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n4_var_α
                                                                                        jmp   n51_binop_α
n50_call_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n52_assign_α
n51_binop_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n4_var_α
n52_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 984
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 984
                        ret
                        .section         .rodata
.S0:                    .string          "HEAD10"
.S1:                    .string          "TAIL10"
                        .text
                        .section         .note.GNU-stack,"",@progbits
