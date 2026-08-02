                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ferr_α
proc_ferr_α:
proc_ferr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 448
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
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 0
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n1_assign_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n4_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n4_iterate_α:
                        mov              qword ptr [rbp + 1248], 0
.Lx62_0:
                        mov              rdi, qword ptr [rbp + 1264]                    # obj
                        mov              rsi, qword ptr [rbp + 1272]                    # obj
                        mov              rdx, qword ptr [rbp + 1248]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx62_240
                        add              rsp, 448
                                                                                        jmp   n10_var_α
.Lx62_240:
                                                                                        jmp   n5_call_builtin_icon_α
n4_iterate_β:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx62_0
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn64:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]                          # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n4_iterate_β
                                                                                        jmp   n6_lit_string_α
n5_call_builtin_icon_β:
                                                                                        jmp   n4_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n7_binop_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # a
                        mov              rsi, qword ptr [rbp + 1192]                    # a
                        mov              rdx, qword ptr [rbp + 1280]                    # b
                        mov              rcx, qword ptr [rbp + 1288]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # a
                        mov              rsi, qword ptr [rbp + 1336]                    # a
                        mov              rdx, qword ptr [rbp + 1168]                    # b
                        mov              rcx, qword ptr [rbp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n4_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n12_lit_integer_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n13_subscript_α
.Lx72_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # arr
                        mov              rsi, qword ptr [rbp + 1096]                    # arr
                        mov              rdx, qword ptr [rbp + 1104]                    # i
                        mov              rcx, qword ptr [rbp + 1112]                    # i
                        mov              r8, qword ptr [rbp + 1120]                     # j
                        mov              r9, qword ptr [rbp + 1128]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_string_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 8
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n16_var_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "oops -- "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn79:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]                          # fn
                        lea              rsi, [rbp + 976]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n26_lit_integer_α
                                                                                        jmp   n18_binop_α
n17_call_builtin_icon_β:
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              rdi, qword ptr [rbp + 944]                     # a
                        mov              rsi, qword ptr [rbp + 952]                     # a
                        mov              rdx, qword ptr [rbp + 960]                     # b
                        mov              rcx, qword ptr [rbp + 968]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n20_binop_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        mov              rdi, qword ptr [rbp + 928]                     # a
                        mov              rsi, qword ptr [rbp + 936]                     # a
                        mov              rdx, qword ptr [rbp + 1024]                    # b
                        mov              rcx, qword ptr [rbp + 1032]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rbp + 912]                     # a
                        mov              rsi, qword ptr [rbp + 920]                     # a
                        mov              rdx, qword ptr [rbp + 1328]                    # b
                        mov              rcx, qword ptr [rbp + 1336]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1056], 2                      # result
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n24_binop_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          ") "
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              rdi, qword ptr [rbp + 896]                     # a
                        mov              rsi, qword ptr [rbp + 904]                     # a
                        mov              rdx, qword ptr [rbp + 1056]                    # b
                        mov              rcx, qword ptr [rbp + 1064]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n27_keyword_assign_α
.Lx89_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 848]                     # v
                        mov              rsi, qword ptr [rbp + 856]                     # v
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 104
                                                                                        je    n28_disjunction_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n46_var_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx92_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n52_lit_integer_α
.Lx92_0:
                        cmp              eax, 1
                                                                                        jne   .Lx92_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n52_lit_integer_α
.Lx92_1:
                                                                                        jmp   n52_lit_integer_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n52_lit_integer_α
                                                                                        jmp   n29_disjunction_β
n28_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n29_disjunction_α
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n40_keyword_icon_α
n29_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx94_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n28_disjunction_as
.Lx94_0:
                        cmp              eax, 1
                                                                                        jne   .Lx94_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n28_disjunction_as
.Lx94_1:
                                                                                        jmp   n28_disjunction_as
n29_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n52_lit_integer_α
                                                                                        jmp   n30_disjunction_β
n29_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n30_disjunction_α
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n31_keyword_icon_α
n30_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx96_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n29_disjunction_as
.Lx96_0:
                                                                                        jmp   n29_disjunction_as
n30_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                                                                                        jmp   n52_lit_integer_α
n30_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx97_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n30_disjunction_af
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n32_var_α
n31_keyword_icon_β:
                                                                                        jmp   n30_disjunction_af
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n33_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_test_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 112
                                                                                        je    .Lx100_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx100_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 3
                                                                                        jne   .Lx100_2
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx100_2
.Lx100_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 24]
                        cmp              rax, rcx
                                                                                        je    n30_disjunction_af
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rcx
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rcx
                                                                                        jmp   n34_var_α
.Lx100_0:
                        mov              rdi, qword ptr [rbp + 784]                     # a
                        mov              rsi, qword ptr [rbp + 792]                     # a
                        mov              rdx, qword ptr [rbp + 16]                      # b
                        mov              rcx, qword ptr [rbp + 24]                      # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 768]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx100_1
                        cmp              eax, 1
                                                                                        je    n30_disjunction_af
                                                                                        jmp   n34_var_α
.Lx100_2:
                        mov              rdi, qword ptr [rbp + 784]                     # lhs
                        mov              rsi, qword ptr [rbp + 792]                     # lhs
                        mov              rdx, qword ptr [rbp + 16]                      # rhs
                        mov              rcx, qword ptr [rbp + 24]                      # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n30_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 10
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n36_keyword_icon_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "got error "
#-----------------------------------------------------------------------------------------------------------------------
n36_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx104_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n52_lit_integer_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n37_lit_string_α
n36_keyword_icon_β:
                                                                                        jmp   n52_lit_integer_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 12
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n38_var_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          " instead of "
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn109:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n52_lit_integer_α
                                                                                        jmp   n30_disjunction_as
n39_call_builtin_icon_β:
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx110_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n41_lit_integer_α
n40_keyword_icon_β:
                                                                                        jmp   n29_disjunction_af
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n42_binop_test_α
.Lx111_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_test_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 112
                                                                                        je    .Lx112_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 112
                                                                                        je    .Lx112_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx112_2
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx112_2
.Lx112_1:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx
                                                                                        je    n29_disjunction_af
                        mov              rcx, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rcx
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rcx
                                                                                        jmp   n43_var_α
.Lx112_0:
                        mov              rdi, qword ptr [rbp + 480]                     # a
                        mov              rsi, qword ptr [rbp + 488]                     # a
                        mov              rdx, qword ptr [rbp + 512]                     # b
                        mov              rcx, qword ptr [rbp + 520]                     # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 464]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx112_1
                        cmp              eax, 1
                                                                                        je    n29_disjunction_af
                                                                                        jmp   n43_var_α
