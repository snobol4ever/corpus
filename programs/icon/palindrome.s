                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_palindrome_α
proc_palindrome_α:
proc_palindrome_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 528
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
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn39:               .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]                          # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n4_assign_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n6_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n10_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 112
                                                                                        je    .Lx51_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 112
                                                                                        je    .Lx51_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx51_2
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx51_2
.Lx51_1:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jl    .Lx51_238
                        add              rsp, 528
                                                                                        jmp   n34_lit_string_α
.Lx51_238:
                        mov              rcx, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 48], rcx
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 56], rcx
                                                                                        jmp   n11_disjunction_α
.Lx51_0:
                        mov              rdi, qword ptr [rbp + 576]                     # a
                        mov              rsi, qword ptr [rbp + 584]                     # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 48]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx51_1
                        cmp              eax, 1
                                                                                        jne   .Lx51_239
                        add              rsp, 528
                                                                                        jmp   n34_lit_string_α
.Lx51_239:
                                                                                        jmp   n11_disjunction_α
.Lx51_2:
                        mov              rdi, qword ptr [rbp + 576]                     # lhs
                        mov              rsi, qword ptr [rbp + 584]                     # lhs
                        mov              rdx, qword ptr [rbp + 592]                     # rhs
                        mov              rcx, qword ptr [rbp + 600]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx51_240
                        add              rsp, 528
                                                                                        jmp   n34_lit_string_α
.Lx51_240:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n23_var_ref_α
n11_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx53_0
                                                                                        jmp   n12_var_α
.Lx53_0:
                                                                                        jmp   n12_var_α
n11_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n12_var_α
n11_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n14_coerce_numeric_α
.Lx56_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx58_1
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
.Lx58_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n15_binop_α
.Lx58_0:
                        lea              rdi, [rbp + 576]                               # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx59_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n16_assign_α
.Lx59_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n17_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n19_coerce_numeric_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx65_1
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n20_binop_α
.Lx65_0:
                        lea              rdi, [rbp + 592]                               # self
                        lea              rsi, [rbp + 176]                               # other
                        lea              rdx, [rbp + 144]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx66_0
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n21_assign_α
.Lx66_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n21_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n22_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_conjunction_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n8_var_α
n22_conjunction_β:
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n24_var_α
n23_var_ref_β:
                                                                                        jmp   n11_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n25_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]                     # base
                        mov              rsi, qword ptr [rbp + 344]                     # base
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        mov              rcx, qword ptr [rbp + 360]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n11_disjunction_af
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n26_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:
                        mov              rdi, qword ptr [rbp + 368]                     # d
                        mov              rsi, qword ptr [rbp + 376]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n11_disjunction_af
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n29_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n29_subscript_α:
                        mov              rdi, qword ptr [rbp + 400]                     # base
                        mov              rsi, qword ptr [rbp + 408]                     # base
                        mov              rdx, qword ptr [rbp + 416]                     # idx
                        mov              rcx, qword ptr [rbp + 424]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n11_disjunction_af
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n30_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:
                        mov              rdi, qword ptr [rbp + 432]                     # d
                        mov              rsi, qword ptr [rbp + 440]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n11_disjunction_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n31_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:
                        mov              rdi, qword ptr [rbp + 384]                     # lhs
                        mov              rsi, qword ptr [rbp + 392]                     # lhs
                        mov              rdx, qword ptr [rbp + 448]                     # rhs
                        mov              rcx, qword ptr [rbp + 456]                     # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n11_disjunction_af
                        mov              rdi, qword ptr [rbp + 448]                     # d
                        mov              rsi, qword ptr [rbp + 456]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n33_return_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n33_return_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_palindrome_γ
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 32], 2                        # result
                        mov              dword ptr [rbp + 36], 3
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n35_return_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n35_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_palindrome_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_palindrome_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_palindrome_β:
                                                                                        jmp   proc_palindrome_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_palindrome_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_palindrome_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_palindrome_dcα:
                        pop              r11
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 624], r11
                        lea              rax, [rip + .Lx86_2]
                        mov              qword ptr [rbp + 632], rax
                        lea              rax, [rip + .Lx86_3]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 576                                       # suffix_off
                        mov              edx, 624                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_palindrome_α_body
.Lx86_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -656
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx86_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -656
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "palindrome"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_palindrome_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_palindrome_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
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
                        mov              qword ptr [rsp + 224], 2                       # result
                        mov              dword ptr [rsp + 228], 7
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n88_call_proc_staged_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "racecar"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α:
                        lea              rsi, [rsp + 224]
                        call             proc_palindrome_dcα
                                                                                        jmp   .Lx98_2
.Lx98_2:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n89_call_builtin_icon_α
n88_call_proc_staged_β:
                                                                                        jmp   n90_lit_string_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn100:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]                         # fn
                        lea              rsi, [rsp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 112], 2                       # result
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n91_call_proc_staged_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        lea              rsi, [rsp + 112]
                        call             proc_palindrome_dcα
                                                                                        jmp   .Lx103_2
.Lx103_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n92_call_builtin_icon_α
n91_call_proc_staged_β:
                                                                                        jmp   n93_lit_string_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn105:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]                         # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_call_proc_staged_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_palindrome_dcα
                                                                                        jmp   .Lx108_2
.Lx108_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx108_240
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx108_240:
                                                                                        jmp   n95_call_builtin_icon_α
n94_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn110:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]                         # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx109_240:
                        add              rsp, 240
                                                                                        jmp   main_ω
n95_call_builtin_icon_β:
                        add              rsp, 240
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
