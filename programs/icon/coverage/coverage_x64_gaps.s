                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "point(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "gcount"
.Lgvan1:                .string          "main__INITFLAG__0"
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
                        mov              qword ptr [rbp + 3648], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 5456], 0
                        mov              qword ptr [rbp + 5464], 0
                        mov              dword ptr [rbp + 5472], 0
                                                                                        jmp   n87_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 5472]
                        cmp              eax, 0
                                                                                        jne   .Lx116_0
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n1_lit_integer_α
.Lx116_0:
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 5472]
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_af:
                        add              dword ptr [rbp + 5472], 1
                        mov              eax, dword ptr [rbp + 5472]
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 5408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n2_lit_integer_α
.Lx117_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 5424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n3_lit_integer_α
.Lx118_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 5440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n4_make_list_α
.Lx119_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n4_make_list_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5400], rax
                        lea              rdi, [rbp + 5360]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 5344]
                        mov              rdx, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n7_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n7_iterate_α:
                        mov              qword ptr [rbp + 5312], 0
.Lx126_0:
                        mov              rdi, qword ptr [rbp + 5328]                    # obj
                        mov              rsi, qword ptr [rbp + 5336]                    # obj
                        mov              rdx, qword ptr [rbp + 5312]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx126_240
                        add              rsp, 10672
                                                                                        jmp   n9_lit_integer_α
.Lx126_240:
                                                                                        jmp   n8_call_builtin_icon_α
n7_iterate_β:
                        inc              qword ptr [rbp + 5312]
                                                                                        jmp   .Lx126_0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5272], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 5264]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              eax, 104
                                                                                        je    n7_iterate_β
                                                                                        jmp   n7_iterate_β
n8_call_builtin_icon_β:
                                                                                        jmp   n7_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n10_lit_integer_α
.Lx129_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 5024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n11_to_α
.Lx130_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n11_to_α:
                        mov              rdi, qword ptr [rbp + 5008]                    # v
                        mov              rsi, qword ptr [rbp + 5016]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5008], 3
                        mov              qword ptr [rbp + 5016], rax
                        mov              rdi, qword ptr [rbp + 5024]                    # v
                        mov              rsi, qword ptr [rbp + 5032]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5024], 3
                        mov              qword ptr [rbp + 5032], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4992], rax
.Lx132_0:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rcx, qword ptr [rbp + 5032]
                        cmp              rax, rcx
                                                                                        jg    n22_lit_integer_α
                        mov              qword ptr [rbp + 4976], 3
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n12_assign_α
n11_to_β:
                        inc              qword ptr [rbp + 4992]
                                                                                        jmp   .Lx132_0
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              rdx, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n13_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n13_bound_α:
                        mov              qword ptr [rbp + 5040], rsp
                                                                                        jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_disjunction_α:
                        mov              qword ptr [rbp + 5168], 0
                        mov              qword ptr [rbp + 5176], 0
                        mov              dword ptr [rbp + 5184], 0
                                                                                        jmp   n19_var_α
n14_disjunction_as:
                        mov              eax, dword ptr [rbp + 5184]
                        cmp              eax, 0
                                                                                        jne   .Lx137_0
                                                                                        jmp   n15_var_α
.Lx137_0:
                                                                                        jmp   n15_var_α
n14_disjunction_β:
                        mov              eax, dword ptr [rbp + 5184]
                                                                                        jmp   n15_var_α
n14_disjunction_af:
                        add              dword ptr [rbp + 5184], 1
                        mov              eax, dword ptr [rbp + 5184]
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5128], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]                         # fn
                        lea              rsi, [rbp + 5120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 104
                                                                                        je    n18_unmark_α
                                                                                        jmp   n17_conjunction_α
n16_call_builtin_icon_β:
                                                                                        jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_conjunction_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n18_unmark_α
n17_conjunction_β:
                                                                                        jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:
                        mov              rsp, qword ptr [rbp + 5040]
                                                                                        jmp   n11_to_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n20_lit_integer_α
n19_var_β:
                                                                                        jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n21_binop_test_α
.Lx147_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 112
                                                                                        je    .Lx148_0
                        mov              eax, dword ptr [rbp + 5232]
                        cmp              eax, 112
                                                                                        je    .Lx148_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 3
                                                                                        jne   .Lx148_2
                        mov              eax, dword ptr [rbp + 5232]
                        cmp              eax, 3
                                                                                        jne   .Lx148_2
.Lx148_1:
                        mov              rax, qword ptr [rbp + 5672]
                        mov              rcx, qword ptr [rbp + 5240]
                        cmp              rax, rcx
                                                                                        jne   n14_disjunction_af
                        mov              rcx, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rcx
                        mov              rcx, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rcx
                                                                                        jmp   n22_lit_integer_α
.Lx148_0:
                        mov              rdi, qword ptr [rbp + 5664]                    # a
                        mov              rsi, qword ptr [rbp + 5672]                    # a
                        mov              rdx, qword ptr [rbp + 5232]                    # b
                        mov              rcx, qword ptr [rbp + 5240]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 5200]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx148_1
                        cmp              eax, 1
                                                                                        je    n14_disjunction_af
                                                                                        jmp   n22_lit_integer_α
