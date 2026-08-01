                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fib_α
proc_fib_α:
proc_fib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n2_coerce_numeric_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx20_1
                        cmp              eax, 6
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 6
                                                                                        jne   .Lx20_0
.Lx20_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n3_coerce_numeric_α
.Lx20_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx22_1
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n4_cmp_test_α
.Lx22_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n4_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # coerce_numeric
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx24_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_var_α
.Lx24_240:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              qword ptr [1879052296], rdx                    # fib
                        add              rsp, 96
                                                                                        jmp   proc_fib_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 176], rax                     # n
                        mov              qword ptr [rsp + 184], rdx                     # n
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 200], rax                     # lit_integer
                                                                                        jmp   n9_binop_α
.Lx28_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx29_0
                        mov              rax, qword ptr [rsp + 184]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 160], 6
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n10_call_α
.Lx29_0:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx31_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx31_5
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx31_6]
                        lea              rdx, [rip + .Lx31_7]
                                                                                        jmp   rax
.Lx31_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx31_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx31_21
.Lx31_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 160]                     # v
                        mov              rdx, qword ptr [rsp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx31_21:
                        mov              rdi, qword ptr [rip + .Lx31_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx31_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx31_3]
                        lea              rdx, [rip + .Lx31_4]
                                                                                        jmp   rax
.Lx31_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_1:
                        call             rt_faildescr@PLT
.Lx31_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_fib_γ
                                                                                        jmp   n11_var_α
n10_call_β:
                                                                                        jmp   proc_fib_γ
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 272], rax                     # n
                        mov              qword ptr [rsp + 280], rdx                     # n
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 296], rax                     # lit_integer
                                                                                        jmp   n13_binop_α
.Lx33_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx34_0
                        mov              rax, qword ptr [rsp + 280]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rsp + 256], 6
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n14_call_α
.Lx34_0:
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n14_call_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx36_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx36_5
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx36_6]
                        lea              rdx, [rip + .Lx36_7]
                                                                                        jmp   rax
.Lx36_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx36_2
.Lx36_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx36_2
.Lx36_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_20
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx36_21
.Lx36_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 256]                     # v
                        mov              rdx, qword ptr [rsp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx36_21:
                        mov              rdi, qword ptr [rip + .Lx36_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx36_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx36_3]
                        lea              rdx, [rip + .Lx36_4]
                                                                                        jmp   rax
.Lx36_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx36_2
.Lx36_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx36_2
.Lx36_1:
                        call             rt_faildescr@PLT
.Lx36_2:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_fib_γ
                                                                                        jmp   n15_binop_α
n14_call_β:
                                                                                        jmp   proc_fib_γ
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx37_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx37_0
                        mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 216]
                        add              rax, rcx
                        mov              qword ptr [rsp + 96], 6
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n16_assign_α
.Lx37_0:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_fib_γ
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              qword ptr [1879052296], rdx                    # fib
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 64], 6                        # lit_integer
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 72], rax                      # lit_integer
                                                                                        jmp   n40_call_α
.Lx51_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx53_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx53_5
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx53_6]
                        lea              rdx, [rip + .Lx53_7]
                                                                                        jmp   rax
.Lx53_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx53_2
.Lx53_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx53_2
.Lx53_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx53_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx53_21
.Lx53_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 64]                      # v
                        mov              rdx, qword ptr [rsp + 72]                      # v
                        call             rt_arg_stage@PLT
.Lx53_21:
                        mov              rdi, qword ptr [rip + .Lx53_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx53_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx53_3]
                        lea              rdx, [rip + .Lx53_4]
                                                                                        jmp   rax
.Lx53_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx53_2
.Lx53_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx53_2
.Lx53_1:
                        call             rt_faildescr@PLT
.Lx53_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_integer_α
                                                                                        jmp   n41_assign_α
n40_call_β:
                                                                                        jmp   n42_lit_integer_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rsi, qword ptr [rsp + 16]                      # val
                        mov              rdx, qword ptr [rsp + 24]                      # val
                        mov              rdi, qword ptr [rip + .Lx54_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n42_lit_integer_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 136], rax                     # lit_integer
                                                                                        jmp   n43_call_α
.Lx55_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx57_5
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx57_6]
                        lea              rdx, [rip + .Lx57_7]
                                                                                        jmp   rax
.Lx57_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx57_2
.Lx57_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx57_2
.Lx57_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx57_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx57_21
.Lx57_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 128]                     # v
                        mov              rdx, qword ptr [rsp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx57_21:
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx57_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx57_3]
                        lea              rdx, [rip + .Lx57_4]
                                                                                        jmp   rax
.Lx57_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx57_2
.Lx57_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx57_2
.Lx57_1:
                        call             rt_faildescr@PLT
.Lx57_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n45_lit_integer_α
                                                                                        jmp   n44_assign_α
n43_call_β:
                                                                                        jmp   n45_lit_integer_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 80]                      # val
                        mov              rdx, qword ptr [rsp + 88]                      # val
                        mov              rdi, qword ptr [rip + .Lx58_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n45_lit_integer_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 200], rax                     # lit_integer
                                                                                        jmp   n46_call_α
.Lx59_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx61_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx61_5
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx61_6]
                        lea              rdx, [rip + .Lx61_7]
                                                                                        jmp   rax
.Lx61_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx61_2
.Lx61_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx61_2
.Lx61_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx61_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx61_21
.Lx61_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 192]                     # v
                        mov              rdx, qword ptr [rsp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx61_21:
                        mov              rdi, qword ptr [rip + .Lx61_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx61_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx61_3]
                        lea              rdx, [rip + .Lx61_4]
                                                                                        jmp   rax
.Lx61_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx61_2
.Lx61_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx61_2
.Lx61_1:
                        call             rt_faildescr@PLT
.Lx61_2:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n48_lit_integer_α
                                                                                        jmp   n47_assign_α
n46_call_β:
                                                                                        jmp   n48_lit_integer_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 144]                     # val
                        mov              rdx, qword ptr [rsp + 152]                     # val
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n48_lit_integer_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 264], rax                     # lit_integer
                                                                                        jmp   n49_call_α
.Lx63_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # fib
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]                    # fib
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx65_5
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [1879052312], rax                    # n
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx65_6]
                        lea              rdx, [rip + .Lx65_7]
                                                                                        jmp   rax
.Lx65_6:
                        mov              rdi, qword ptr [1879052288]                    # fib
                        mov              rsi, qword ptr [1879052296]                    # fib
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # fib
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax                    # fib
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax                    # n
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_20
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx65_21
.Lx65_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 256]                     # v
                        mov              rdx, qword ptr [rsp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx65_21:
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx65_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4]
                                                                                        jmp   rax
.Lx65_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_1:
                        call             rt_faildescr@PLT
.Lx65_2:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx65_240
                        add              rsp, 272
                                                                                        jmp   main_γ
.Lx65_240:
                                                                                        jmp   n50_assign_α
n49_call_β:
                                                                                        jmp   main_γ
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 208]                     # val
                        mov              rdx, qword ptr [rsp + 216]                     # val
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 272
                                                                                        jmp   main_γ
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
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
