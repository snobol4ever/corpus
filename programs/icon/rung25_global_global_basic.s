                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__inc:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
inc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [r9 + 0]              # counter
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n2_coerce_numeric_α
.Lx6_0:                 .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:    mov              r11, 3
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 5;                               je    .Lx8_1
                        cmp              al, 3;                               jne   .Lx8_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lx8_0
.Lx8_1:                 mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n3_binop_α
.Lx8_0:                 lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:             mov              r11, 4
                        mov              eax, dword ptr [rsp + 32]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx9_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lx9_7
.Lx9_2:                 and              edx, 1;                              jz    .Lx9_0
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx9_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx9_4
.Lx9_3:                 movq             xmm0, rsi
.Lx9_4:                 cmp              cl, 5;                               je    .Lx9_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx9_6
.Lx9_5:                 movq             xmm1, rdi
.Lx9_6:                 addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lx9_7:                                                                       jmp   n4_assign_α
.Lx9_0:                 mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    inc_ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 0], rax              # counter
                        mov              qword ptr [r9 + 8], rdx;             jmp   inc_γ
#-----------------------------------------------------------------------------------------------------------------------
inc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
inc_β:
                                                                              jmp   inc_ω
#-----------------------------------------------------------------------------------------------------------------------
inc_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 104]
                        add              rsp, 128;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
inc_ω:
                        mov              rcx, qword ptr [rsp + 112]
                        add              rsp, 128;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
inc_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx11_2]
                        lea              rdx, [rip + .Lx11_3];                jmp   FN__inc
.Lx11_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx11_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "counter"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 6
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n13_assign_α
.Lx19_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 7
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 0], rax              # counter
                        mov              qword ptr [r9 + 8], rdx;             jmp   n14_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_proc_staged_α: mov              r11, 8
                        call             inc_dcα;                             jmp   .Lx22_2
.Lx22_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx22_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx22_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n15_call_proc_staged_α
                                                                              jmp   n15_call_proc_staged_α
n14_call_proc_staged_β: mov              r11, 8;                              jmp   n15_call_proc_staged_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "inc"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α: mov              r11, 9
                        call             inc_dcα;                             jmp   .Lx24_2
.Lx24_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx24_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx24_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n16_call_proc_staged_α
                                                                              jmp   n16_call_proc_staged_α
n15_call_proc_staged_β: mov              r11, 9;                              jmp   n16_call_proc_staged_α
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "inc"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α: mov              r11, 10
                        call             inc_dcα;                             jmp   .Lx26_2
.Lx26_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx26_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx26_29:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n17_var_α
                                                                              jmp   n17_var_α
n16_call_proc_staged_β: mov              r11, 10;                             jmp   n17_var_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "inc"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 11
                        mov              rax, qword ptr [r9 + 0]              # counter
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n18_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n18_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   main_ω
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
.Lstartup_pname0:       .string          "inc"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__inc
                        .quad            inc_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