.Lx112_2:
                        mov              rdi, qword ptr [rbp + 480]                     # lhs
                        mov              rsi, qword ptr [rbp + 488]                     # lhs
                        mov              rdx, qword ptr [rbp + 512]                     # rhs
                        mov              rcx, qword ptr [rbp + 520]                     # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n29_disjunction_af
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 19
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n45_call_builtin_icon_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "failed but no error"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn117:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n52_lit_integer_α
                                                                                        jmp   n29_disjunction_as
n45_call_builtin_icon_β:
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n47_var_α
n46_var_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n48_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_value_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              qword ptr [rbp + 272], 0
                        mov              rdi, qword ptr [rbp + 224]                     # callee
                        mov              rsi, qword ptr [rbp + 232]                     # callee
                        mov              rdx, qword ptr [rbp + 256]                     # lv
                        mov              rcx, qword ptr [rbp + 264]                     # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx123_7
                        lea              rcx, [rip + .Lx123_3]
                        lea              rdx, [rip + .Lx123_4]
                                                                                        jmp   rax
.Lx123_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx123_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx123_2
.Lx123_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx123_2
.Lx123_4:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx123_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx123_2
.Lx123_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx123_2
.Lx123_7:
                        mov              rdi, qword ptr [rbp + 224]                     # callee
                        mov              rsi, qword ptr [rbp + 232]                     # callee
                        mov              rdx, qword ptr [rbp + 256]                     # lv
                        mov              rcx, qword ptr [rbp + 264]                     # lv
                        lea              r8, [rbp + 272]                                # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx123_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n49_var_α
n48_call_value_β:
                        mov              rax, qword ptr [rbp + 272]
                        cmp              rax, 1
                                                                                        jne   .Lx123_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx123_8:
                        lea              rdi, [rbp + 272]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n49_var_α
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 9
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n52_lit_integer_α
                                                                                        jmp   n28_disjunction_as
n51_call_builtin_icon_β:
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n53_keyword_assign_α
.Lx129_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n53_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 104
                                                                                        je    n54_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n54_return_α
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_ferr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_β:
                                                                                        jmp   proc_ferr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_dcα:
                        pop              r11
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1360], r11
                        lea              rax, [rip + .Lx132_2]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rax, [rip + .Lx132_3]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1312                                      # suffix_off
                        mov              edx, 1360                                      # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ferr_α_body
.Lx132_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1392
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx132_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1392
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_endetab1_α
proc_endetab1_α:
proc_endetab1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        sub              rsp, 2240
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
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rbp + 2224]
                        call             proc_setup_dcα
                                                                                        jmp   .Lx219_2
.Lx219_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n135_assign_α
n134_call_proc_staged_β:
                                                                                        jmp   n136_call_builtin_icon_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn222:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx221_240
                        add              rsp, 2240
                                                                                        jmp   proc_endetab1_ω
.Lx221_240:
                                                                                        jmp   n137_call_proc_staged_α
n136_call_builtin_icon_β:
                        add              rsp, 2240
                                                                                        jmp   proc_endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        call             proc_escape_dcα
                                                                                        jmp   .Lx224_2
.Lx224_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx224_240
                        add              rsp, 2240
                                                                                        jmp   proc_endetab1_ω
.Lx224_240:
                                                                                        jmp   n138_assign_α
n137_call_proc_staged_β:
                                                                                        jmp   proc_endetab1_ω
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "escape"
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n139_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n208_var_ref_α
n139_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx227_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx227_0:
                        cmp              eax, 1
                                                                                        jne   .Lx227_1
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx227_1:
                                                                                        jmp   n136_call_builtin_icon_α
n139_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n154_disjunction_β
n139_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n140_var_α
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n141_lit_string_α
n140_var_β:
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 2144], 2                      # result
                        mov              dword ptr [rbp + 2148], 2
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n142_lit_string_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "!."
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 2160], 2                      # result
                        mov              dword ptr [rbp + 2164], 2
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n143_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn233:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]                         # fn
                        lea              rsi, [rbp + 2064]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n145_var_ref_α
                                                                                        jmp   n144_assign_α
n143_call_builtin_icon_β:
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 3                      # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n147_subscript_α
.Lx237_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:
                        mov              rdi, qword ptr [rbp + 1968]                    # base
                        mov              rsi, qword ptr [rbp + 1976]                    # base
                        mov              rdx, qword ptr [rbp + 1984]                    # idx
                        mov              rcx, qword ptr [rbp + 1992]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n150_lit_string_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n149_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2000]                    # var
                        mov              rsi, qword ptr [rbp + 2008]                    # var
                        mov              rdx, qword ptr [rbp + 2032]                    # val
                        mov              rcx, qword ptr [rbp + 2040]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n150_lit_string_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n151_var_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n152_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_value_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              qword ptr [rbp + 1904], 0
                        mov              rdi, qword ptr [rbp + 1856]                    # callee
                        mov              rsi, qword ptr [rbp + 1864]                    # callee
                        mov              rdx, qword ptr [rbp + 1888]                    # lv
                        mov              rcx, qword ptr [rbp + 1896]                    # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx246_7
                        lea              rcx, [rip + .Lx246_3]
                        lea              rdx, [rip + .Lx246_4]
                                                                                        jmp   rax
.Lx246_3:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx246_5
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx246_2
.Lx246_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx246_2
.Lx246_4:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx246_6
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx246_2
.Lx246_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx246_2
.Lx246_7:
                        mov              rdi, qword ptr [rbp + 1856]                    # callee
                        mov              rsi, qword ptr [rbp + 1864]                    # callee
                        mov              rdx, qword ptr [rbp + 1888]                    # lv
                        mov              rcx, qword ptr [rbp + 1896]                    # lv
                        lea              r8, [rbp + 1904]                               # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx246_2:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n154_disjunction_α
                                                                                        jmp   n153_assign_α
n152_call_value_β:
                        mov              rax, qword ptr [rbp + 1904]
                        cmp              rax, 1
                                                                                        jne   .Lx246_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1912]
                                                                                        jmp   qword ptr [rsp]
.Lx246_8:
                        lea              rdi, [rbp + 1904]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n154_disjunction_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n153_assign_α
                                                                                        jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n191_var_α
n154_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx249_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n155_conjunction_α
.Lx249_0:
                        cmp              eax, 1
                                                                                        jne   .Lx249_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n155_conjunction_α
.Lx249_1:
                                                                                        jmp   n155_conjunction_α
