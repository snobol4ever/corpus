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
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              rdi, rsp
                        add              rdi, 112
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1_unop_test_α
.Lx5_0:                 .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_unop_test_α:         mov              eax, dword ptr [rsp + 96]
                        cmp              al, 104;                             je    n3_var_α
                        cmp              eax, 0;                              je    n3_var_α
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax;           jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn11:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn11]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n4_call_builtin_icon_β:                                                       jmp   main_ω
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
