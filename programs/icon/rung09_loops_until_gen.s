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
                        sub              rsp, 224
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
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 5
                                                                                        je    .Lx19_1
                        cmp              eax, 3
                                                                                        jne   .Lx19_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx19_0
.Lx19_1:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n5_binop_α
.Lx19_0:
                        lea              rdi, [rsp + 272]                               # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx20_0
                        mov              rax, qword ptr [rsp + 72]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n6_assign_α
.Lx20_0:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx20_240
                        add              rsp, 224
                                                                                        jmp   n11_var_α
.Lx20_240:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n8_binop_test_α
.Lx22_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_test_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx23_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 112
                                                                                        je    .Lx23_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx23_2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx23_2
.Lx23_1:
                        mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx
                                                                                        jg    .Lx23_238
                        add              rsp, 224
                                                                                        jmp   n11_var_α
.Lx23_238:
                        mov              rcx, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rcx
                                                                                        jmp   n9_var_α
.Lx23_0:
                        mov              rdi, qword ptr [rsp + 32]                      # a
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 112]                     # b
                        mov              rcx, qword ptr [rsp + 120]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rsp + 16]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx23_1
                        cmp              eax, 1
                                                                                        jne   .Lx23_239
                        add              rsp, 224
                                                                                        jmp   n11_var_α
.Lx23_239:
                                                                                        jmp   n9_var_α
.Lx23_2:
                        mov              rdi, qword ptr [rsp + 32]                      # lhs
                        mov              rsi, qword ptr [rsp + 40]                      # lhs
                        mov              rdx, qword ptr [rsp + 112]                     # rhs
                        mov              rcx, qword ptr [rsp + 120]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx23_240
                        add              rsp, 224
                                                                                        jmp   n11_var_α
.Lx23_240:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn27:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx26_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx26_240:
                        add              rsp, 224
                                                                                        jmp   main_ω
n10_call_builtin_icon_β:
                        add              rsp, 224
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]                          # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n2_var_α
                                                                                        jmp   n2_var_α
n12_call_builtin_icon_β:
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