n154_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n173_disjunction_β
n154_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n156_disjunction_α
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n155_conjunction_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n139_disjunction_as
n155_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_disjunction_α:
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0
                                                                                        jmp   n157_lit_charset_α
n156_disjunction_as:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        jne   .Lx252_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n164_var_ref_α
.Lx252_0:
                                                                                        jmp   n164_var_ref_α
n156_disjunction_β:
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n162_call_value_β
n156_disjunction_af:
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_charset_α:
                        mov              qword ptr [rbp + 1824], 2                      # result
                        mov              dword ptr [rbp + 1828], -1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n158_var_α
n157_lit_charset_β:
                                                                                        jmp   n156_disjunction_af
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n159_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              qword ptr [rbp + 1808], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx256_60:
                        .section         .rodata
.Lbynamegenfn82:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn82]                   # fn
                        lea              rsi, [rbp + 1776]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1808]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n156_disjunction_af
                                                                                        jmp   n160_lit_string_α
n159_call_builtin_gen_β:
                                                                                        jmp   .Lx256_60
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n161_var_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n162_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_value_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              qword ptr [rbp + 1696], 0
                        mov              rdi, qword ptr [rbp + 1648]                    # callee
                        mov              rsi, qword ptr [rbp + 1656]                    # callee
                        mov              rdx, qword ptr [rbp + 1680]                    # lv
                        mov              rcx, qword ptr [rbp + 1688]                    # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx261_7
                        lea              rcx, [rip + .Lx261_3]
                        lea              rdx, [rip + .Lx261_4]
                                                                                        jmp   rax
.Lx261_3:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx261_5
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx261_2
.Lx261_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx261_2
.Lx261_4:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx261_6
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx261_2
.Lx261_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx261_2
.Lx261_7:
                        mov              rdi, qword ptr [rbp + 1648]                    # callee
                        mov              rsi, qword ptr [rbp + 1656]                    # callee
                        mov              rdx, qword ptr [rbp + 1680]                    # lv
                        mov              rcx, qword ptr [rbp + 1688]                    # lv
                        lea              r8, [rbp + 1696]                               # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx261_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n164_var_ref_α
                                                                                        jmp   n163_assign_α
n162_call_value_β:
                        mov              rax, qword ptr [rbp + 1696]
                        cmp              rax, 1
                                                                                        jne   .Lx261_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1704]
                                                                                        jmp   qword ptr [rsp]
.Lx261_8:
                        lea              rdi, [rbp + 1696]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n164_var_ref_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n163_assign_α
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n156_disjunction_as
n163_assign_β:
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n166_subscript_α
.Lx265_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # base
                        mov              rsi, qword ptr [rbp + 1528]                    # base
                        mov              rdx, qword ptr [rbp + 1536]                    # idx
                        mov              rcx, qword ptr [rbp + 1544]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n169_lit_string_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n168_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1552]                    # var
                        mov              rsi, qword ptr [rbp + 1560]                    # var
                        mov              rdx, qword ptr [rbp + 1584]                    # val
                        mov              rcx, qword ptr [rbp + 1592]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n169_lit_string_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 5
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n170_var_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n171_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_value_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              qword ptr [rbp + 1456], 0
                        mov              rdi, qword ptr [rbp + 1408]                    # callee
                        mov              rsi, qword ptr [rbp + 1416]                    # callee
                        mov              rdx, qword ptr [rbp + 1440]                    # lv
                        mov              rcx, qword ptr [rbp + 1448]                    # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx274_7
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        mov              qword ptr [rbp + 1464], rsp
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx274_5
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx274_2
.Lx274_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx274_2
.Lx274_4:
                        mov              qword ptr [rbp + 1464], rsp
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx274_6
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx274_2
.Lx274_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx274_2
.Lx274_7:
                        mov              rdi, qword ptr [rbp + 1408]                    # callee
                        mov              rsi, qword ptr [rbp + 1416]                    # callee
                        mov              rdx, qword ptr [rbp + 1440]                    # lv
                        mov              rcx, qword ptr [rbp + 1448]                    # lv
                        lea              r8, [rbp + 1456]                               # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx274_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n173_disjunction_α
                                                                                        jmp   n172_assign_α
n171_call_value_β:
                        mov              rax, qword ptr [rbp + 1456]
                        cmp              rax, 1
                                                                                        jne   .Lx274_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1464]
                                                                                        jmp   qword ptr [rsp]
.Lx274_8:
                        lea              rdi, [rbp + 1456]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n173_disjunction_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n172_assign_α
                                                                                        jmp   n173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n173_disjunction_α:
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0
                                                                                        jmp   n175_var_α
n173_disjunction_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        jne   .Lx277_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n174_conjunction_α
.Lx277_0:
                                                                                        jmp   n174_conjunction_α
n173_disjunction_β:
                        mov              eax, dword ptr [rbp + 912]
                                                                                        jmp   n136_call_builtin_icon_α
n173_disjunction_af:
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_conjunction_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n154_disjunction_as
n174_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n176_var_α
n175_var_β:
                                                                                        jmp   n173_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n177_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2272]                    # lhs
                        mov              rsi, qword ptr [rbp + 2280]                    # lhs
                        mov              rdx, qword ptr [rbp + 2288]                    # rhs
                        mov              rcx, qword ptr [rbp + 2296]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n173_disjunction_af
                        mov              rdi, qword ptr [rbp + 2288]                    # d
                        mov              rsi, qword ptr [rbp + 2296]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 1216], 2                      # result
                        mov              dword ptr [rbp + 1220], 13
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n179_var_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "detab error: "
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 1328], 2                      # result
                        mov              dword ptr [rbp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n181_lit_string_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n182_call_builtin_icon_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn290:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rbp + 1248]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n184_lit_string_α
                                                                                        jmp   n183_call_builtin_icon_α
n182_call_builtin_icon_β:
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn292:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]                         # fn
                        lea              rsi, [rbp + 1168]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n184_lit_string_α
                                                                                        jmp   n184_lit_string_α
n183_call_builtin_icon_β:
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 13
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n185_var_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 5
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n187_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n188_call_builtin_icon_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn299:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]                         # fn
                        lea              rsi, [rbp + 1040]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n189_call_builtin_icon_α
n188_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn301:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]                         # fn
                        lea              rsi, [rbp + 960]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n190_conjunction_α
n189_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n190_conjunction_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n173_disjunction_as
n190_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n192_var_α
n191_var_β:
                                                                                        jmp   n154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rbp + 864]
                        call             proc_interp_dcα
                                                                                        jmp   .Lx308_2
.Lx308_2:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n154_disjunction_af
                                                                                        jmp   n194_binop_test_α
