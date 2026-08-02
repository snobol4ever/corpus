                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_roman_α
proc_roman_α:
proc_roman_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   n32_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx49_0
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1_disjunction_α
.Lx49_0:
                                                                                        jmp   n1_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 704]
                                                                                        jmp   n1_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n28_var_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx51_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n2_lit_string_α
.Lx51_0:
                        cmp              eax, 1
                                                                                        jne   .Lx51_1
                                                                                        jmp   n2_lit_string_α
.Lx51_1:
                                                                                        jmp   n2_lit_string_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    proc_roman_ω
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 0
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n3_assign_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n5_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n5_iterate_α:
                        mov              qword ptr [rbp + 208], 0
.Lx57_0:
                        mov              rdi, qword ptr [rbp + 224]                     # obj
                        mov              rsi, qword ptr [rbp + 232]                     # obj
                        mov              rdx, qword ptr [rbp + 208]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx57_240
                        add              rsp, 6608
                                                                                        jmp   n22_disjunction_α
.Lx57_240:
                                                                                        jmp   n6_assign_α
n5_iterate_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx57_0
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n7_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n7_bound_α:
                        mov              qword ptr [rbp + 240], rsp
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 7
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n10_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 7
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn66:               .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n21_unmark_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_icon_β:
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # roman__STATIC__equiv
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n15_coerce_numeric_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 5
                                                                                        je    .Lx73_1
                        cmp              eax, 3
                                                                                        jne   .Lx73_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx73_0
.Lx73_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n16_binop_α
.Lx73_0:
                        lea              rdi, [rbp + 1152]                              # self
                        lea              rsi, [rbp + 496]                               # other
                        lea              rdx, [rbp + 464]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n16_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx74_0
                        mov              rax, qword ptr [rbp + 472]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n17_subscript_α
.Lx74_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n21_unmark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n17_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n17_subscript_α:
                        mov              rdi, qword ptr [rbp + 432]                     # base
                        mov              rsi, qword ptr [rbp + 440]                     # base
                        mov              rdx, qword ptr [rbp + 448]                     # idx
                        mov              rcx, qword ptr [rbp + 456]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n21_unmark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n18_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_deref_α:
                        mov              rdi, qword ptr [rbp + 512]                     # d
                        mov              rsi, qword ptr [rbp + 520]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n21_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 304]                     # a
                        mov              rsi, qword ptr [rbp + 312]                     # a
                        mov              rdx, qword ptr [rbp + 528]                     # b
                        mov              rcx, qword ptr [rbp + 536]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unmark_α:
                        mov              rsp, qword ptr [rbp + 240]
                                                                                        jmp   n5_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n25_lit_string_α
n22_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx82_0
                                                                                        jmp   proc_roman_ω
.Lx82_0:
                        cmp              eax, 1
                                                                                        jne   .Lx82_1
                                                                                        jmp   proc_roman_ω
.Lx82_1:
                                                                                        jmp   proc_roman_ω
n22_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_roman_ω
                                                                                        jmp   proc_roman_ω
n22_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n23_var_α
                                                                                        jmp   proc_roman_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n24_return_α
n23_var_β:
                                                                                        jmp   proc_roman_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_return_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_roman_γ
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n26_var_α
n25_lit_string_β:
                                                                                        jmp   n22_disjunction_af
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n27_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx89_60:
                        .section         .rodata
.Lbynamegenfn28:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn28]                   # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 112]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n22_disjunction_af
                                                                                        jmp   proc_roman_ω
n27_call_builtin_gen_β:
                                                                                        jmp   .Lx89_60
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n29_call_builtin_icon_α
n28_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn93:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]                          # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n30_lit_integer_α
n29_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n31_binop_test_α
.Lx94_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 112
                                                                                        je    .Lx95_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 112
                                                                                        je    .Lx95_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 3
                                                                                        jne   .Lx95_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 3
                                                                                        jne   .Lx95_2
