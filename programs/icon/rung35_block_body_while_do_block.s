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
                        sub              rsp, 240
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
                        mov              qword ptr [rsp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 32], 3                        # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n4_binop_test_α
.Lx17_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx18_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx18_2
.Lx18_1:
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx
                                                                                        jle   .Lx18_238
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx18_238:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rcx
                                                                                        jmp   n5_var_α
.Lx18_0:
                        mov              rdi, qword ptr [rsp + 240]                     # a
                        mov              rsi, qword ptr [rsp + 248]                     # a
                        mov              rdx, qword ptr [rsp + 32]                      # b
                        mov              rcx, qword ptr [rsp + 40]                      # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rsp + 0]                                  # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx18_1
                        cmp              eax, 1
                                                                                        jne   .Lx18_239
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx18_239:
                                                                                        jmp   n5_var_α
.Lx18_2:
                        mov              rdi, qword ptr [rsp + 240]                     # lhs
                        mov              rsi, qword ptr [rsp + 248]                     # lhs
                        mov              rdx, qword ptr [rsp + 32]                      # rhs
                        mov              rcx, qword ptr [rsp + 40]                      # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx18_240
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx18_240:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn22:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]                          # fn
                        lea              rsi, [rsp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n7_var_α
                                                                                        jmp   n7_var_α
n6_call_builtin_icon_β:
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx25_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx27_1
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n10_binop_α
.Lx27_0:
                        lea              rdi, [rsp + 240]                               # self
                        lea              rsi, [rsp + 128]                               # other
                        lea              rdx, [rsp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx28_0
                        mov              rax, qword ptr [rsp + 104]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n11_assign_α
.Lx28_0:
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n2_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n12_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_conjunction_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n2_var_α
n12_conjunction_β:
                                                                                        jmp   n2_var_α
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
