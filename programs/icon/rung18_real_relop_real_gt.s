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
                                                                                        jmp   n3_lit_real_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx9_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx9_0:
                        cmp              eax, 1
                                                                                        jne   .Lx9_1
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx9_1:
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
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n2_call_builtin_icon_α
n1_lit_string_β:
                                                                                        jmp   main_ω
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn12:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn12]                          # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n0_disjunction_as
n2_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_real_α:
                        mov              qword ptr [rbp + 112], 5                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n4_lit_real_α
n3_lit_real_β:
                                                                                        jmp   n0_disjunction_af
.Lx13_0:
                        .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_real_α:
                        mov              qword ptr [rbp + 128], 5                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n5_binop_test_α
.Lx14_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:
                        mov              rdi, qword ptr [rbp + 112]                     # lhs
                        mov              rsi, qword ptr [rbp + 120]                     # lhs
                        mov              rdx, qword ptr [rbp + 128]                     # rhs
                        mov              rcx, qword ptr [rbp + 136]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "gt"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn18:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n0_disjunction_as
n7_call_builtin_icon_β:
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
