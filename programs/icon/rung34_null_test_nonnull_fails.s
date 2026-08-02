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
                                                                                        jmp   n3_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx10_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx10_0:
                        cmp              eax, 1
                                                                                        jne   .Lx10_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx10_1:
                                                                                        jmp   main_ω
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n0_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 1
                                                                                        je    n1_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 2
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n2_call_builtin_icon_α
n1_lit_string_β:
                                                                                        jmp   main_ω
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn13:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n0_disjunction_as
n2_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_lit_integer_α
n3_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx14_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n5_binop_test_α
.Lx15_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
.Lx16_1:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jle   n0_disjunction_af
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rcx
                                                                                        jmp   n6_unop_test_α
.Lx16_0:
                        mov              rdi, qword ptr [rbp + 128]                     # a
                        mov              rsi, qword ptr [rbp + 136]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 112]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx16_1
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n6_unop_test_α
.Lx16_2:
                        mov              rdi, qword ptr [rbp + 128]                     # lhs
                        mov              rsi, qword ptr [rbp + 136]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n6_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 3
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_call_builtin_icon_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n0_disjunction_as
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