n193_call_proc_staged_β:
                                                                                        jmp   n154_disjunction_af
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "interp"
#-----------------------------------------------------------------------------------------------------------------------
n194_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2272]                    # lhs
                        mov              rsi, qword ptr [rbp + 2280]                    # lhs
                        mov              rdx, qword ptr [rbp + 816]                     # rhs
                        mov              rcx, qword ptr [rbp + 824]                     # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n154_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 13
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n196_var_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "entab error: "
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n198_lit_string_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n199_call_builtin_icon_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn316:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n200_call_builtin_icon_α
n199_call_builtin_icon_β:
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn318:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n201_lit_string_α
n200_call_builtin_icon_β:
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 13
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n202_var_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 5
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n204_lit_string_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 5
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n205_call_builtin_icon_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn325:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]                         # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n206_call_builtin_icon_α
n205_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn327:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n207_conjunction_α
n206_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n154_disjunction_as
n207_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n209_lit_integer_α
n208_var_ref_β:
                                                                                        jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n210_subscript_α
.Lx331_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n139_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n211_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n139_disjunction_af
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n213_binop_test_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_test_α:
                        mov              rdi, qword ptr [rbp + 272]                     # lhs
                        mov              rsi, qword ptr [rbp + 280]                     # lhs
                        mov              rdx, qword ptr [rbp + 288]                     # rhs
                        mov              rcx, qword ptr [rbp + 296]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n139_disjunction_af
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n215_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_setup_dcα
                                                                                        jmp   .Lx339_2
.Lx339_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n216_assign_α
n215_call_proc_staged_β:
                                                                                        jmp   n136_call_builtin_icon_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n139_disjunction_as
n216_assign_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_β:
                                                                                        jmp   proc_endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_dcα:
                        pop              r11
                        sub              rsp, 2368
                        mov              qword ptr [rsp + 2344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2320], r11
                        lea              rax, [rip + .Lx341_2]
                        mov              qword ptr [rbp + 2328], rax
                        lea              rax, [rip + .Lx341_3]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2240                                      # suffix_off
                        mov              edx, 2320                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_endetab1_α_body
.Lx341_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx341_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_escape_α
proc_escape_α:
proc_escape_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n342_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n343_var_ref_α
n342_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx409_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n354_lit_string_α
.Lx409_0:
                                                                                        jmp   n354_lit_string_α
n342_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                                                                                        jmp   n354_lit_string_α
n342_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                                                                                        jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n344_lit_integer_α
n343_var_ref_β:
                                                                                        jmp   n342_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n345_subscript_α
.Lx412_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n345_subscript_α:
                        mov              rdi, qword ptr [rbp + 1264]                    # base
                        mov              rsi, qword ptr [rbp + 1272]                    # base
                        mov              rdx, qword ptr [rbp + 1280]                    # idx
                        mov              rcx, qword ptr [rbp + 1288]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n342_disjunction_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n346_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_deref_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # d
                        mov              rsi, qword ptr [rbp + 1304]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n342_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n347_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 1328], 2                      # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n348_binop_test_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n348_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1312]                    # lhs
                        mov              rsi, qword ptr [rbp + 1320]                    # lhs
                        mov              rdx, qword ptr [rbp + 1328]                    # rhs
                        mov              rcx, qword ptr [rbp + 1336]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n342_disjunction_af
                        mov              rdi, qword ptr [rbp + 1328]                    # d
                        mov              rsi, qword ptr [rbp + 1336]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n351_lit_integer_α
.Lx419_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n352_subscript_α
.Lx420_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n352_subscript_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # arr
                        mov              rsi, qword ptr [rbp + 1208]                    # arr
                        mov              rdx, qword ptr [rbp + 1216]                    # i
                        mov              rcx, qword ptr [rbp + 1224]                    # i
                        mov              r8, qword ptr [rbp + 1232]                     # j
                        mov              r9, qword ptr [rbp + 1240]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n354_lit_string_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n353_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n342_disjunction_as
n353_assign_β:
                                                                                        jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 0
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n355_assign_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n357_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n357_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # lo
                        mov              rsi, qword ptr [rbp + 1112]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n359_scan_pos_α
.Lx429_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n359_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx431_0
                        add              rax, r15
                        add              rax, 1
.Lx431_0:
                        cmp              rax, 1
                                                                                        jge   .Lx431_238
                        add              rsp, 1248
                                                                                        jmp   n360_var_α
.Lx431_238:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx431_239
                        add              rsp, 1248
                                                                                        jmp   n360_var_α
.Lx431_239:
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        je    .Lx431_240
                        add              rsp, 1248
                                                                                        jmp   n360_var_α
.Lx431_240:
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                                                                                        jmp   n361_var_α
n360_var_β:
                                                                                        jmp   n405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n362_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n362_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n367_lit_charset_α
n362_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx436_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n363_scan_tab_α
.Lx436_0:
                        cmp              eax, 1
                                                                                        jne   .Lx436_1
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n363_scan_tab_α
.Lx436_1:
                                                                                        jmp   n363_scan_tab_α
n362_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n368_scan_upto_β
                                                                                        jmp   n362_disjunction_af
n362_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    n366_lit_integer_α
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              rax, 1
                                                                                        jge   .Lx438_0
                        add              rax, r15
                        add              rax, 1
.Lx438_0:
                        cmp              rax, 1
                                                                                        jge   .Lx438_239
                        add              rsp, 16
                                                                                        jmp   n362_disjunction_β
.Lx438_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx438_240
                        add              rsp, 16
                                                                                        jmp   n362_disjunction_β
.Lx438_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n364_binop_α
n363_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n362_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 976]                     # b
                        mov              rcx, qword ptr [rbp + 984]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n365_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n362_disjunction_as
n366_lit_integer_β:
                                                                                        jmp   n362_disjunction_af
.Lx441_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n368_scan_upto_α
n367_lit_charset_β:
                                                                                        jmp   n362_disjunction_af
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n368_scan_upto_α:
                        mov              qword ptr [rbp + 1056], r14
.Lx444_0:
                        mov              rax, qword ptr [rbp + 1056]
                        cmp              rax, r15
                                                                                        jge   n362_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx444_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx444_1
                        mov              qword ptr [rbp + 1040], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n362_disjunction_as
.Lx444_1:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx444_0
n368_scan_upto_β:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx444_0
.Lx444_2:
                        .quad            .Lx444_2_s
.Lx444_2_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n371_scan_match_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n371_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx449_239
                        add              rsp, 16
                                                                                        jmp   n358_lit_integer_α
.Lx449_239:
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx449_240
                        add              rsp, 16
                                                                                        jmp   n358_lit_integer_α
