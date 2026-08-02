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
                        sub              rsp, 96
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
                        mov              qword ptr [rsp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n1_lit_integer_α
.Lx7_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rsp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n2_binop_test_α
.Lx8_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 112
                                                                                        je    .Lx9_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 112
                                                                                        je    .Lx9_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx9_2
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx9_2
.Lx9_1:
                        mov              rax, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx
                                                                                        jle   n5_lit_string_α
                        mov              rcx, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rcx
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rcx
                                                                                        jmp   n3_unop_test_α
.Lx9_0:
                        mov              rdi, qword ptr [rsp + 64]                      # a
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 80]                      # b
                        mov              rcx, qword ptr [rsp + 88]                      # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rsp + 48]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx9_1
                        cmp              eax, 1
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n3_unop_test_α
.Lx9_2:
                        mov              rdi, qword ptr [rsp + 64]                      # lhs
                        mov              rsi, qword ptr [rsp + 72]                      # lhs
                        mov              rdx, qword ptr [rsp + 80]                      # rhs
                        mov              rcx, qword ptr [rsp + 88]                      # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n5_lit_string_α
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n3_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_test_α:
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 104
                                                                                        je    n5_lit_string_α
                        cmp              eax, 0
                                                                                        jne   n5_lit_string_α
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_call_builtin_icon_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx13_240
                        add              rsp, 96
                                                                                        jmp   main_ω
.Lx13_240:
                        add              rsp, 96
                                                                                        jmp   main_ω
n6_call_builtin_icon_β:
                        add              rsp, 96
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
