                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sieve_α
proc_sieve_α:
                        .global          proc_sieve_α
                        .global          proc_sieve_β
                        .global          proc_sieve_γ
                        .global          proc_sieve_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_sieve_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n1_activate_α:
                        mov              rdi, qword ptr [rbp + 80]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rbp + 64]
                        call             scrip_coexpr_activate@PLT
                        test             rax, rax
                                                                                        je    proc_sieve_ω
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
                                                                                        jmp   n6_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op75_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 7
                                                                                        je    .Lx25_1
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_op75_α
.Lx25_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx27_1
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n8_binop_α
.Lx27_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n3_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n10_binop_test_α
.Lx29_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 100
                                                                                        je    .Lx30_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 100
                                                                                        je    .Lx30_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx30_2
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
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
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8d, 10
                        lea              r9, [rbp + 144]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx30_1
                        cmp              eax, 1
                                                                                        je    n3_disjunction_af
                                                                                        jmp   n11_var_α
.Lx30_2:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8d, 10
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sieve_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sieve_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
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
                        sub              rsp, 520
                        mov              rdi, rsp
                        mov              ecx, 520
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 512], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_create_α:
                        mov              qword ptr [rbp + 352], r12
                        mov              qword ptr [rbp + 360], r13
                        mov              qword ptr [rbp + 368], r14
                        mov              qword ptr [rbp + 376], r15
                        mov              qword ptr [rbp + 384], rbx
                        mov              qword ptr [rbp + 392], rbp
                        lea              rdi, [rip + n37_lit_integer_α]
                        lea              rsi, [rbp + 352]
                        mov              edx, 544
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n36_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n39_lit_integer_α
.Lx58_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n40_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n41_to_α
.Lx61_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n40_activate_α:
                        mov              rdi, qword ptr [rbp + 32]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rbp + 16]
                        call             scrip_coexpr_activate@PLT
                        test             rax, rax
                                                                                        je    main_ω
                                                                                        jmp   n42_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n41_to_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 6
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 432], rax
.Lx65_0:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx
                                                                                        jg    n54_cofail_α
                        mov              qword ptr [rbp + 416], 6
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n43_coret_α
n41_to_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx65_0
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coret_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n41_to_β
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n45_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n46_create_α
                                                                                        jmp   n46_create_α
n45_call_builtin_icon_β:
                                                                                        jmp   n46_create_α
#-----------------------------------------------------------------------------------------------------------------------
n46_create_α:
                        mov              qword ptr [rbp + 96], r12
                        mov              qword ptr [rbp + 104], r13
                        mov              qword ptr [rbp + 112], r14
                        mov              qword ptr [rbp + 120], r15
                        mov              qword ptr [rbp + 128], rbx
                        mov              qword ptr [rbp + 136], rbp
                        lea              rdi, [rip + n48_var_α]
                        lea              rsi, [rbp + 96]
                        mov              edx, 544
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n49_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_conjunction_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n38_var_α
n49_conjunction_β:
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n52_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n51_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_proc_gen_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx84_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx84_21
.Lx84_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx84_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx84_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx84_23
.Lx84_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx84_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx84_1
                        lea              rcx, [rip + .Lx84_3]
                        lea              rdx, [rip + .Lx84_4]
                                                                                        jmp   rax
.Lx84_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx84_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx84_2
.Lx84_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx84_2
.Lx84_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx84_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx84_2
.Lx84_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx84_2
.Lx84_1:
                        call             rt_faildescr@PLT
.Lx84_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n51_cofail_α
                                                                                        jmp   n53_coret_α
n52_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "sieve"
#-----------------------------------------------------------------------------------------------------------------------
n53_coret_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n52_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n54_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 512]
                        add              rsp, 520
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 512]
                        add              rsp, 520
                        ret
                        .section         .note.GNU-stack,"",@progbits
