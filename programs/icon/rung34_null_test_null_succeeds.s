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
                        add              rdi, 144
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1_lit_integer_α
.Lx7_0:                 .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n2_binop_test_α
.Lx8_0:                 .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 112;                            je    .Lx9_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 112;                            je    .Lx9_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3;                              jne   .Lx9_2
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx9_2
.Lx9_1:                 mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jle   n5_lit_string_α
                        mov              rcx, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rcx
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rcx;          jmp   n3_unop_test_α
.Lx9_0:                 mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 7
                        lea              r9, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx9_1
                        cmp              eax, 1;                              je    n5_lit_string_α
                                                                              jmp   n3_unop_test_α
.Lx9_2:                 mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n5_lit_string_α
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n3_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_test_α:         mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 104;                            je    n5_lit_string_α
                        cmp              eax, 0;                              jne   n5_lit_string_α
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0;             jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 2
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n6_call_builtin_icon_α
.Lx12_0:                .quad            .Lx12_0_s
.Lx12_0_s:              .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
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
