                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        add              rdi, 272
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_assign_α
.Lx13_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n4_coerce_numeric_α
.Lx17_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 5;                              je    .Lx19_1
                        cmp              eax, 3;                              jne   .Lx19_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3;                              jne   .Lx19_0
.Lx19_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 120], rax;          jmp   n5_binop_α
.Lx19_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 144]
                        lea              rdx, [rsp + 112]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              eax, dword ptr [rsp + 112]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx20_2
                        mov              rax, qword ptr [rsp + 120]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   .Lx20_7
.Lx20_2:                and              edx, 1;                              jz    .Lx20_0
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx20_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx20_4
.Lx20_3:                movq             xmm0, rsi
.Lx20_4:                cmp              ecx, 5;                              je    .Lx20_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx20_6
.Lx20_5:                movq             xmm1, rdi
.Lx20_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 96], 5
                        mov              qword ptr [rsp + 104], rax
.Lx20_7:                                                                      jmp   n6_assign_α
.Lx20_0:                mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n11_var_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n8_binop_test_α
.Lx22_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_test_α:        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 112;                            je    .Lx23_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 112;                            je    .Lx23_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3;                              jne   .Lx23_2
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx23_2
.Lx23_1:                mov              rax, qword ptr [rsp + 88]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jle   n11_var_α
                        mov              rcx, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rcx
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rcx;           jmp   n9_var_α
.Lx23_0:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              r8d, 7
                        lea              r9, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx23_1
                        cmp              eax, 1;                              je    n11_var_α
                                                                              jmp   n9_var_α
.Lx23_2:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n11_var_α
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax;           jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 56], rax;           jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn27:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n10_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax;          jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n2_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_var_α
n12_call_builtin_icon_β:
                                                                              jmp   n2_var_α
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
                        .section         .note.GNU-stack,"",@progbits
