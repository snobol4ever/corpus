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
                        sub              rsp, 256
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
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1_assign_α
.Lx11_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
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
                                                                                        jne   .Lx14_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx14_0:
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
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n4_lit_integer_α
n3_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n5_binop_test_α
.Lx17_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
.Lx18_1:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jle   n2_disjunction_af
                        mov              rcx, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n6_lit_string_α
.Lx18_0:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 208]                     # b
                        mov              rcx, qword ptr [rbp + 216]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 176]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx18_1
                        cmp              eax, 1
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n6_lit_string_α
.Lx18_2:
                        mov              rdi, qword ptr [rbp + 256]                     # lhs
                        mov              rsi, qword ptr [rbp + 264]                     # lhs
                        mov              rdx, qword ptr [rbp + 208]                     # rhs
                        mov              rcx, qword ptr [rbp + 216]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n2_disjunction_af
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 3
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "big"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]                          # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n8_var_α
                                                                                        jmp   n8_var_α
n7_call_builtin_icon_β:
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n10_conjunction_α
n9_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_conjunction_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n2_disjunction_as
n10_conjunction_β:
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
