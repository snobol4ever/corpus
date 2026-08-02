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
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1_lit_integer_α
.Lx6_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n2_to_α
.Lx7_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lx9_0:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jle   .Lx9_240
                        add              rsp, 96
                                                                                        jmp   main_ω
.Lx9_240:
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n3_lit_integer_α
n2_to_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx9_0
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_binop_test_α
.Lx10_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 112
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx11_2
.Lx11_1:
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jle   n2_to_β
                        mov              rcx, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rcx
                        mov              rcx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rcx
                                                                                        jmp   n5_call_builtin_icon_α
.Lx11_0:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 128]                     # b
                        mov              rcx, qword ptr [rbp + 136]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 48]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx11_1
                        cmp              eax, 1
                                                                                        je    n2_to_β
                                                                                        jmp   n5_call_builtin_icon_α
.Lx11_2:
                        mov              rdi, qword ptr [rbp + 64]                      # lhs
                        mov              rsi, qword ptr [rbp + 72]                      # lhs
                        mov              rdx, qword ptr [rbp + 128]                     # rhs
                        mov              rcx, qword ptr [rbp + 136]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n2_to_β
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn13:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n2_to_β
                                                                                        jmp   n2_to_β
n5_call_builtin_icon_β:
                                                                                        jmp   n2_to_β
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
