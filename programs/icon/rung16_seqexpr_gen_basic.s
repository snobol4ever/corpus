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
                        sub              rsp, 192
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
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1_assign_α
.Lx14_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx18_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 5
                                                                                        je    .Lx20_1
                        cmp              eax, 3
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx20_0
.Lx20_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n5_binop_α
.Lx20_0:
                        lea              rdi, [rbp + 256]                               # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx21_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n6_assign_α
.Lx21_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n7_disjunction_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n11_lit_string_α
n7_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx24_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_conjunction_α
.Lx24_0:
                        cmp              eax, 1
                                                                                        jne   .Lx24_1
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_conjunction_α
.Lx24_1:
                        cmp              eax, 2
                                                                                        jne   .Lx24_2
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_conjunction_α
.Lx24_2:
                                                                                        jmp   n8_conjunction_α
n7_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n7_disjunction_af
                        cmp              eax, 1
                                                                                        je    n7_disjunction_af
                                                                                        jmp   n7_disjunction_af
n7_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n10_lit_string_α
                        cmp              eax, 2
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n7_disjunction_β
n8_conjunction_β:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n7_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n7_disjunction_af
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n7_disjunction_as
n10_lit_string_β:
                                                                                        jmp   n7_disjunction_af
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n7_disjunction_as
n11_lit_string_β:
                                                                                        jmp   n7_disjunction_af
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n13_call_builtin_icon_α
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
