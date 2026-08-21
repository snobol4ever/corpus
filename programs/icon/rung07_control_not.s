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
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n1_lit_integer_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx8_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx8_0:                                                                       jmp   main_γ
n0_disjunction_β:       mov              eax, dword ptr [rsp + 16];           jmp   main_ω
n0_disjunction_af:      add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16];           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n2_lit_integer_α
n1_lit_integer_β:                                                             jmp   n4_var_α
.Lx9_0:                 .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n3_binop_test_α
.Lx10_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 112;                            je    .Lx11_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 112;                            je    .Lx11_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx11_2
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3;                              jne   .Lx11_2
.Lx11_1:                mov              rax, qword ptr [rsp + 136]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jle   n4_var_α
                        mov              rcx, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rcx
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rcx;          jmp   n0_disjunction_af
.Lx11_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 7
                        lea              r9, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx11_1
                        cmp              eax, 1;                              je    n4_var_α
                                                                              jmp   n0_disjunction_af
.Lx11_2:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n4_var_α
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0;            jmp   n5_lit_integer_α
n4_var_β:                                                                     jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n6_call_builtin_icon_α
.Lx13_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn15:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n0_disjunction_as
n6_call_builtin_icon_β:                                                       jmp   main_ω
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
