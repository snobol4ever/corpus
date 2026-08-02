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
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_lit_integer_α
.Lx14_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n2_lit_integer_α
.Lx15_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n3_to_α
.Lx16_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
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
.Lx18_0:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx
                                                                                        jle   .Lx18_240
                        add              rsp, 208
                                                                                        jmp   n12_lit_string_α
.Lx18_240:
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n4_lit_integer_α
n3_to_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx18_0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n5_lit_integer_α
.Lx19_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n6_to_α
.Lx20_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:
                        mov              rdi, qword ptr [rbp + 288]                     # v
                        mov              rsi, qword ptr [rbp + 296]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 288], 3
                        mov              qword ptr [rbp + 296], rax
                        mov              rdi, qword ptr [rbp + 304]                     # v
                        mov              rsi, qword ptr [rbp + 312]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 304], 3
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 272], rax
.Lx22_0:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jg    n3_to_β
                        mov              qword ptr [rbp + 256], 3
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n7_coerce_numeric_α
n6_to_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx22_0
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 5
                                                                                        je    .Lx24_1
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
.Lx24_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n8_coerce_numeric_α
.Lx24_0:
                        lea              rdi, [rbp + 192]                               # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 176]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 5
                                                                                        je    .Lx26_1
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
.Lx26_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n9_binop_α
.Lx26_0:
                        lea              rdi, [rbp + 256]                               # self
                        lea              rsi, [rbp + 192]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 168]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n10_binop_test_α
.Lx27_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 208
                                                                                        jmp   n12_lit_string_α
.Lx27_240:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n10_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 112
                                                                                        je    .Lx28_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx28_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx28_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx28_2
.Lx28_1:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jle   n6_to_β
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rcx
                                                                                        jmp   n11_call_builtin_icon_α
.Lx28_0:
                        mov              rdi, qword ptr [rbp + 128]                     # a
                        mov              rsi, qword ptr [rbp + 136]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 112]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx28_1
                        cmp              eax, 1
                                                                                        je    n6_to_β
                                                                                        jmp   n11_call_builtin_icon_α
.Lx28_2:
                        mov              rdi, qword ptr [rbp + 128]                     # lhs
                        mov              rsi, qword ptr [rbp + 136]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_to_β
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn30:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]                          # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n6_to_β
                                                                                        jmp   n6_to_β
n11_call_builtin_icon_β:
                                                                                        jmp   n6_to_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 48], 2                        # result
                        mov              dword ptr [rbp + 52], 4
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn33:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n13_call_builtin_icon_β:
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