.Lx95_1:
                        mov              rax, qword ptr [rbp + 616]
                        mov              rcx, qword ptr [rbp + 680]
                        cmp              rax, rcx
                                                                                        jle   n1_disjunction_af
                        mov              rcx, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n1_disjunction_as
.Lx95_0:
                        mov              rdi, qword ptr [rbp + 608]                     # a
                        mov              rsi, qword ptr [rbp + 616]                     # a
                        mov              rdx, qword ptr [rbp + 672]                     # b
                        mov              rcx, qword ptr [rbp + 680]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 592]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx95_1
                        cmp              eax, 1
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
.Lx95_2:
                        mov              rdi, qword ptr [rbp + 608]                     # lhs
                        mov              rsi, qword ptr [rbp + 616]                     # lhs
                        mov              rdx, qword ptr [rbp + 672]                     # rhs
                        mov              rcx, qword ptr [rbp + 680]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1_disjunction_as
n31_binop_test_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # roman__INITFLAG__0
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n33_nulltest_var_α
n32_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 1072]                    # d
                        mov              rsi, qword ptr [rbp + 1080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n35_assign_var_α
.Lx99_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # var
                        mov              rsi, qword ptr [rbp + 1096]                    # var
                        mov              rdx, qword ptr [rbp + 1120]                    # val
                        mov              rcx, qword ptr [rbp + 1128]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 0
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n37_lit_string_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n38_lit_string_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 2
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n39_lit_string_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "II"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 3
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n40_lit_string_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "III"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 2
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n41_lit_string_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "IV"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n42_lit_string_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "V"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n43_lit_string_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "VI"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n44_lit_string_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "VII"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n45_lit_string_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "VIII"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1056], 2                      # result
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n46_make_list_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "IX"
#-----------------------------------------------------------------------------------------------------------------------
n46_make_list_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 10
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052288], rax                    # roman__STATIC__equiv
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n0_disjunction_as
n47_assign_β:
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_roman_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_roman_β:
                                                                                        jmp   proc_roman_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_roman_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_roman_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_roman_dcα:
                        pop              r11
                        sub              rsp, 1232
                        mov              qword ptr [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1184], r11
                        lea              rax, [rip + .Lx114_2]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rax, [rip + .Lx114_3]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1136                                      # suffix_off
                        mov              edx, 1184                                      # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_roman_α_body
.Lx114_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1216
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx114_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1216
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "roman"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_roman_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_roman_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "roman__STATIC__equiv"
.Lgvan1:                .string          "roman__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
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
                        .section         .rodata
.Lrkfn123:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx122_240
                        add              rsp, 208
                                                                                        jmp   main_ω
.Lx122_240:
                                                                                        jmp   n116_assign_α
n115_call_builtin_icon_β:
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n117_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n120_var_α
n117_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx126_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n118_call_builtin_icon_α
.Lx126_0:
                        cmp              eax, 1
                                                                                        jne   .Lx126_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n118_call_builtin_icon_α
.Lx126_1:
                                                                                        jmp   n118_call_builtin_icon_α
n117_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n117_disjunction_af
                                                                                        jmp   n117_disjunction_af
n117_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n119_lit_string_α
                                                                                        jmp   n115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n117_disjunction_β
                                                                                        jmp   n115_call_builtin_icon_α
n118_call_builtin_icon_β:
                                                                                        jmp   n117_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 14
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n117_disjunction_as
n119_lit_string_β:
                                                                                        jmp   n117_disjunction_af
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "cannot convert"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n121_call_proc_staged_α
n120_var_β:
                                                                                        jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        call             proc_roman_dcα
                                                                                        jmp   .Lx133_2
.Lx133_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n117_disjunction_af
                                                                                        jmp   n117_disjunction_as
n121_call_proc_staged_β:
                                                                                        jmp   n117_disjunction_af
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "roman"
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
