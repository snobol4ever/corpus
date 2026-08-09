                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__INC_α:
proc_LBL__INC_α_body:
#=======================================================================================================================
# INC     INC = N + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
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
                        mov              qword ptr [1879052288], rax                    # INC
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n6_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx16_0
                        mov              cl, 0
                        mov              rax, qword ptr [rcx + -64]
                                                                                        jmp   rax
.Lx16_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__INC_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__INC_β:
                                                                                        jmp   proc_LBL__INC_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__INC_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__INC_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_INC_α
proc_INC_α:
proc_INC_α_body:
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
                        .string          "INC"
.Lx22_1:
                                                                                        jmp   proc_INC_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_INC_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_INC_β:
                                                                                        jmp   proc_INC_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_INC_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_INC_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__INC"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__INC_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "INC"
.Lstartup_pp1_0:        .string          "N"
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
                        lea              rsi, [rip + proc_INC_α]
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
.Lgvan0:                .string          "INC"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T1"
.Lgvan3:                .string          "R"
.Lgvan4:                .string          "T2"
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
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
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
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_lit_integer_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_call_α
n25_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_statement_begin_β
.Lx99_0:
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
.Lrkfnzd101:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd101]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx100_240
                        add              rsp, 16
                                                                                        jmp   n25_lit_integer_β
.Lx100_240:
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
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:
                                                                                        jmp   n29_lit_string_α
n28_statement_begin_β:
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_lit_integer_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_call_α
n30_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n28_statement_begin_β
.Lx107_0:
                        .quad            1000000000
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
.Lrkfnzd109:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd109]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                                                                                        jmp   n30_lit_integer_β
.Lx108_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_statement_end_α
n31_call_β:
                        add              rsp, 16
                                                                                        jmp   n30_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n33_statement_begin_α
#=======================================================================================================================
#     DEFINE('INC(N)')                    :(INC_END)
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:
                                                                                        jmp   n34_func_activate_α
n33_statement_begin_β:
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_func_activate_α:
                        lea              rax, [rip + INC_act_α]
                        mov              r11, qword ptr [rip + fn_cell$INC@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n35_statement_end_α
n34_func_activate_β:
                                                                                        jmp   n33_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_statement_end_α
n36_statement_begin_β:
                                                                                        jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:
                                                                                        jmp   n38_statement_begin_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:
                                                                                        jmp   n39_call_α
n38_statement_begin_β:
                                                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd125:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd125]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx124_240
                        add              rsp, 16
                                                                                        jmp   n38_statement_begin_β
.Lx124_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_assign_α
n39_call_β:
                        add              rsp, 16
                                                                                        jmp   n38_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # T1
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n42_statement_begin_α
#=======================================================================================================================
#     R = 0
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:
                                                                                        jmp   n43_lit_integer_α
n42_statement_begin_β:
                                                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
.Lx131_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # R
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n46_statement_begin_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:
                                                                                        jmp   n47_lit_integer_α
n46_statement_begin_β:
                                                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
.Lx137_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
# LOOP    N = LT(N, 10000000) N + 1      :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:
                                                                                        jmp   n51_var_α
n50_statement_begin_β:
                                                                                        jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_coerce_numeric_α
n52_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n50_statement_begin_β
.Lx144_0:
                        .quad            10000000
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx146_1
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
.Lx146_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n54_coerce_numeric_α
.Lx146_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_coerce_numeric_α
n53_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx148_1
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
.Lx148_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n55_cmp_test_α
.Lx148_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n55_cmp_test_α
n54_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n53_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n55_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx150_240
                        add              rsp, 16
                                                                                        jmp   n54_coerce_numeric_β
.Lx150_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n56_var_α
n55_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n54_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_lit_integer_α
n56_var_β:
                        add              rsp, 16
                                                                                        jmp   n55_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_binop_α
n57_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n56_var_β
.Lx152_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                                                                                        jmp   n57_lit_integer_β
.Lx153_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_binop_α
n58_binop_β:
                        add              rsp, 16
                                                                                        jmp   n57_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n62_statement_begin_α
#=======================================================================================================================
#     R = INC(R)                         :(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:
                                                                                        jmp   n63_var_α
n62_statement_begin_β:
                                                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # R
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n64_call_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # INC
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx162_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx162_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx162_6]
                        lea              rdx, [rip + .Lx162_7]
                                                                                        jmp   rax
.Lx162_6:
                        mov              rdi, qword ptr [1879052288]                    # INC
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # INC
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_5:
                        add              rsp, 32
.Lx162_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx162_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n62_statement_begin_β
.Lx162_240:
                                                                                        jmp   n65_assign_α
n64_call_β:
                                                                                        jmp   n62_statement_begin_β
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "INC"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # R
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
# DONE    T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:
                                                                                        jmp   n68_call_α
n67_statement_begin_β:
                                                                                        jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd169:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                                                                                        jmp   n67_statement_begin_β
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_assign_α
n68_call_β:
                        add              rsp, 16
                                                                                        jmp   n67_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T2
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n70_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n71_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:
                                                                                        jmp   n72_lit_string_α
n71_statement_begin_β:
                                                                                        jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_var_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # R
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_binop_α
n73_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx178_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n76_statement_end_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n77_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:
                                                                                        jmp   n78_lit_string_α
n77_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_var_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T2
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_var_α
n79_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n77_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # T1
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n81_binop_α
n80_var_β:
                        add              rsp, 16
                                                                                        jmp   n79_var_β
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                                                                                        jmp   n80_var_β
.Lx186_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_binop_α
n81_binop_β:
                        add              rsp, 16
                                                                                        jmp   n80_var_β
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx188_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n84_statement_end_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_α:
                                                                                        jmp   n86_statement_begin_α
n85_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# INC     INC = N + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_var_α
n86_statement_begin_β:
                                                                                        jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_binop_α
n88_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n86_statement_begin_β
.Lx195_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx196_240
                        add              rsp, 16
                                                                                        jmp   n88_lit_integer_β
.Lx196_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # INC
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                                                                                        jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx201_0
                        mov              cl, 0
                        mov              rax, qword ptr [rcx + -64]
                                                                                        jmp   rax
.Lx201_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n93_goto_α:
                                                                                        jmp   n36_statement_begin_α
n93_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_goto_α:
                                                                                        jmp   n50_statement_begin_α
n94_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_goto_α:
                                                                                        jmp   n67_statement_begin_α
n95_goto_β:
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
fn_cell$INC:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
INC_act_α:
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
                        lea              rax, [rip + .Lx205_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052288]                    # INC
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # INC
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rax
                        xor              eax, eax                                       # N
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rax
                        movabs           rax, 139868064955788
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_2
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        call             mon_emit_call_bin@PLT
.Lx205_2:
                        mov              rax, qword ptr [rip + fn_cell$INC@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   INC_act_γ
.Lx205_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx205_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx205_4
.Lx205_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx205_4:
                        mov              rcx, qword ptr [rbp + -112]                    # INC
                        mov              qword ptr [1879052288], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052296], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # N
                        mov              qword ptr [1879052304], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052312], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 139868064955788
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_5
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx205_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx205_6
                                                                                        jmp   r10
.Lx205_6:
                                                                                        jmp   r11
INC_act_γ:
INC_act_ω:
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "INC"
                        .section         .note.GNU-stack,"",@progbits