.Lx449_240:
                        mov              qword ptr [rbp + 896], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n372_scan_tab_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n372_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 904]
                        cmp              rax, 1
                                                                                        jge   .Lx451_0
                        add              rax, r15
                        add              rax, 1
.Lx451_0:
                        cmp              rax, 1
                                                                                        jge   .Lx451_239
                        add              rsp, 16
                                                                                        jmp   n358_lit_integer_α
.Lx451_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx451_240
                        add              rsp, 16
                                                                                        jmp   n358_lit_integer_α
.Lx451_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n373_lit_integer_α
n372_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n374_scan_move_α
.Lx452_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n374_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx454_239
                        add              rsp, 16
                                                                                        jmp   n372_scan_tab_β
.Lx454_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx454_240
                        add              rsp, 16
                                                                                        jmp   n372_scan_tab_β
.Lx454_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n375_assign_α
n374_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n372_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n377_call_builtin_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn458:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n380_lit_string_α
                                                                                        jmp   n378_lit_string_α
n377_call_builtin_β:
                                                                                        jmp   n380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n379_assign_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n381_call_builtin_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n381_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn463:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]                         # fn
                        lea              rsi, [rbp + 720]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n384_lit_string_α
                                                                                        jmp   n382_lit_string_α
n381_call_builtin_β:
                                                                                        jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n383_assign_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n385_call_builtin_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn468:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]                         # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n388_lit_string_α
                                                                                        jmp   n386_lit_string_α
n385_call_builtin_β:
                                                                                        jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n387_assign_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n389_call_builtin_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn473:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n392_lit_string_α
                                                                                        jmp   n390_lit_string_α
n389_call_builtin_β:
                                                                                        jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n391_assign_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n393_call_builtin_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn478:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n396_lit_string_α
                                                                                        jmp   n394_lit_string_α
n393_call_builtin_β:
                                                                                        jmp   n396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n395_assign_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n397_var_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n398_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n398_binop_α:
                        mov              rdi, qword ptr [rbp + 336]                     # a
                        mov              rsi, qword ptr [rbp + 344]                     # a
                        mov              rdx, qword ptr [rbp + 1376]                    # b
                        mov              rcx, qword ptr [rbp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n401_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n401_conjunction_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n402_binop_α
n401_conjunction_β:
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n402_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 240]                     # b
                        mov              rcx, qword ptr [rbp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n403_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n404_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n404_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n358_lit_integer_α
n404_conjunction_β:
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n405_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n406_var_α
n405_scan_β:
                                                                                        jmp   n406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n407_return_α
#-----------------------------------------------------------------------------------------------------------------------
n407_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 1248
                                                                                        jmp   proc_escape_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_β:
                                                                                        jmp   proc_escape_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_dcα:
                        pop              r11
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1408], r11
                        lea              rax, [rip + .Lx497_2]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rax, [rip + .Lx497_3]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1344                                      # suffix_off
                        mov              edx, 1408                                      # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_escape_α_body
.Lx497_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx497_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_interp_α
proc_interp_α:
proc_interp_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        sub              rsp, 464
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
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 0
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n499_assign_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n500_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n501_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n501_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 528]                     # lo
                        mov              rsi, qword ptr [rbp + 536]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n503_scan_pos_α
.Lx529_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n503_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx531_0
                        add              rax, r15
                        add              rax, 1
.Lx531_0:
                        cmp              rax, 1
                                                                                        jge   .Lx531_238
                        add              rsp, 464
                                                                                        jmp   n504_var_α
.Lx531_238:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx531_239
                        add              rsp, 464
                                                                                        jmp   n504_var_α
.Lx531_239:
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        je    .Lx531_240
                        add              rsp, 464
                                                                                        jmp   n504_var_α
.Lx531_240:
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n517_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n505_lit_charset_α
n504_var_β:
                                                                                        jmp   n517_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_charset_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], -1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n506_scan_many_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n506_scan_many_α:
                        mov              eax, r14d
.Lx535_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx535_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx535_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx535_1
                        add              eax, 1
                                                                                        jmp   .Lx535_0
.Lx535_1:
                        cmp              eax, r14d
                                                                                        je    n508_var_α
                        mov              qword ptr [rbp + 496], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 504], rcx
                                                                                        jmp   n507_scan_tab_α
n506_scan_many_β:
                                                                                        jmp   n508_var_α
.Lx535_2:
                        .quad            .Lx535_2_s
.Lx535_2_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n507_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 504]
                        cmp              rax, 1
                                                                                        jge   .Lx537_0
                        add              rax, r15
                        add              rax, 1
.Lx537_0:
                        cmp              rax, 1
                                                                                        jge   .Lx537_239
                        add              rsp, 16
                                                                                        jmp   n508_var_α
.Lx537_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx537_240
                        add              rsp, 16
                                                                                        jmp   n508_var_α
.Lx537_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n508_var_α
n507_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n509_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n509_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n515_lit_charset_α
n509_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx541_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n510_scan_tab_α
.Lx541_0:
                        cmp              eax, 1
                                                                                        jne   .Lx541_1
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n510_scan_tab_α
.Lx541_1:
                                                                                        jmp   n510_scan_tab_α
n509_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n516_scan_upto_β
                                                                                        jmp   n509_disjunction_af
n509_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n514_lit_integer_α
                                                                                        jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n510_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 376]
                        cmp              rax, 1
                                                                                        jge   .Lx543_0
                        add              rax, r15
                        add              rax, 1
.Lx543_0:
                        cmp              rax, 1
                                                                                        jge   .Lx543_239
                        add              rsp, 16
                                                                                        jmp   n509_disjunction_β
.Lx543_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx543_240
                        add              rsp, 16
                                                                                        jmp   n509_disjunction_β
.Lx543_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n511_binop_α
n510_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n509_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n511_binop_α:
                        mov              rdi, qword ptr [rbp + 576]                     # a
                        mov              rsi, qword ptr [rbp + 584]                     # a
                        mov              rdx, qword ptr [rbp + 336]                     # b
                        mov              rcx, qword ptr [rbp + 344]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n512_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n513_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n513_conjunction_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n502_lit_integer_α
n513_conjunction_β:
                                                                                        jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n509_disjunction_as
n514_lit_integer_β:
                                                                                        jmp   n509_disjunction_af
.Lx547_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_charset_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], -1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n516_scan_upto_α
n515_lit_charset_β:
                                                                                        jmp   n509_disjunction_af
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n516_scan_upto_α:
                        mov              qword ptr [rbp + 416], r14
