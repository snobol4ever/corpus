                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fib_α
proc_fib_α:
proc_fib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_coerce_numeric_α
.Lx23_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx25_1
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_coerce_numeric_α
.Lx25_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx27_1
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n5_cmp_test_α
.Lx27_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx29_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n8_statement_end_α
.Lx29_240:
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 96
                                                                                        jmp   proc_fib_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 176], rax                     # result
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n12_binop_α
.Lx37_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
                        mov              rax, qword ptr [rsp + 184]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n13_call_α
.Lx38_0:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n13_call_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx40_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx40_5
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx40_6]
                        lea              rdx, [rip + .Lx40_7]
                                                                                        jmp   rax
.Lx40_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx40_2
.Lx40_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx40_2
.Lx40_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx40_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx40_21
.Lx40_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 160]                     # v
                        mov              rdx, qword ptr [rsp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx40_21:
                        mov              rdi, qword ptr [rip + .Lx40_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx40_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4]
                                                                                        jmp   rax
.Lx40_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx40_2
.Lx40_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx40_2
.Lx40_1:
                        call             rt_faildescr@PLT
.Lx40_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib_γ
                                                                                        jmp   n14_var_α
n13_call_β:
                                                                                        jmp   proc_fib_γ
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rsp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n16_binop_α
.Lx42_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
                        mov              rax, qword ptr [rsp + 280]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n17_call_α
.Lx43_0:
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n17_call_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx45_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx45_5
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_6]
                        lea              rdx, [rip + .Lx45_7]
                                                                                        jmp   rax
.Lx45_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_20
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx45_21
.Lx45_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 256]                     # v
                        mov              rdx, qword ptr [rsp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx45_21:
                        mov              rdi, qword ptr [rip + .Lx45_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx45_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_1:
                        call             rt_faildescr@PLT
.Lx45_2:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib_γ
                                                                                        jmp   n18_binop_α
n17_call_β:
                                                                                        jmp   proc_fib_γ
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx46_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx46_0
                        mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 216]
                        add              rax, rcx
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n19_assign_α
.Lx46_0:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   proc_fib_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_β:
                                                                                        jmp   proc_fib_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fib"
.Lstartup_pp0_0:        .string          "n"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fib_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "fib"
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:
                                                                                        jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:
                                                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:
                                                                                        jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_call_α
.Lx76_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx78_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx78_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_6]
                        lea              rdx, [rip + .Lx78_7]
                                                                                        jmp   rax
.Lx78_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_5:
                        add              rsp, 32
.Lx78_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx78_240
                        add              rsp, 16
                                                                                        jmp   n55_statement_begin_α
.Lx78_240:
                                                                                        jmp   n53_assign_α
n52_call_β:
                                                                                        jmp   n55_statement_begin_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx79_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n54_statement_end_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:
                                                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_call_α
.Lx84_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx86_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx86_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx86_6]
                        lea              rdx, [rip + .Lx86_7]
                                                                                        jmp   rax
.Lx86_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx86_2
.Lx86_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx86_2
.Lx86_5:
                        add              rsp, 32
.Lx86_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx86_240
                        add              rsp, 16
                                                                                        jmp   n60_statement_begin_α
.Lx86_240:
                                                                                        jmp   n58_assign_α
n57_call_β:
                                                                                        jmp   n60_statement_begin_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx87_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_statement_end_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:
                                                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:
                                                                                        jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_call_α
.Lx92_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx94_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx94_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx94_6]
                        lea              rdx, [rip + .Lx94_7]
                                                                                        jmp   rax
.Lx94_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx94_2
.Lx94_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx94_2
.Lx94_5:
                        add              rsp, 32
.Lx94_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx94_240
                        add              rsp, 16
                                                                                        jmp   n65_statement_begin_α
.Lx94_240:
                                                                                        jmp   n63_assign_α
n62_call_β:
                                                                                        jmp   n65_statement_begin_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx95_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n64_statement_end_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_call_α
.Lx100_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx102_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx102_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_6]
                        lea              rdx, [rip + .Lx102_7]
                                                                                        jmp   rax
.Lx102_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_5:
                        add              rsp, 32
.Lx102_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx102_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx102_240:
                                                                                        jmp   n68_assign_α
n67_call_β:
                                                                                        jmp   main_γ
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx103_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_statement_end_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:
                        add              rsp, 128
                                                                                        jmp   main_γ
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
