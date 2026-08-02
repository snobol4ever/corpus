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
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n11_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx13_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        cmp              eax, 1
                                                                                        jne   .Lx13_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_assign_α
.Lx13_1:
                        cmp              eax, 2
                                                                                        jne   .Lx13_2
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_assign_α
.Lx13_2:
                        cmp              eax, 3
                                                                                        jne   .Lx13_3
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_assign_α
.Lx13_3:
                        cmp              eax, 4
                                                                                        jne   .Lx13_4
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_assign_α
.Lx13_4:
                                                                                        jmp   n1_assign_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                        cmp              eax, 2
                                                                                        je    n0_disjunction_af
                        cmp              eax, 3
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n10_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n9_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n8_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n7_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n3_binop_test_α
.Lx15_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 112
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx16_2
.Lx16_1:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx
                                                                                        jle   n0_disjunction_β
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rcx
                                                                                        jmp   n4_var_α
.Lx16_0:
                        mov              rdi, qword ptr [rbp + 96]                      # a
                        mov              rsi, qword ptr [rbp + 104]                     # a
                        mov              rdx, qword ptr [rbp + 224]                     # b
                        mov              rcx, qword ptr [rbp + 232]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 80]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx16_1
                        cmp              eax, 1
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n4_var_α
.Lx16_2:
                        mov              rdi, qword ptr [rbp + 96]                      # lhs
                        mov              rsi, qword ptr [rbp + 104]                     # lhs
                        mov              rdx, qword ptr [rbp + 224]                     # rhs
                        mov              rcx, qword ptr [rbp + 232]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_β
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]                          # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n6_conjunction_α
n5_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_conjunction_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n0_disjunction_β
n6_conjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n0_disjunction_as
n7_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx22_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n0_disjunction_as
n8_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx23_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n0_disjunction_as
n9_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx24_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n0_disjunction_as
n10_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx25_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n0_disjunction_as
n11_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx26_0:
                        .quad            1
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