.Lx550_0:
                        mov              rax, qword ptr [rbp + 416]
                        cmp              rax, r15
                                                                                        jge   n509_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx550_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx550_1
                        mov              qword ptr [rbp + 400], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n509_disjunction_as
.Lx550_1:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx550_0
n516_scan_upto_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx550_0
.Lx550_2:
                        .quad            .Lx550_2_s
.Lx550_2_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n517_scan_α:
                        lea              rdi, [rbp + 176]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n518_var_α
n517_scan_β:
                                                                                        jmp   n518_var_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n520_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n521_call_builtin_icon_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn558:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx557_240
                        add              rsp, 464
                                                                                        jmp   proc_interp_ω
.Lx557_240:
                                                                                        jmp   n522_return_α
n521_call_builtin_icon_β:
                        add              rsp, 464
                                                                                        jmp   proc_interp_ω
#-----------------------------------------------------------------------------------------------------------------------
n522_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 464
                                                                                        jmp   proc_interp_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_β:
                                                                                        jmp   proc_interp_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx560_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx560_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 576                                       # suffix_off
                        mov              edx, 608                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_interp_α_body
.Lx560_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx560_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setup_α
proc_setup_α:
proc_setup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n561_keyword_icon_α:
                        sub              rsp, 432
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
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                                                                                        jmp   n562_make_list_α
n561_keyword_icon_β:
                                                                                        jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n562_make_list_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n563_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n563_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n565_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n565_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 656]                     # lo
                        mov              rsi, qword ptr [rbp + 664]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_charset_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], -1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n567_scan_upto_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n567_scan_upto_α:
                        mov              qword ptr [rbp + 432], r14
.Lx597_0:
                        mov              rax, qword ptr [rbp + 432]
                        cmp              rax, r15
                                                                                        jl    .Lx597_240
                        add              rsp, 432
                                                                                        jmp   n586_scan_α
.Lx597_240:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx597_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx597_1
                        mov              qword ptr [rbp + 416], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n568_scan_tab_α
.Lx597_1:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx597_0
n567_scan_upto_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx597_0
.Lx597_2:
                        .quad            .Lx597_2_s
.Lx597_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n568_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 424]
                        cmp              rax, 1
                                                                                        jge   .Lx599_0
                        add              rax, r15
                        add              rax, 1
.Lx599_0:
                        cmp              rax, 1
                                                                                        jge   .Lx599_239
                        add              rsp, 16
                                                                                        jmp   n567_scan_upto_β
.Lx599_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx599_240
                        add              rsp, 16
                                                                                        jmp   n567_scan_upto_β
.Lx599_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n569_var_α
n568_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n567_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n570_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_charset_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], -1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n571_scan_many_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n571_scan_many_α:
                        mov              eax, r14d
.Lx604_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx604_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx604_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx604_1
                        add              eax, 1
                                                                                        jmp   .Lx604_0
.Lx604_1:
                        cmp              eax, r14d
                                                                                        je    n566_lit_charset_α
                        mov              qword ptr [rbp + 624], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 632], rcx
                                                                                        jmp   n572_scan_tab_α
n571_scan_many_β:
                                                                                        jmp   n566_lit_charset_α
.Lx604_2:
                        .quad            .Lx604_2_s
.Lx604_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n572_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 632]
                        cmp              rax, 1
                                                                                        jge   .Lx606_0
                        add              rax, r15
                        add              rax, 1
.Lx606_0:
                        cmp              rax, 1
                                                                                        jge   .Lx606_239
                        add              rsp, 16
                                                                                        jmp   n566_lit_charset_α
.Lx606_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx606_240
                        add              rsp, 16
                                                                                        jmp   n566_lit_charset_α
.Lx606_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n573_call_builtin_icon_α
n572_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn608:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n566_lit_charset_α
                                                                                        jmp   n574_call_builtin_icon_α
n573_call_builtin_icon_β:
                                                                                        jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn610:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n566_lit_charset_α
                                                                                        jmp   n566_lit_charset_α
n574_call_builtin_icon_β:
                                                                                        jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 21
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n576_call_builtin_icon_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "testing entab/detab(s"
#-----------------------------------------------------------------------------------------------------------------------
n576_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn613:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n577_lit_string_α
                                                                                        jmp   n577_lit_string_α
n576_call_builtin_icon_β:
                                                                                        jmp   n577_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n578_var_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n579_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n579_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx618_0:
                        mov              rdi, qword ptr [rbp + 240]                     # obj
                        mov              rsi, qword ptr [rbp + 248]                     # obj
                        mov              rdx, qword ptr [rbp + 224]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 99
                                                                                        je    n582_lit_string_α
                                                                                        jmp   n580_unop_test_α
n579_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx618_0
#-----------------------------------------------------------------------------------------------------------------------
n580_unop_test_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 104
                                                                                        je    n579_iterate_β
                        cmp              eax, 0
                                                                                        je    n579_iterate_β
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n581_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn621:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n579_iterate_β
                                                                                        jmp   n579_iterate_β
n581_call_builtin_icon_β:
                                                                                        jmp   n579_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:
                        mov              qword ptr [rbp + 96], 2                        # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n583_call_builtin_icon_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn624:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n584_var_α
                                                                                        jmp   n584_var_α
n583_call_builtin_icon_β:
                                                                                        jmp   n584_var_α
#-----------------------------------------------------------------------------------------------------------------------
n584_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n585_return_α
#-----------------------------------------------------------------------------------------------------------------------
n585_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_setup_γ
#-----------------------------------------------------------------------------------------------------------------------
n586_scan_α:
                        lea              rdi, [rbp + 336]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n575_lit_string_α
n586_scan_β:
                                                                                        jmp   n575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_β:
                                                                                        jmp   proc_setup_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_dcα:
                        pop              r11
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 784], r11
                        lea              rax, [rip + .Lx630_2]
                        mov              qword ptr [rbp + 792], rax
                        lea              rax, [rip + .Lx630_3]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 752                                       # suffix_off
                        mov              edx, 784                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setup_α_body
.Lx630_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx630_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ferr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ferr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ferr_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "endetab1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_endetab1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_endetab1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "escape"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_escape_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_escape_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "interp"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_interp_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_interp_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "setup"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_setup_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_setup_dcα]
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
n631_lit_string_α:
                        sub              rsp, 3840
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
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rbp + 2864], 2                      # result
                        mov              dword ptr [rbp + 2868], 8
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n632_assign_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "rutabaga"
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n633_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n633_disjunction_α:
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              dword ptr [rbp + 2672], 0
                                                                                        jmp   n634_lit_charset_α
