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
                        sub              rsp, 208
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
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1_lit_integer_α
.Lx12_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n2_lit_integer_α
.Lx13_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n3_to_α
.Lx14_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
                        mov              rdi, qword ptr [rbp + 160]                     # v
                        mov              rsi, qword ptr [rbp + 168]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lx16_0:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx
                                                                                        jle   .Lx16_240
                        add              rsp, 208
                                                                                        jmp   main_ω
.Lx16_240:
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_lit_integer_α
n3_to_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx16_0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n5_lit_integer_α
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n6_to_α
.Lx18_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:
                        mov              rdi, qword ptr [rbp + 224]                     # v
                        mov              rsi, qword ptr [rbp + 232]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax
                        mov              rdi, qword ptr [rbp + 240]                     # v
                        mov              rsi, qword ptr [rbp + 248]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 208], rax
.Lx20_0:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx
                                                                                        jg    n3_to_β
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_coerce_numeric_α
n6_to_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx20_0
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 5
                                                                                        je    .Lx22_1
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n8_coerce_numeric_α
.Lx22_0:
                        lea              rdi, [rbp + 128]                               # self
                        lea              rsi, [rbp + 192]                               # other
                        lea              rdx, [rbp + 112]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 5
                                                                                        je    .Lx24_1
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
.Lx24_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n9_binop_α
.Lx24_0:
                        lea              rdi, [rbp + 192]                               # self
                        lea              rsi, [rbp + 128]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, qword ptr [rbp + 104]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n10_binop_test_α
.Lx25_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 208
                                                                                        jmp   main_ω
.Lx25_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n10_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 112
                                                                                        je    .Lx26_0
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 112
                                                                                        je    .Lx26_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx26_2
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx26_2
.Lx26_1:
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jge   n6_to_β
                        mov              rcx, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rcx
                        mov              rcx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rcx
                                                                                        jmp   n11_call_builtin_icon_α
.Lx26_0:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 80]                      # b
                        mov              rcx, qword ptr [rbp + 88]                      # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 48]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx26_1
                        cmp              eax, 1
                                                                                        je    n6_to_β
                                                                                        jmp   n11_call_builtin_icon_α
.Lx26_2:
                        mov              rdi, qword ptr [rbp + 64]                      # lhs
                        mov              rsi, qword ptr [rbp + 72]                      # lhs
                        mov              rdx, qword ptr [rbp + 80]                      # rhs
                        mov              rcx, qword ptr [rbp + 88]                      # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_to_β
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn28:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n6_to_β
                                                                                        jmp   n6_to_β
n11_call_builtin_icon_β:
                                                                                        jmp   n6_to_β
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
