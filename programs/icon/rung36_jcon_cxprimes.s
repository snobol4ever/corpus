                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sieve:
sieve_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n1_activate_α:          mov              rdi, qword ptr [rsp + 80]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coexpr_activate@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    sieve_ω
                                                                              jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n4_var_α
n3_disjunction_as:      mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx19_0
                                                                              jmp   n0_var_α
.Lx19_0:                                                                      jmp   n0_var_α
n3_disjunction_β:       mov              eax, dword ptr [rsp + 112];          jmp   n0_var_α
n3_disjunction_af:      add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112];          jmp   n0_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax;          jmp   n5_var_α
n4_var_β:                                                                     jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n6_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:    mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 5;                              je    .Lx25_1
                        cmp              eax, 3;                              jne   .Lx25_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx25_0
.Lx25_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rax;          jmp   n7_coerce_numeric_α
.Lx25_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx27_1
                        cmp              eax, 3;                              jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx27_0
.Lx27_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n8_binop_α
.Lx27_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mod@PLT
                        cmp              eax, 104;                            je    n3_disjunction_af
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n10_binop_test_α
.Lx29_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:       mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 112;                            je    .Lx30_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 112;                            je    .Lx30_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx30_2
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx30_2
.Lx30_1:                mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 248]
                        cmp              rax, rcx;                            je    n3_disjunction_af
                        mov              rcx, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rcx
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rcx;          jmp   n11_var_α
.Lx30_0:                mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              r8d, 10
                        lea              r9, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx30_1
                        cmp              eax, 1;                              je    n3_disjunction_af
                                                                              jmp   n11_var_α
.Lx30_2:                mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n3_disjunction_af
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax;          jmp   n12_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:          lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax;            jmp   sieve_γ
n12_suspend_β:                                                                jmp   n3_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
sieve_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sieve_β:
                                                                              jmp   n12_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sieve_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
sieve_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              rdi, rsp
                        add              rdi, 480
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_create_α:           mov              qword ptr [rsp + 352], r12
                        mov              qword ptr [rsp + 360], r13
                        mov              qword ptr [rsp + 368], r14
                        mov              qword ptr [rsp + 376], r15
                        mov              qword ptr [rsp + 384], rbx
                        mov              qword ptr [rsp + 392], rsp
                        lea              rdi, [rip + n50_lit_integer_α]
                        lea              rsi, [rsp + 352]
                        mov              edx, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax;          jmp   n36_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 40], rax;           jmp   n38_activate_α
#-----------------------------------------------------------------------------------------------------------------------
n38_activate_α:         mov              rdi, qword ptr [rsp + 32]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coexpr_activate@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   n39_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 328], rax;          jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn66:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n42_create_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_create_α
n41_call_builtin_icon_β:
                                                                              jmp   n42_create_α
#-----------------------------------------------------------------------------------------------------------------------
n42_create_α:           mov              qword ptr [rsp + 96], r12
                        mov              qword ptr [rsp + 104], r13
                        mov              qword ptr [rsp + 112], r14
                        mov              qword ptr [rsp + 120], r15
                        mov              qword ptr [rsp + 128], rbx
                        mov              qword ptr [rsp + 136], rsp
                        lea              rdi, [rip + n45_var_α]
                        lea              rsi, [rsp + 96]
                        mov              edx, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax;           jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n44_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n37_var_α
n44_conjunction_β:                                                            jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 248], rax;          jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 264], rax;          jmp   n47_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n47_proc_gen_α:         mov              qword ptr [rsp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx76_20
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx76_21
.Lx76_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx76_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx76_22
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx76_23
.Lx76_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx76_23:               lea              rax, [rip + .Lx76_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx76_1
                        lea              rcx, [rip + .Lx76_3]
                        lea              rdx, [rip + .Lx76_4];                jmp   rax
.Lx76_3:                mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx76_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx76_2
.Lx76_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx76_2
.Lx76_4:                mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx76_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx76_2
.Lx76_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx76_2
.Lx76_1:                call             rt_faildescr@PLT
.Lx76_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx76_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx76_29:               mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n49_cofail_α
                                                                              jmp   n48_coret_α
n47_proc_gen_β:         call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 216];          jmp   qword ptr [rsp]
.Lx76_7:                add              rsp, 8
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n49_cofail_α
                                                                              jmp   n48_coret_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "sieve"
#-----------------------------------------------------------------------------------------------------------------------
n48_coret_α:            mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n49_cofail_α:           mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n51_lit_integer_α
.Lx81_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n52_to_α
.Lx82_0:                .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n52_to_α:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 432], rax
.Lx84_0:                mov              rax, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 472]
                        cmp              rax, rcx;                            jg    n54_cofail_α
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax;          jmp   n53_coret_α
n52_to_β:               inc              qword ptr [rsp + 432];               jmp   .Lx84_0
#-----------------------------------------------------------------------------------------------------------------------
n53_coret_α:            mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_to_β
#-----------------------------------------------------------------------------------------------------------------------
n54_cofail_α:           mov              qword ptr [rip + rtccb+40], r8
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sieve"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sieve
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            288
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
