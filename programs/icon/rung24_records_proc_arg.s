                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sum:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1_field_get_α:         mov              r11, 2
                        mov              rdi, qword ptr [rip + .Lx10_0]
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    sum_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n2_var_α
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n3_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n3_field_get_α:         mov              r11, 4
                        mov              rdi, qword ptr [rip + .Lx13_0]
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    sum_ω
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n4_coerce_numeric_α
.Lx13_0:                .quad            .Lx13_0_s
.Lx13_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              r11, 5
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 5;                               je    .Lx15_1
                        cmp              al, 3;                               jne   .Lx15_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lx15_0
.Lx15_1:                mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n5_coerce_numeric_α
.Lx15_0:                lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:    mov              r11, 6
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 5;                               je    .Lx17_1
                        cmp              al, 3;                               jne   .Lx17_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 3;                               jne   .Lx17_0
.Lx17_1:                mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax;           jmp   n6_binop_α
.Lx17_0:                lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:             mov              r11, 7
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, dword ptr [rsp + 48]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx18_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 56]
                        add              rax, rdx
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   .Lx18_7
.Lx18_2:                and              edx, 1;                              jz    .Lx18_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rsp + 56]
                        cmp              al, 5;                               je    .Lx18_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx18_4
.Lx18_3:                movq             xmm0, rsi
.Lx18_4:                cmp              cl, 5;                               je    .Lx18_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx18_6
.Lx18_5:                movq             xmm1, rdi
.Lx18_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 32], 5
                        mov              qword ptr [rsp + 40], rax
.Lx18_7:                                                                      jmp   n7_return_α
.Lx18_0:                mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    sum_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_return_α
#-----------------------------------------------------------------------------------------------------------------------
n7_return_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   sum_γ
#-----------------------------------------------------------------------------------------------------------------------
sum_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum_β:
                                                                              jmp   sum_ω
#-----------------------------------------------------------------------------------------------------------------------
sum_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx20_2]
                        lea              rdx, [rip + .Lx20_3];                jmp   FN__sum
.Lx20_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx20_3:                pop              r11
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              rdi, rsp
                        add              rdi, 224
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 9
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n22_lit_integer_α
.Lx28_0:                .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n23_call_α
.Lx29_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 11
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn31:               .string          "pair"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n25_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_assign_α
n23_call_β:             mov              r11, 11;                             jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax;          jmp   n26_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_proc_staged_α: mov              r11, 14
                        lea              rsi, [rsp + 96]
                        call             sum_dcα;                             jmp   .Lx36_2
.Lx36_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx36_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx36_29:               mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n27_call_builtin_icon_α
n26_call_proc_staged_β: mov              r11, 14;                             jmp   main_ω
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "sum"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn38:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n27_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   main_ω
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
.Lclassspec0:           .string          "pair(a,b)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "sum"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sum
                        .quad            sum_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
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
