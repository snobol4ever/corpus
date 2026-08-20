                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__downto:
downto_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n4_binop_test_α
.Lx17_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 112;                            je    .Lx18_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 112;                            je    .Lx18_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3;                              jne   .Lx18_2
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3;                              jne   .Lx18_2
.Lx18_1:                mov              rax, qword ptr [rsp + 216]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              rax, rcx;                            jl    downto_ω
                        mov              rcx, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rcx
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rcx;           jmp   n5_var_α
.Lx18_0:                mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              r8d, 8
                        lea              r9, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx18_1
                        cmp              eax, 1;                              je    downto_ω
                                                                              jmp   n5_var_α
.Lx18_2:                mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    downto_ω
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 88], rax;           jmp   n6_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   downto_γ
n6_suspend_β:                                                                 jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax;          jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_coerce_numeric_α
.Lx25_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5;                              je    .Lx27_1
                        cmp              eax, 3;                              jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx27_0
.Lx27_1:                mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_binop_α
.Lx27_0:                lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              eax, dword ptr [rsp + 128]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx28_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   .Lx28_7
.Lx28_2:                and              edx, 1;                              jz    .Lx28_0
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx28_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx28_4
.Lx28_3:                movq             xmm0, rsi
.Lx28_4:                cmp              ecx, 5;                              je    .Lx28_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx28_6
.Lx28_5:                movq             xmm1, rdi
.Lx28_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 112], 5
                        mov              qword ptr [rsp + 120], rax
.Lx28_7:                                                                      jmp   n11_assign_α
.Lx28_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n2_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
downto_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
downto_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
downto_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
downto_ω:
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
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n31_proc_gen_α
.Lx33_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n31_proc_gen_α:         mov              qword ptr [rsp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx35_20
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx35_21
.Lx35_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx35_21:               lea              rax, [rip + .Lx35_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx35_1
                        lea              rcx, [rip + .Lx35_3]
                        lea              rdx, [rip + .Lx35_4];                jmp   rax
.Lx35_3:                mov              qword ptr [rsp + 88], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx35_5
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx35_2
.Lx35_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx35_2
.Lx35_4:                mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx35_6
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx35_2
.Lx35_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx35_2
.Lx35_1:                call             rt_faildescr@PLT
.Lx35_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx35_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx35_29:               mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   n32_call_builtin_icon_α
n31_proc_gen_β:         call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 88];           jmp   qword ptr [rsp]
.Lx35_7:                add              rsp, 8
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   n32_call_builtin_icon_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "downto"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn37:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n31_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_proc_gen_β
n32_call_builtin_icon_β:
                                                                              jmp   n31_proc_gen_β
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
.Lstartup_pname0:       .string          "downto"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__downto
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            224
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
