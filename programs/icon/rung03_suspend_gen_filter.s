                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_downto_α
proc_downto_α:
proc_downto_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 160
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n4_binop_test_α
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
.Lx18_1:
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 72]
                        cmp              rax, rcx
                                                                                        jge   .Lx18_238
                        add              rsp, 160
                                                                                        jmp   proc_downto_ω
.Lx18_238:
                        mov              rcx, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rcx
                        mov              rcx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rcx
                                                                                        jmp   n5_var_α
.Lx18_0:
                        mov              rdi, qword ptr [rbp + 208]                     # a
                        mov              rsi, qword ptr [rbp + 216]                     # a
                        mov              rdx, qword ptr [rbp + 64]                      # b
                        mov              rcx, qword ptr [rbp + 72]                      # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 32]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx18_1
                        cmp              eax, 1
                                                                                        jne   .Lx18_239
                        add              rsp, 160
                                                                                        jmp   proc_downto_ω
.Lx18_239:
                                                                                        jmp   n5_var_α
.Lx18_2:
                        mov              rdi, qword ptr [rbp + 208]                     # lhs
                        mov              rsi, qword ptr [rbp + 216]                     # lhs
                        mov              rdx, qword ptr [rbp + 64]                      # rhs
                        mov              rcx, qword ptr [rbp + 72]                      # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx18_240
                        add              rsp, 160
                                                                                        jmp   proc_downto_ω
.Lx18_240:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n6_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 160
                                                                                        jmp   proc_downto_γ
n6_suspend_β:
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx25_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx27_1
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_binop_α
.Lx27_0:
                        lea              rdi, [rbp + 208]                               # self
                        lea              rsi, [rbp + 160]                               # other
                        lea              rdx, [rbp + 128]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx28_0
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n11_assign_α
.Lx28_0:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n2_var_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_downto_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_downto_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_downto_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_downto_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "downto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_downto_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 80
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
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n31_proc_gen_α
.Lx33_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n31_proc_gen_α:
                        mov              qword ptr [rbp + 80], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx35_20
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx35_21
.Lx35_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 112]                     # v
                        mov              rdx, qword ptr [rbp + 120]                     # v
                        call             rt_arg_stage@PLT
.Lx35_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx35_1
                        lea              rcx, [rip + .Lx35_3]
                        lea              rdx, [rip + .Lx35_4]
                                                                                        jmp   rax
.Lx35_3:
                        mov              qword ptr [rbp + 88], rsp
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx35_5
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx35_2
.Lx35_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx35_2
.Lx35_4:
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx35_6
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx35_2
.Lx35_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx35_2
.Lx35_1:
                        call             rt_faildescr@PLT
.Lx35_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx35_240
                        add              rsp, 80
                                                                                        jmp   main_ω
.Lx35_240:
                                                                                        jmp   n32_call_builtin_icon_α
n31_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   qword ptr [rsp]
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "downto"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn37:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n31_proc_gen_β
                                                                                        jmp   n31_proc_gen_β
n32_call_builtin_icon_β:
                                                                                        jmp   n31_proc_gen_β
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
