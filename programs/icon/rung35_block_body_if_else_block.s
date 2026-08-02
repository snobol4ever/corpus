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
                        sub              rsp, 320
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
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n8_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx16_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx16_0:
                        cmp              eax, 1
                                                                                        jne   .Lx16_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx16_1:
                                                                                        jmp   main_ω
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n2_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 1
                                                                                        je    n3_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 5
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_lit_string_β:
                                                                                        jmp   n5_var_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "small"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]                          # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n5_var_α
                                                                                        jmp   n5_var_α
n4_call_builtin_icon_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n7_conjunction_α
n6_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n2_disjunction_as
n7_conjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n9_lit_integer_α
n8_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_binop_test_α
.Lx27_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 112
                                                                                        je    .Lx28_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 112
                                                                                        je    .Lx28_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx28_2
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx28_2
.Lx28_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jle   n2_disjunction_af
                        mov              rcx, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rcx
                        mov              rcx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rcx
                                                                                        jmp   n11_lit_string_α
.Lx28_0:
                        mov              rdi, qword ptr [rbp + 320]                     # a
                        mov              rsi, qword ptr [rbp + 328]                     # a
                        mov              rdx, qword ptr [rbp + 128]                     # b
                        mov              rcx, qword ptr [rbp + 136]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 96]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx28_1
                        cmp              eax, 1
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n11_lit_string_α
.Lx28_2:
                        mov              rdi, qword ptr [rbp + 320]                     # lhs
                        mov              rsi, qword ptr [rbp + 328]                     # lhs
                        mov              rdx, qword ptr [rbp + 128]                     # rhs
                        mov              rcx, qword ptr [rbp + 136]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n2_disjunction_af
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 3
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n12_call_builtin_icon_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "big"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n2_disjunction_as
n12_call_builtin_icon_β:
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