.Lx148_2:
                        mov              rdi, qword ptr [rbp + 5664]                    # lhs
                        mov              rsi, qword ptr [rbp + 5672]                    # lhs
                        mov              rdx, qword ptr [rbp + 5232]                    # rhs
                        mov              rcx, qword ptr [rbp + 5240]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n14_disjunction_af
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 4960], 3                      # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n23_assign_α
.Lx149_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              rdx, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 4816], 3                      # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n26_call_builtin_α
.Lx153_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4936], rax
                        .section         .rodata
.Lrkfn155:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rbp + 4912]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 104
                                                                                        je    n30_lit_integer_α
                                                                                        jmp   n27_lit_string_α
n26_call_builtin_β:
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 4880], 2                      # result
                        mov              dword ptr [rbp + 4884], 3
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n28_call_builtin_icon_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4856], rax
                        .section         .rodata
.Lrkfn158:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]                         # fn
                        lea              rsi, [rbp + 4848]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              eax, 104
                                                                                        je    n39_lit_charset_α
                                                                                        jmp   n29_assign_α
n28_call_builtin_icon_β:
                                                                                        jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              rdx, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n31_call_builtin_α
.Lx160_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4792], rax
                        .section         .rodata
.Lrkfn162:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]                         # fn
                        lea              rsi, [rbp + 4768]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              eax, 104
                                                                                        je    n35_lit_string_α
                                                                                        jmp   n32_lit_string_α
n31_call_builtin_β:
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 4736], 2                      # result
                        mov              dword ptr [rbp + 4740], 3
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]                         # fn
                        lea              rsi, [rbp + 4704]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 104
                                                                                        je    n39_lit_charset_α
                                                                                        jmp   n34_assign_α
n33_call_builtin_icon_β:
                                                                                        jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 4656], 2                      # result
                        mov              dword ptr [rbp + 4660], 5
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "other"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        .section         .rodata
.Lrkfn169:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]                         # fn
                        lea              rsi, [rbp + 4624]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 104
                                                                                        je    n39_lit_charset_α
                                                                                        jmp   n37_assign_α
n36_call_builtin_icon_β:
                                                                                        jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_charset_α:
                        mov              qword ptr [rbp + 4560], 2                      # result
                        mov              dword ptr [rbp + 4564], -1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n40_assign_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              rdx, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n42_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unop_α:
                        mov              rdi, qword ptr [rbp + 5824]                    # a
                        mov              rsi, qword ptr [rbp + 5832]                    # a
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:
                        mov              rdi, qword ptr [rbp + 4528]                    # lo
                        mov              rsi, qword ptr [rbp + 4536]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                                                                                        jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4488], rax
                        .section         .rodata
.Lrkfn180:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]                         # fn
                        lea              rsi, [rbp + 4480]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 104
                                                                                        je    n45_lit_charset_α
                                                                                        jmp   n45_lit_charset_α
n44_call_builtin_icon_β:
                                                                                        jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_charset_α:
                        mov              qword ptr [rbp + 4448], 2                      # result
                        mov              dword ptr [rbp + 4452], -1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n46_assign_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                                                                                        jmp   n47_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_charset_α:
                        mov              qword ptr [rbp + 4432], 2                      # result
                        mov              dword ptr [rbp + 4436], -1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n48_assign_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n51_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        mov              rdi, qword ptr [rbp + 4400]
                        mov              rsi, qword ptr [rbp + 4408]
                        mov              rdx, qword ptr [rbp + 4416]
                        mov              rcx, qword ptr [rbp + 4424]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n54_var_α
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   n52_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n52_unop_α:
                        mov              rdi, qword ptr [rbp + 4384]                    # lo
                        mov              rsi, qword ptr [rbp + 4392]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                                                                                        jmp   n53_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn192:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]                         # fn
                        lea              rsi, [rbp + 4336]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 104
                                                                                        je    n54_var_α
                                                                                        jmp   n54_var_α
n53_call_builtin_icon_β:
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        mov              rdi, qword ptr [rbp + 4288]
                        mov              rsi, qword ptr [rbp + 4296]
                        mov              rdx, qword ptr [rbp + 4304]
                        mov              rcx, qword ptr [rbp + 4312]
                        call             rt_cinter@PLT
                        cmp              eax, 104
                                                                                        je    n59_var_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n57_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:
                        mov              rdi, qword ptr [rbp + 4272]                    # lo
                        mov              rsi, qword ptr [rbp + 4280]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        .section         .rodata
