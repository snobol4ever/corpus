                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sieve_α
proc_sieve_α:
proc_sieve_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 176
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
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n1_activate_α:
                        mov              rdi, qword ptr [rbp + 80]                      # target
                        xor              esi, esi                                       # x0
                        xor              edx, edx                                       # x1
                        lea              rcx, [rbp + 64]                                # out2
                        call             scrip_coexpr_activate@PLT
                        test             rax, rax
                                                                                        jne   .Lx16_240
                        add              rsp, 176
                                                                                        jmp   proc_sieve_ω
.Lx16_240:
                                                                                        jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n4_var_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx19_0
                                                                                        jmp   n0_var_α
.Lx19_0:
                                                                                        jmp   n0_var_α
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                                                                                        jmp   n0_var_α
n3_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                                                                                        jmp   n0_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n5_var_α
n4_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n6_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 5
                                                                                        je    .Lx25_1
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx25_0:
                        lea              rdi, [rbp + 272]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx27_1
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n8_binop_α
.Lx27_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 272]                               # other
                        lea              rdx, [rbp + 176]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n3_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n10_binop_test_α
.Lx29_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 112
                                                                                        je    .Lx30_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 112
                                                                                        je    .Lx30_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx30_2
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx30_2
.Lx30_1:
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx
                                                                                        je    n3_disjunction_af
                        mov              rcx, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rcx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rcx
                                                                                        jmp   n11_var_α
.Lx30_0:
                        mov              rdi, qword ptr [rbp + 160]                     # a
                        mov              rsi, qword ptr [rbp + 168]                     # a
                        mov              rdx, qword ptr [rbp + 240]                     # b
                        mov              rcx, qword ptr [rbp + 248]                     # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 144]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx30_1
                        cmp              eax, 1
                                                                                        je    n3_disjunction_af
                                                                                        jmp   n11_var_α
.Lx30_2:
                        mov              rdi, qword ptr [rbp + 160]                     # lhs
                        mov              rsi, qword ptr [rbp + 168]                     # lhs
                        mov              rdx, qword ptr [rbp + 240]                     # rhs
                        mov              rcx, qword ptr [rbp + 248]                     # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n3_disjunction_af
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n12_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sieve_γ
n12_suspend_β:
                                                                                        jmp   n3_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
proc_sieve_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sieve_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_sieve_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_sieve_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sieve"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sieve_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 288
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
n35_create_α:
                        sub              rsp, 464
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
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rbp + 352], r12
                        mov              qword ptr [rbp + 360], r13
                        mov              qword ptr [rbp + 368], r14
                        mov              qword ptr [rbp + 376], r15
                        mov              qword ptr [rbp + 384], rbx
                        mov              qword ptr [rbp + 392], rbp
                        lea              rdi, [rip + n50_lit_integer_α]                 # body_entry_addr
                        lea              rsi, [rbp + 352]                               # regs
                        mov              edx, 544                                       # frame_bytes
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n36_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n38_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n38_activate_α:
                        mov              rdi, qword ptr [rbp + 32]                      # target
                        xor              esi, esi                                       # x0
                        xor              edx, edx                                       # x1
                        lea              rcx, [rbp + 16]                                # out2
                        call             scrip_coexpr_activate@PLT
                        test             rax, rax
                                                                                        jne   .Lx61_240
                        add              rsp, 464
                                                                                        jmp   main_ω
.Lx61_240:
                                                                                        jmp   n39_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn66:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n42_create_α
                                                                                        jmp   n42_create_α
n41_call_builtin_icon_β:
                                                                                        jmp   n42_create_α
#-----------------------------------------------------------------------------------------------------------------------
n42_create_α:
                        mov              qword ptr [rbp + 96], r12
                        mov              qword ptr [rbp + 104], r13
                        mov              qword ptr [rbp + 112], r14
                        mov              qword ptr [rbp + 120], r15
                        mov              qword ptr [rbp + 128], rbx
                        mov              qword ptr [rbp + 136], rbp
                        lea              rdi, [rip + n45_var_α]                         # body_entry_addr
                        lea              rsi, [rbp + 96]                                # regs
                        mov              edx, 544                                       # frame_bytes
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n44_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n37_var_α
n44_conjunction_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n47_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n47_proc_gen_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx76_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx76_21
.Lx76_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx76_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx76_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx76_23
.Lx76_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx76_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx76_1
                        lea              rcx, [rip + .Lx76_3]
                        lea              rdx, [rip + .Lx76_4]
                                                                                        jmp   rax
.Lx76_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx76_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx76_2
.Lx76_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx76_2
.Lx76_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx76_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx76_2
.Lx76_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx76_2
.Lx76_1:
                        call             rt_faildescr@PLT
.Lx76_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n49_cofail_α
                                                                                        jmp   n48_coret_α
n47_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "sieve"
#-----------------------------------------------------------------------------------------------------------------------
n48_coret_α:
                        mov              rdi, qword ptr [rbp + 160]                     # d0
                        mov              rsi, qword ptr [rbp + 168]                     # d1
                        xor              edx, edx                                       # resume_addr
                        call             scrip_coret@PLT
                                                                                        jmp   n47_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n49_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n51_lit_integer_α
.Lx81_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n52_to_α
.Lx82_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n52_to_α:
                        mov              rdi, qword ptr [rbp + 448]                     # v
                        mov              rsi, qword ptr [rbp + 456]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]                     # v
                        mov              rsi, qword ptr [rbp + 472]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 432], rax
.Lx84_0:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx
                                                                                        jg    n54_cofail_α
                        mov              qword ptr [rbp + 416], 3
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n53_coret_α
n52_to_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx84_0
#-----------------------------------------------------------------------------------------------------------------------
n53_coret_α:
                        mov              rdi, qword ptr [rbp + 416]                     # d0
                        mov              rsi, qword ptr [rbp + 424]                     # d1
                        xor              edx, edx                                       # resume_addr
                        call             scrip_coret@PLT
                                                                                        jmp   n52_to_β
#-----------------------------------------------------------------------------------------------------------------------
n54_cofail_α:
                        call             scrip_cofail@PLT
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