n633_disjunction_as:
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 0
                                                                                        jne   .Lx729_0
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n640_disjunction_α
.Lx729_0:
                                                                                        jmp   n640_disjunction_α
n633_disjunction_β:
                        mov              eax, dword ptr [rbp + 2672]
                                                                                        jmp   n640_disjunction_α
n633_disjunction_af:
                        add              dword ptr [rbp + 2672], 1
                        mov              eax, dword ptr [rbp + 2672]
                                                                                        jmp   n640_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_charset_α:
                        mov              qword ptr [rbp + 2816], 2                      # result
                        mov              dword ptr [rbp + 2820], -1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n635_call_builtin_icon_α
n634_lit_charset_β:
                                                                                        jmp   n633_disjunction_af
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn732:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn732]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n633_disjunction_af
                                                                                        jmp   n636_lit_string_α
n635_call_builtin_icon_β:
                                                                                        jmp   n633_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:
                        mov              qword ptr [rbp + 2832], 2                      # result
                        mov              dword ptr [rbp + 2836], 4
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n637_binop_test_α
.Lx733_0:
                        .quad            .Lx733_0_s
.Lx733_0_s:
                        .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n637_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2768]                    # lhs
                        mov              rsi, qword ptr [rbp + 2776]                    # lhs
                        mov              rdx, qword ptr [rbp + 2832]                    # rhs
                        mov              rcx, qword ptr [rbp + 2840]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n633_disjunction_af
                        mov              rdi, qword ptr [rbp + 2832]                    # d
                        mov              rsi, qword ptr [rbp + 2840]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n638_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 2736], 2                      # result
                        mov              dword ptr [rbp + 2740], 6
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n639_call_builtin_icon_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "oops 1"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn737:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn737]                         # fn
                        lea              rsi, [rbp + 2704]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 104
                                                                                        je    n640_disjunction_α
                                                                                        jmp   n633_disjunction_as
n639_call_builtin_icon_β:
                                                                                        jmp   n640_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n640_disjunction_α:
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              dword ptr [rbp + 2480], 0
                                                                                        jmp   n641_lit_charset_α
n640_disjunction_as:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        jne   .Lx739_0
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n647_disjunction_α
.Lx739_0:
                                                                                        jmp   n647_disjunction_α
n640_disjunction_β:
                        mov              eax, dword ptr [rbp + 2480]
                                                                                        jmp   n647_disjunction_α
n640_disjunction_af:
                        add              dword ptr [rbp + 2480], 1
                        mov              eax, dword ptr [rbp + 2480]
                                                                                        jmp   n647_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_charset_α:
                        mov              qword ptr [rbp + 2624], 2                      # result
                        mov              dword ptr [rbp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n642_call_builtin_icon_α
n641_lit_charset_β:
                                                                                        jmp   n640_disjunction_af
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn742:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn742]                         # fn
                        lea              rsi, [rbp + 2592]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    n640_disjunction_af
                                                                                        jmp   n643_lit_string_α
n642_call_builtin_icon_β:
                                                                                        jmp   n640_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:
                        mov              qword ptr [rbp + 2640], 2                      # result
                        mov              dword ptr [rbp + 2644], 4
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n644_binop_test_α
.Lx743_0:
                        .quad            .Lx743_0_s
.Lx743_0_s:
                        .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n644_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # lhs
                        mov              rsi, qword ptr [rbp + 2584]                    # lhs
                        mov              rdx, qword ptr [rbp + 2640]                    # rhs
                        mov              rcx, qword ptr [rbp + 2648]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n640_disjunction_af
                        mov              rdi, qword ptr [rbp + 2640]                    # d
                        mov              rsi, qword ptr [rbp + 2648]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n645_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 6
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n646_call_builtin_icon_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          "oops 2"
#-----------------------------------------------------------------------------------------------------------------------
n646_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        .section         .rodata
.Lrkfn747:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn747]                         # fn
                        lea              rsi, [rbp + 2512]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n647_disjunction_α
                                                                                        jmp   n640_disjunction_as
n646_call_builtin_icon_β:
                                                                                        jmp   n647_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n647_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n648_lit_string_α
n647_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx749_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n655_disjunction_α
.Lx749_0:
                                                                                        jmp   n655_disjunction_α
n647_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                                                                                        jmp   n655_disjunction_α
n647_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                                                                                        jmp   n655_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:
                        mov              qword ptr [rbp + 2416], 2                      # result
                        mov              dword ptr [rbp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n649_lit_string_α
n648_lit_string_β:
                                                                                        jmp   n647_disjunction_af
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n650_call_builtin_icon_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn753:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]                         # fn
                        lea              rsi, [rbp + 2368]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 104
                                                                                        je    n647_disjunction_af
                                                                                        jmp   n651_lit_string_α
n650_call_builtin_icon_β:
                                                                                        jmp   n647_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:
                        mov              qword ptr [rbp + 2448], 2                      # result
                        mov              dword ptr [rbp + 2452], 2
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n652_binop_test_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n652_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2352]                    # lhs
                        mov              rsi, qword ptr [rbp + 2360]                    # lhs
                        mov              rdx, qword ptr [rbp + 2448]                    # rhs
                        mov              rcx, qword ptr [rbp + 2456]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n647_disjunction_af
                        mov              rdi, qword ptr [rbp + 2448]                    # d
                        mov              rsi, qword ptr [rbp + 2456]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n653_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 6
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n654_call_builtin_icon_α
.Lx756_0:
                        .quad            .Lx756_0_s
.Lx756_0_s:
                        .string          "oops 3"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn758:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]                         # fn
                        lea              rsi, [rbp + 2288]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        je    n655_disjunction_α
                                                                                        jmp   n647_disjunction_as
n654_call_builtin_icon_β:
                                                                                        jmp   n655_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n655_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n656_lit_string_α
n655_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx760_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n663_lit_integer_α
.Lx760_0:
                                                                                        jmp   n663_lit_integer_α
n655_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                                                                                        jmp   n663_lit_integer_α
n655_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                                                                                        jmp   n663_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 2
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n657_lit_string_α
n656_lit_string_β:
                                                                                        jmp   n655_disjunction_af
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn764:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn764]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n655_disjunction_af
                                                                                        jmp   n659_lit_string_α