.Lrkfn200:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]                         # fn
                        lea              rsi, [rbp + 4224]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 104
                                                                                        je    n59_var_α
                                                                                        jmp   n59_var_α
n58_call_builtin_icon_β:
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        mov              rdi, qword ptr [rbp + 4176]
                        mov              rsi, qword ptr [rbp + 4184]
                        mov              rdx, qword ptr [rbp + 4192]
                        mov              rcx, qword ptr [rbp + 4200]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n64_lit_integer_α
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   n62_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_unop_α:
                        mov              rdi, qword ptr [rbp + 4160]                    # lo
                        mov              rsi, qword ptr [rbp + 4168]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n63_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn208:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]                         # fn
                        lea              rsi, [rbp + 4112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 104
                                                                                        je    n64_lit_integer_α
                                                                                        jmp   n64_lit_integer_α
n63_call_builtin_icon_β:
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 3                      # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n65_lit_integer_α
.Lx209_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n66_call_α
.Lx210_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4040], rax
                        .section         .rodata
.Lrkfn212:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]                         # fn
                        lea              rsi, [rbp + 4016]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 104
                                                                                        je    n68_var_α
                                                                                        jmp   n67_assign_α
n66_call_β:
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n69_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n69_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx216_0]                # fname
                        mov              rsi, qword ptr [rbp + 3984]                    # obj
                        mov              rdx, qword ptr [rbp + 3992]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n71_lit_string_α
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n70_call_builtin_icon_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rbp + 3936]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 104
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n71_lit_string_α
n70_call_builtin_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 3904], 2                      # result
                        mov              dword ptr [rbp + 3908], 5
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n72_assign_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              rdx, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              rdx, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                                                                                        jmp   n75_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_disjunction_α:
                        mov              qword ptr [rbp + 3744], 0
                        mov              qword ptr [rbp + 3752], 0
                        mov              dword ptr [rbp + 3760], 0
                                                                                        jmp   n76_var_α
n75_disjunction_as:
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 0
                                                                                        jne   .Lx225_0
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n81_lit_integer_α
.Lx225_0:
                                                                                        jmp   n81_lit_integer_α
n75_disjunction_β:
                        mov              eax, dword ptr [rbp + 3760]
                                                                                        jmp   n81_lit_integer_α
n75_disjunction_af:
                        add              dword ptr [rbp + 3760], 1
                        mov              eax, dword ptr [rbp + 3760]
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n77_var_α
n76_var_β:
                                                                                        jmp   n75_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n78_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_test_α:
                        mov              rdi, qword ptr [rbp + 5744]                    # lhs
                        mov              rsi, qword ptr [rbp + 5752]                    # lhs
                        mov              rdx, qword ptr [rbp + 5760]                    # rhs
                        mov              rcx, qword ptr [rbp + 5768]                    # rhs
                        mov              r8d, 22                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n75_disjunction_af
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 3824], 2                      # result
                        mov              dword ptr [rbp + 3828], 4
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n80_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "same"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]                         # fn
                        lea              rsi, [rbp + 3792]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 104
                                                                                        je    n81_lit_integer_α
                                                                                        jmp   n75_disjunction_as
n80_call_builtin_icon_β:
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n82_lit_integer_α
.Lx234_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n83_lit_integer_α
.Lx235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n84_to_α
.Lx236_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:
                        mov              rdi, qword ptr [rbp + 3712]                    # v
                        mov              rsi, qword ptr [rbp + 3720]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3712], 3
                        mov              qword ptr [rbp + 3720], rax
                        mov              rdi, qword ptr [rbp + 3728]                    # v
                        mov              rsi, qword ptr [rbp + 3736]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3728], 3
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3696], rax
.Lx238_0:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3736]
                        cmp              rax, rcx
                                                                                        jg    n93_lit_integer_α
                        mov              qword ptr [rbp + 3680], 3
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n85_limit_α
n84_to_β:
                        inc              qword ptr [rbp + 3696]
                                                                                        jmp   .Lx238_0
#-----------------------------------------------------------------------------------------------------------------------
n85_limit_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              rcx, qword ptr [rbp + 3672]
                        cmp              rax, rcx
                                                                                        jge   n93_lit_integer_α
                        inc              qword ptr [rbp + 3648]
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n86_call_builtin_icon_α
n85_limit_β:
                                                                                        jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn242:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]                         # fn
                        lea              rsi, [rbp + 3600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 104
                                                                                        je    n84_to_β
                                                                                        jmp   n84_to_β
n86_call_builtin_icon_β:
                                                                                        jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # main__INITFLAG__0
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                                                                                        jmp   n88_nulltest_var_α
n87_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 5520]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 5520]                    # d
                        mov              rsi, qword ptr [rbp + 5528]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 5568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n90_assign_var_α
