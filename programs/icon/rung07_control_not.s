                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx8_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx8_0:
                                                                                        jmp   main_ω
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n0_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n2_lit_integer_α
n1_lit_integer_β:
                                                                                        jmp   n4_var_α
.Lx9_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n3_binop_test_α
.Lx10_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
.Lx11_1:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jle   n4_var_α
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rcx
                                                                                        jmp   n0_disjunction_af
.Lx11_0:
                        mov              rdi, qword ptr [rbp + 128]                     # a
                        mov              rsi, qword ptr [rbp + 136]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 112]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx11_1
                        cmp              eax, 1
                                                                                        je    n4_var_α
                                                                                        jmp   n0_disjunction_af
.Lx11_2:
                        mov              rdi, qword ptr [rbp + 128]                     # lhs
                        mov              rsi, qword ptr [rbp + 136]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_var_α
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                                                                                        jmp   n5_lit_integer_α
n4_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n6_call_builtin_icon_α
.Lx13_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn15:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n0_disjunction_as
n6_call_builtin_icon_β:
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