n658_call_builtin_icon_β:
                                                                                        jmp   n655_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], 4
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n660_binop_test_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n660_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2128]                    # lhs
                        mov              rsi, qword ptr [rbp + 2136]                    # lhs
                        mov              rdx, qword ptr [rbp + 2224]                    # rhs
                        mov              rcx, qword ptr [rbp + 2232]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n655_disjunction_af
                        mov              rdi, qword ptr [rbp + 2224]                    # d
                        mov              rsi, qword ptr [rbp + 2232]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n661_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:
                        mov              qword ptr [rbp + 2096], 2                      # result
                        mov              dword ptr [rbp + 2100], 6
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n662_call_builtin_icon_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "oops 4"
#-----------------------------------------------------------------------------------------------------------------------
n662_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn769:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]                         # fn
                        lea              rsi, [rbp + 2064]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n663_lit_integer_α
                                                                                        jmp   n655_disjunction_as
n662_call_builtin_icon_β:
                                                                                        jmp   n663_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n664_proc_value_α
.Lx770_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n664_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx772_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n665_make_list_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n665_make_list_α:
                        lea              rdi, [rbp + 2016]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n666_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n666_call_proc_staged_α:
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1984]
                        lea              rcx, [rbp + 2000]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx776_2
.Lx776_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n667_lit_integer_α
                                                                                        jmp   n667_lit_integer_α
n666_call_proc_staged_β:
                                                                                        jmp   n667_lit_integer_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n668_proc_value_α
.Lx777_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n668_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx779_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n669_make_list_α
.Lx779_0:
                        .quad            .Lx779_0_s
.Lx779_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n669_make_list_α:
                        lea              rdi, [rbp + 1888]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n670_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_proc_staged_α:
                        lea              rsi, [rbp + 1840]
                        lea              rdx, [rbp + 1856]
                        lea              rcx, [rbp + 1872]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx783_2
.Lx783_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n671_lit_integer_α
                                                                                        jmp   n671_lit_integer_α
n670_call_proc_staged_β:
                                                                                        jmp   n671_lit_integer_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 3                      # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n672_proc_value_α
.Lx784_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n672_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx786_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n673_make_list_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n673_make_list_α:
                        lea              rdi, [rbp + 1760]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n674_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n674_make_list_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n675_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n675_call_proc_staged_α:
                        lea              rsi, [rbp + 1680]
                        lea              rdx, [rbp + 1696]
                        lea              rcx, [rbp + 1712]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx792_2
.Lx792_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n676_lit_integer_α
                                                                                        jmp   n676_lit_integer_α
n675_call_proc_staged_β:
                                                                                        jmp   n676_lit_integer_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n677_proc_value_α
.Lx793_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n677_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx795_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n678_make_list_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n678_make_list_α:
                        lea              rdi, [rbp + 1600]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n679_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n679_make_list_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n680_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        lea              rsi, [rbp + 1520]
                        lea              rdx, [rbp + 1536]
                        lea              rcx, [rbp + 1552]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx801_2
.Lx801_2:
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n681_lit_integer_α
                                                                                        jmp   n681_lit_integer_α
n680_call_proc_staged_β:
                                                                                        jmp   n681_lit_integer_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n682_proc_value_α
.Lx802_0:
                        .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n682_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx804_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n683_var_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n684_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n685_lit_integer_α
.Lx807_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n686_lit_charset_α
.Lx808_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_charset_α:
                        mov              qword ptr [rbp + 1424], 2                      # result
                        mov              dword ptr [rbp + 1428], -1
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n687_make_list_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n687_make_list_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n688_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n688_call_proc_staged_α:
                        lea              rsi, [rbp + 1264]
                        lea              rdx, [rbp + 1280]
                        lea              rcx, [rbp + 1296]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx813_2
.Lx813_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n689_lit_integer_α
                                                                                        jmp   n689_lit_integer_α
n688_call_proc_staged_β:
                                                                                        jmp   n689_lit_integer_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n690_proc_value_α
.Lx814_0:
                        .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n690_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx816_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n691_var_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n692_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n693_lit_integer_α
.Lx819_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n694_lit_charset_α
.Lx820_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n695_make_list_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n695_make_list_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n696_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1024]
                        lea              rcx, [rbp + 1040]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx825_2
.Lx825_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n697_lit_integer_α
                                                                                        jmp   n697_lit_integer_α
n696_call_proc_staged_β:
                                                                                        jmp   n697_lit_integer_α
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n698_proc_value_α
.Lx826_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n698_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx828_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n699_var_α
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n700_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:
                        mov              qword ptr [rbp + 896], 3                       # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n701_lit_integer_α
.Lx831_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n702_make_list_α
.Lx832_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n702_make_list_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n703_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx836_2
.Lx836_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n704_lit_integer_α
                                                                                        jmp   n704_lit_integer_α
n703_call_proc_staged_β:
                                                                                        jmp   n704_lit_integer_α
.Lx836_0:
                        .quad            .Lx836_0_s
.Lx836_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n705_proc_value_α
.Lx837_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n705_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx839_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n706_var_α
.Lx839_0:
                        .quad            .Lx839_0_s
.Lx839_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n707_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n708_lit_integer_α
.Lx842_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        mov              qword ptr [rbp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n709_make_list_α
.Lx843_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n709_make_list_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n710_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 576]
                        lea              rcx, [rbp + 592]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx847_2
.Lx847_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n711_lit_integer_α
                                                                                        jmp   n711_lit_integer_α
n710_call_proc_staged_β:
                                                                                        jmp   n711_lit_integer_α
.Lx847_0:
                        .quad            .Lx847_0_s
.Lx847_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n712_proc_value_α
.Lx848_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n712_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx850_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n713_var_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n714_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n715_lit_integer_α
.Lx853_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n716_make_list_α
.Lx854_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n716_make_list_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n717_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n717_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        lea              rcx, [rbp + 368]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx858_2
.Lx858_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n718_lit_integer_α
                                                                                        jmp   n718_lit_integer_α
n717_call_proc_staged_β:
                                                                                        jmp   n718_lit_integer_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n719_proc_value_α
.Lx859_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n719_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx861_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n720_var_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n722_lit_integer_α
.Lx864_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n723_make_list_α
.Lx865_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n723_make_list_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n724_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 128]
                        lea              rcx, [rbp + 144]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx869_2
.Lx869_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n725_call_proc_staged_α
                                                                                        jmp   n725_call_proc_staged_α
n724_call_proc_staged_β:
                                                                                        jmp   n725_call_proc_staged_α
.Lx869_0:
                        .quad            .Lx869_0_s
.Lx869_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        call             proc_endetab1_dcα
                                                                                        jmp   .Lx871_2
.Lx871_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx871_240
                        add              rsp, 3840
                                                                                        jmp   main_ω
.Lx871_240:
                        add              rsp, 3840
                                                                                        jmp   main_ω
n725_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx871_0:
                        .quad            .Lx871_0_s
.Lx871_0_s:
                        .string          "endetab1"
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