.Lx246_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_var_α:
                        mov              rdi, qword ptr [rbp + 5536]                    # var
                        mov              rsi, qword ptr [rbp + 5544]                    # var
                        mov              rdx, qword ptr [rbp + 5568]                    # val
                        mov              rcx, qword ptr [rbp + 5576]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 5504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n92_assign_α
.Lx248_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rbp + 5504]
                        mov              rdx, qword ptr [rbp + 5512]
                        mov              qword ptr [1879052288], rax                    # gcount
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n0_disjunction_as
n92_assign_β:
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 3536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n94_lit_integer_α
.Lx250_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n95_lit_integer_α
.Lx251_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n96_make_list_α
.Lx252_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n96_make_list_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3488]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n99_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n99_unop_α:
                        mov              rdi, qword ptr [rbp + 5728]                    # lo
                        mov              rsi, qword ptr [rbp + 5736]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n100_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn260:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rbp + 3408]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n101_lit_integer_α
                                                                                        jmp   n101_lit_integer_α
n100_call_builtin_icon_β:
                                                                                        jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n102_lit_integer_α
.Lx261_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n103_to_α
.Lx262_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n103_to_α:
                        mov              rdi, qword ptr [rbp + 3152]                    # v
                        mov              rsi, qword ptr [rbp + 3160]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3152], 3
                        mov              qword ptr [rbp + 3160], rax
                        mov              rdi, qword ptr [rbp + 3168]                    # v
                        mov              rsi, qword ptr [rbp + 3176]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3168], 3
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3136], rax
.Lx264_0:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rcx, qword ptr [rbp + 3176]
                        cmp              rax, rcx
                                                                                        jg    main_ω
                        mov              qword ptr [rbp + 3120], 3
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n104_assign_α
n103_to_β:
                        inc              qword ptr [rbp + 3136]
                                                                                        jmp   .Lx264_0
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n105_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n105_bound_α:
                        mov              qword ptr [rbp + 3184], rsp
                                                                                        jmp   n106_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n106_disjunction_α:
                        mov              qword ptr [rbp + 3312], 0
                        mov              qword ptr [rbp + 3320], 0
                        mov              dword ptr [rbp + 3328], 0
                                                                                        jmp   n110_var_α
n106_disjunction_as:
                        mov              eax, dword ptr [rbp + 3328]
                        cmp              eax, 0
                                                                                        jne   .Lx269_0
                                                                                        jmp   n107_var_α
.Lx269_0:
                                                                                        jmp   n107_var_α
n106_disjunction_β:
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n107_var_α
n106_disjunction_af:
                        add              dword ptr [rbp + 3328], 1
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n108_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn273:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]                         # fn
                        lea              rsi, [rbp + 3264]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n113_unmark_α
                                                                                        jmp   n109_conjunction_α
n108_call_builtin_icon_β:
                                                                                        jmp   n113_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n109_conjunction_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n113_unmark_α
n109_conjunction_β:
                                                                                        jmp   n113_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n111_lit_integer_α
n110_var_β:
                                                                                        jmp   n106_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n112_binop_test_α
.Lx277_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_test_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 112
                                                                                        je    .Lx278_0
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 112
                                                                                        je    .Lx278_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 3
                                                                                        jne   .Lx278_2
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 3
                                                                                        jne   .Lx278_2
.Lx278_1:
                        mov              rax, qword ptr [rbp + 5672]
                        mov              rcx, qword ptr [rbp + 3384]
                        cmp              rax, rcx
                                                                                        jne   n106_disjunction_af
                        mov              rcx, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rcx
                        mov              rcx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rcx
                                                                                        jmp   n113_unmark_α
.Lx278_0:
                        mov              rdi, qword ptr [rbp + 5664]                    # a
                        mov              rsi, qword ptr [rbp + 5672]                    # a
                        mov              rdx, qword ptr [rbp + 3376]                    # b
                        mov              rcx, qword ptr [rbp + 3384]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 3344]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx278_1
                        cmp              eax, 1
                                                                                        je    n106_disjunction_af
                                                                                        jmp   n113_unmark_α
.Lx278_2:
                        mov              rdi, qword ptr [rbp + 5664]                    # lhs
                        mov              rsi, qword ptr [rbp + 5672]                    # lhs
                        mov              rdx, qword ptr [rbp + 3376]                    # rhs
                        mov              rcx, qword ptr [rbp + 3384]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n106_disjunction_af
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n113_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n113_unmark_α:
                        mov              rsp, qword ptr [rbp + 3184]
                                                                                        jmp   n103_to_β
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
