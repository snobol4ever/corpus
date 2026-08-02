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
n0_lit_integer_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1_assign_α
.Lx9_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n3_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx12_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx12_0:
                                                                                        jmp   main_ω
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n2_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_lit_integer_α
n3_var_β:
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n5_binop_test_α
.Lx15_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
.Lx16_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jge   n6_var_α
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rcx
                                                                                        jmp   n2_disjunction_af
.Lx16_0:
                        mov              rdi, qword ptr [rbp + 192]                     # a
                        mov              rsi, qword ptr [rbp + 200]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 112]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx16_1
                        cmp              eax, 1
                                                                                        je    n6_var_α
                                                                                        jmp   n2_disjunction_af
.Lx16_2:
                        mov              rdi, qword ptr [rbp + 192]                     # lhs
                        mov              rsi, qword ptr [rbp + 200]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_var_α
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                                                                                        jmp   n7_var_α
n6_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n2_disjunction_as
n8_call_builtin_icon_β:
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
