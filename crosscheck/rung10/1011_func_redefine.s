                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__myfunc2_α
proc_LBL__myfunc2_α:
proc_LBL__myfunc2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 16
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__myfunc2_ω
#=======================================================================================================================
# myfunc2 myfunc = NE(myfunc, 1) myfunc * myfunc(myfunc - 1) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_coerce_numeric_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx20_1
                        cmp              eax, 3
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx20_0
.Lx20_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_coerce_numeric_α
.Lx20_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx22_1
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n5_cmp_test_α
.Lx22_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx24_240
                        add              rsp, 16
                                                                                        jmp   n15_save_restore_α
.Lx24_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_binop_α
.Lx27_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n15_save_restore_α
.Lx28_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # binop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx30_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx30_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx30_6]
                        lea              rdx, [rip + .Lx30_7]
                                                                                        jmp   rax
.Lx30_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx30_2
.Lx30_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx30_2
.Lx30_5:
                        add              rsp, 16
.Lx30_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 16
                                                                                        jmp   n15_save_restore_α
.Lx30_240:
                                                                                        jmp   n11_binop_α
n10_call_β:
                                                                                        jmp   n15_save_restore_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 16
                                                                                        jmp   n15_save_restore_α
.Lx31_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # cmp_test
                        mov              rsi, qword ptr [rsp + 120]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n14_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_α:
                                                                                        jmp   n15_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n15_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_β:
                                                                                        jmp   proc_LBL__myfunc2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_myfunc_α
proc_myfunc_α:
proc_myfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n39_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx43_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx43_1
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "myfunc2"
.Lx43_1:
                                                                                        jmp   proc_myfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_β:
                                                                                        jmp   proc_myfunc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__myfunc2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__myfunc2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "myfunc"
.Lstartup_pp1_0:        .string          "myfunc"
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
                        lea              rsi, [rip + proc_myfunc_α]
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
.Lgvan0:                .string          "myfunc"
.Lgvan1:                .string          "n"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
n44_statement_α:
                                                                                        jmp   n45_statement_α
#=======================================================================================================================
#         DEFINE('myfunc(n)')                            :(myfunc_end)
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_α:
                                                                                        jmp   n46_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_α:
                                                                                        jmp   n47_lit_integer_α
#=======================================================================================================================
#         NE(myfunc(3), 6)           :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_call_α
.Lx113_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx115_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx115_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx115_6]
                        lea              rdx, [rip + .Lx115_7]
                                                                                        jmp   rax
.Lx115_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx115_2
.Lx115_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx115_2
.Lx115_5:
                        add              rsp, 16
.Lx115_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx115_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_statement_α
.Lx115_240:
                                                                                        jmp   n49_lit_integer_α
n48_call_β:
                                                                                        jmp   n57_statement_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_coerce_numeric_α
.Lx116_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n50_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx118_1
                        cmp              eax, 3
                                                                                        jne   .Lx118_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx118_0
.Lx118_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n51_coerce_numeric_α
.Lx118_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n51_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx120_1
                        cmp              eax, 3
                                                                                        jne   .Lx120_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx120_0
.Lx120_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n52_cmp_test_α
.Lx120_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n52_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n52_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n57_statement_α
.Lx122_240:
                                                                                        jmp   n53_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_α:
                        add              rsp, 96
                                                                                        jmp   n54_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/001: first definition myfunc(3)=6' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "FAIL 1011/001: first definition myfunc(3)=6"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx126_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n56_statement_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_α:
                                                                                        jmp   n58_lit_string_α
#=======================================================================================================================
#         DIFFER(DEFINE('myfunc(myfunc)', 'myfunc2'))                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_call_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd133:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd133]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx132_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_α
.Lx132_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_statement_α
n59_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_α:
                        add              rsp, 32
                                                                                        jmp   n61_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/002: define returns function name' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_assign_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "FAIL 1011/002: define returns function name"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx137_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_statement_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e002    :(myfunc2_end)
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_α:
                                                                                        jmp   n65_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_α:
                                                                                        jmp   n66_lit_integer_α
#=======================================================================================================================
#         NE(myfunc(4), 24)          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_call_α
.Lx144_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx146_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx146_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx146_6]
                        lea              rdx, [rip + .Lx146_7]
                                                                                        jmp   rax
.Lx146_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_5:
                        add              rsp, 16
.Lx146_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n76_statement_α
.Lx146_240:
                                                                                        jmp   n68_lit_integer_α
n67_call_β:
                                                                                        jmp   n76_statement_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_coerce_numeric_α
.Lx147_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx149_1
                        cmp              eax, 3
                                                                                        jne   .Lx149_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx149_0
.Lx149_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n70_coerce_numeric_α
.Lx149_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx151_1
                        cmp              eax, 3
                                                                                        jne   .Lx151_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx151_0
.Lx151_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n71_cmp_test_α
.Lx151_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n71_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n76_statement_α
.Lx153_240:
                                                                                        jmp   n72_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_α:
                        add              rsp, 96
                                                                                        jmp   n73_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/003: redefined myfunc(4)=24'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "FAIL 1011/003: redefined myfunc(4)=24"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx157_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_statement_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_α:
                                                                                        jmp   n77_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1011_func_redefine (3/3)'
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 29
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "PASS 1011_func_redefine (3/3)"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx163_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_statement_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n80_goto_α:
                                                                                        jmp   n81_var_α
n80_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# myfunc  myfunc = n * 2                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_binop_α
.Lx168_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx169_240
                        add              rsp, 16
                                                                                        jmp   n86_save_restore_α
.Lx169_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n85_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_α:
                                                                                        jmp   n86_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n86_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n87_goto_α:
                                                                                        jmp   n46_statement_α
n87_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_goto_α:
                                                                                        jmp   n57_statement_α
n88_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_goto_α:
                                                                                        jmp   n64_statement_α
n89_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_goto_α:
                                                                                        jmp   n91_var_α
n90_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# myfunc2 myfunc = NE(myfunc, 1) myfunc * myfunc(myfunc - 1) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_coerce_numeric_α
.Lx180_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx182_1
                        cmp              eax, 3
                                                                                        jne   .Lx182_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx182_0
.Lx182_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n94_coerce_numeric_α
.Lx182_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx184_1
                        cmp              eax, 3
                                                                                        jne   .Lx184_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx184_0
.Lx184_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n95_cmp_test_α
.Lx184_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n95_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n95_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n86_save_restore_α
.Lx186_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_binop_α
.Lx189_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n86_save_restore_α
.Lx190_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_call_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # binop
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx192_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx192_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_6]
                        lea              rdx, [rip + .Lx192_7]
                                                                                        jmp   rax
.Lx192_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx192_2
.Lx192_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx192_2
.Lx192_5:
                        add              rsp, 16
.Lx192_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx192_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n86_save_restore_α
.Lx192_240:
                                                                                        jmp   n101_binop_α
n100_call_β:
                                                                                        jmp   n86_save_restore_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n86_save_restore_α
.Lx193_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # cmp_test
                        mov              rsi, qword ptr [rsp + 120]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n104_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_α:
                        add              rsp, 192
                                                                                        jmp   n86_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n105_goto_α:
                                                                                        jmp   n65_statement_α
n105_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_goto_α:
                                                                                        jmp   n76_statement_α
n106_goto_β:
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
