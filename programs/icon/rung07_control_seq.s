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
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n1_lit_string_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx13_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_disjunction_α
.Lx13_0:
                                                                                        jmp   n6_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n6_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 5
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n2_lit_string_α
n1_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 5
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n3_binop_test_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              rdi, qword ptr [rbp + 256]                     # lhs
                        mov              rsi, qword ptr [rbp + 264]                     # lhs
                        mov              rdx, qword ptr [rbp + 272]                     # rhs
                        mov              rcx, qword ptr [rbp + 280]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 272]                     # d
                        mov              rsi, qword ptr [rbp + 280]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]                          # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n0_disjunction_as
n5_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n7_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx21_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx21_0:
                                                                                        jmp   main_ω
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n6_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 5
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n8_lit_string_α
n7_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 5
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n9_binop_test_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:
                        mov              rdi, qword ptr [rbp + 112]                     # lhs
                        mov              rsi, qword ptr [rbp + 120]                     # lhs
                        mov              rdx, qword ptr [rbp + 128]                     # rhs
                        mov              rcx, qword ptr [rbp + 136]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_disjunction_af
                        mov              rdi, qword ptr [rbp + 128]                     # d
                        mov              rsi, qword ptr [rbp + 136]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx25_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn27:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n6_disjunction_as
n11_call_builtin_icon_β:
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
