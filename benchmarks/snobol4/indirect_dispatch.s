                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_α:
proc_LBL__ADD1_α_body:
#=======================================================================================================================
# ADD1    ADD1 = V + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_binop_α
n2_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n0_statement_begin_β
.Lx10_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx11_240
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_β
.Lx11_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ADD1
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n6_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx16_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx16_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_β:
                                                                                        jmp   proc_LBL__ADD1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD1_α
proc_ADD1_α:
proc_ADD1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n18_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx22_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx22_1
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "ADD1"
.Lx22_1:
                                                                                        jmp   proc_ADD1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_β:
                                                                                        jmp   proc_ADD1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ADD1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ADD1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ADD1"
.Lstartup_pp1_0:        .string          "V"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_ADD1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ADD1"
.Lgvan1:                .string          "V"
.Lgvan2:                .string          "FN"
.Lgvan3:                .string          "X"
.Lgvan4:                .string          "N"
.Lgvan5:                .string          "R"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:
                                                                                        jmp   n24_lit_string_α
n23_statement_begin_β:
                                                                                        jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_lit_integer_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_call_α
n25_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_statement_begin_β
.Lx83_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
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
.Lrkfnzd85:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd85]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 16
                                                                                        jmp   n25_lit_integer_β
.Lx84_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_statement_end_α
n26_call_β:
                        add              rsp, 16
                                                                                        jmp   n25_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n28_statement_begin_α
#=======================================================================================================================
#     DEFINE('ADD1(V)')                   :(ADD1END)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:
                                                                                        jmp   n29_func_activate_α
n28_statement_begin_β:
                                                                                        jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_func_activate_α:
                        lea              rax, [rip + ADD1_act_α]
                        mov              r11, qword ptr [rip + fn_cell$ADD1@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n30_statement_end_α
n29_func_activate_β:
                                                                                        jmp   n28_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:
                                                                                        jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:
                                                                                        jmp   n32_statement_end_α
n31_statement_begin_β:
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:
                                                                                        jmp   n33_statement_begin_α
#=======================================================================================================================
#     FN = 'ADD1'
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:
                                                                                        jmp   n34_lit_string_α
n33_statement_begin_β:
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "ADD1"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # FN
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n37_statement_begin_α
#=======================================================================================================================
#     X = 5
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_lit_integer_α
n37_statement_begin_β:
                                                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx106_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # X
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n41_statement_begin_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_lit_integer_α
n41_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # N
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n45_statement_begin_α
#=======================================================================================================================
# LOOP    N = LT(N, 500) N + 1           :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_var_α
n45_statement_begin_β:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # N
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_coerce_numeric_α
n47_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_statement_begin_β
.Lx119_0:
                        .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx121_1
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n49_coerce_numeric_α
.Lx121_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n49_coerce_numeric_α
n48_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n47_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx123_1
                        cmp              eax, 3
                                                                                        jne   .Lx123_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx123_0
.Lx123_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n50_cmp_test_α
.Lx123_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n50_cmp_test_α
n49_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n48_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n50_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx125_240
                        add              rsp, 16
                                                                                        jmp   n49_coerce_numeric_β
.Lx125_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n51_var_α
n50_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n49_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # N
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
n51_var_β:
                        add              rsp, 16
                                                                                        jmp   n50_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_binop_α
n52_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n51_var_β
.Lx127_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                                                                                        jmp   n52_lit_integer_β
.Lx128_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_binop_α
n53_binop_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # N
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n57_statement_begin_α
#=======================================================================================================================
#     R = APPLY(FN, X)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:
                                                                                        jmp   n58_var_α
n57_statement_begin_β:
                                                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # FN
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # X
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_call_α
n59_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
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
.Lrkfnzd138:            .string          "APPLY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd138]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx137_240
                        add              rsp, 16
                                                                                        jmp   n59_var_β
.Lx137_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_assign_α
n60_call_β:
                        add              rsp, 16
                                                                                        jmp   n59_var_β
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # R
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n63_statement_begin_α
#=======================================================================================================================
#     :(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:
                                                                                        jmp   n64_statement_end_α
n63_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                                                                                        jmp   n45_statement_begin_α
#=======================================================================================================================
# DONE    OUTPUT = R
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_var_α
n65_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # R
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx149_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n68_statement_end_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n70_statement_begin_α
n69_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD1    ADD1 = V + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:
                                                                                        jmp   n71_var_α
n70_statement_begin_β:
                                                                                        jmp   n76_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_binop_α
n72_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_statement_begin_β
.Lx156_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx157_240
                        add              rsp, 16
                                                                                        jmp   n72_lit_integer_β
.Lx157_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ADD1
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                                                                                        jmp   n76_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n76_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx162_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx162_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n77_goto_α:
                                                                                        jmp   n31_statement_begin_α
n77_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_goto_α:
                                                                                        jmp   n45_statement_begin_α
n78_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_goto_α:
                                                                                        jmp   n65_statement_begin_α
n79_goto_β:
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
                        .section         .data
                        .align           8
fn_cell$ADD1:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
ADD1_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx166_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052288]                    # ADD1
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052304]                    # V
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # ADD1
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rax
                        xor              eax, eax                                       # V
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rax
                        movabs           rax, 140332640746892
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_2
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        call             mon_emit_call_bin@PLT
.Lx166_2:
                        mov              rax, qword ptr [rip + fn_cell$ADD1@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   ADD1_act_γ
.Lx166_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx166_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx166_4
.Lx166_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx166_4:
                        mov              rcx, qword ptr [rbp + -112]                    # ADD1
                        mov              qword ptr [1879052288], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052296], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # V
                        mov              qword ptr [1879052304], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052312], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140332640746892
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_5
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx166_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx166_6
                                                                                        jmp   r10
.Lx166_6:
                                                                                        jmp   r11
ADD1_act_γ:
ADD1_act_ω:
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "ADD1"
                        .section         .note.GNU-stack,"",@progbits
