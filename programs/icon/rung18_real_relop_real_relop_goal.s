                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 168
                        mov              rdi, rsp
                        mov              ecx, 168
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 160], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_real_α:
                        mov              qword ptr [rbp + 64], 7
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
                                                                                        jmp   n3_lit_real_α
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
                                                                                        je    n4_lit_real_α
                        cmp              eax, 2
                                                                                        je    n5_lit_real_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1_disjunction_β
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_real_α:
                        mov              qword ptr [rbp + 112], 7
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1_disjunction_as
n3_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx11_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_real_α:
                        mov              qword ptr [rbp + 128], 7
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx12_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_real_α:
                        mov              qword ptr [rbp + 144], 7
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_disjunction_as
n5_lit_real_β:
                                                                                        jmp   n1_disjunction_af
.Lx13_0:
                        .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn15:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n1_disjunction_β
n6_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 160]
                        add              rsp, 168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 160]
                        add              rsp, 168
                        ret
                        .section         .note.GNU-stack,"",@progbits
