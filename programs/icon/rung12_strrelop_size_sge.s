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
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n1_lit_string_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx15_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_disjunction_α
.Lx15_0:
                                                                                        jmp   n6_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n6_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 3
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n2_lit_string_α
n1_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n3_binop_test_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              rdi, qword ptr [rbp + 320]                     # lhs
                        mov              rsi, qword ptr [rbp + 328]                     # lhs
                        mov              rdx, qword ptr [rbp + 336]                     # rhs
                        mov              rcx, qword ptr [rbp + 344]                     # rhs
                        mov              r8d, 15                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 336]                     # d
                        mov              rsi, qword ptr [rbp + 344]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "ge"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n0_disjunction_as
n5_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n7_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx23_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n12_lit_string_α
.Lx23_0:
                                                                                        jmp   n12_lit_string_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n12_lit_string_α
n6_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n8_lit_string_α
n7_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 3
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n9_binop_test_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:
                        mov              rdi, qword ptr [rbp + 176]                     # lhs
                        mov              rsi, qword ptr [rbp + 184]                     # lhs
                        mov              rdx, qword ptr [rbp + 192]                     # rhs
                        mov              rcx, qword ptr [rbp + 200]                     # rhs
                        mov              r8d, 15                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 4
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "nope"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]                          # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n6_disjunction_as
n11_call_builtin_icon_β:
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 48], 2                        # result
                        mov              dword ptr [rbp + 52], 4
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn32:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 288
                                                                                        jmp   main_ω
.Lx31_240:
                        add              rsp, 288
                                                                                        jmp   main_ω
n13_call_builtin_icon_β:
                        add              rsp, 288
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
