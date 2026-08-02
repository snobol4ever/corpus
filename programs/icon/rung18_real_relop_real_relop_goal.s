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
n0_lit_real_α:
                        sub              rsp, 112
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
                        mov              qword ptr [rbp + 64], 5                        # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1_disjunction_α
.Lx7_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n6_lit_real_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx9_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n2_binop_test_α
.Lx9_0:
                        cmp              eax, 1
                                                                                        jne   .Lx9_1
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n2_binop_test_α
.Lx9_1:
                        cmp              eax, 2
                                                                                        jne   .Lx9_2
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n2_binop_test_α
.Lx9_2:
                                                                                        jmp   n2_binop_test_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n5_lit_real_α
                        cmp              eax, 2
                                                                                        je    n4_lit_real_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:
                        mov              rdi, qword ptr [rbp + 64]                      # lhs
                        mov              rsi, qword ptr [rbp + 72]                      # lhs
                        mov              rdx, qword ptr [rbp + 80]                      # rhs
                        mov              rcx, qword ptr [rbp + 88]                      # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1_disjunction_β
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn12:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn12]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n1_disjunction_β
n3_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_real_α:
                        mov              qword ptr [rbp + 144], 5                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx13_0:
                        .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_real_α:
                        mov              qword ptr [rbp + 128], 5                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_disjunction_as
n5_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx14_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_real_α:
                        mov              qword ptr [rbp + 112], 5                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_disjunction_as
n6_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx15_0:
                        .quad            4612811918334230528
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
