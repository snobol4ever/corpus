                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display_α
proc_display_α:
                        sub              rsp, 1856
                        mov              qword ptr [rsp + 1832], rcx
                        mov              qword ptr [rsp + 1840], rdx
                        mov              qword ptr [rsp + 1848], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1824
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
proc_display_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0
                                                                                        jmp   n1_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        jne   .Lx79_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n16_var_α
.Lx79_0:
                                                                                        jmp   n16_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1440]
                                                                                        jmp   n16_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440]
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                                # display__INITFLAG__0
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n2_nulltest_var_α
n1_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 1712]                    # d
                        mov              rsi, qword ptr [rbp + 1720]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n4_assign_var_α
.Lx83_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1728]                    # var
                        mov              rsi, qword ptr [rbp + 1736]                    # var
                        mov              rdx, qword ptr [rbp + 1760]                    # val
                        mov              rcx, qword ptr [rbp + 1768]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n6_lit_string_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n7_lit_integer_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 3                      # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n8_call_builtin_icon_α
.Lx87_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn89:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]                          # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n9_binop_α
n8_call_builtin_icon_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # a
                        mov              rsi, qword ptr [rbp + 1608]                    # a
                        mov              rdx, qword ptr [rbp + 1616]                    # b
                        mov              rcx, qword ptr [rbp + 1624]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052448], rax                    # display__STATIC__bar
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n12_lit_integer_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx93_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn95:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]                          # fn
                        lea              rsi, [rbp + 1504]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n16_var_α
                                                                                        jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [1879052464], rax                    # display__STATIC__offset
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n15_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n15_conjunction_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n0_disjunction_as
n15_conjunction_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052288]                    # deck
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1408], rax                    # result
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α:
                        lea              rsi, [rbp + 1408]
                        call             proc_shuffle_dcα
                                                                                        jmp   .Lx00001_2
.Lx00001_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n19_make_list_α
                                                                                        jmp   n18_assign_α
n17_call_proc_staged_β:
                                                                                        jmp   n19_make_list_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "shuffle"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [1879052288], rax                    # deck
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n19_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n19_make_list_α:
                        lea              rdi, [rbp + 1360]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [1879052288]                    # deck
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1120], rax                    # result
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n24_lit_integer_α
.Lx00002_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n25_to_α
.Lx00003_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # v
                        mov              rsi, qword ptr [rbp + 1256]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1248], 3
                        mov              qword ptr [rbp + 1256], rax
                        mov              rdi, qword ptr [rbp + 1264]                    # v
                        mov              rsi, qword ptr [rbp + 1272]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1264], 3
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1232], rax
.Lx00004_0:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx
                                                                                        jg    n38_call_builtin_icon_α
                        mov              qword ptr [rbp + 1216], 3
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n26_var_α
n25_to_β:
                        inc              qword ptr [rbp + 1232]
                                                                                        jmp   .Lx00004_0
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [1879052320]                    # handsize
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1280], rax                    # result
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 5
                                                                                        je    .Lx00005_1
                        cmp              eax, 3
                                                                                        jne   .Lx00005_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 3
                                                                                        jne   .Lx00005_0
.Lx00005_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n28_coerce_numeric_α
.Lx00005_0:
                        lea              rdi, [rbp + 1216]                              # self
                        lea              rsi, [rbp + 1280]                              # other
                        lea              rdx, [rbp + 1200]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 5
                                                                                        je    .Lx00006_1
                        cmp              eax, 3
                                                                                        jne   .Lx00006_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 3
                                                                                        jne   .Lx00006_0
.Lx00006_1:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n29_binop_α
.Lx00006_0:
                        lea              rdi, [rbp + 1280]                              # self
                        lea              rsi, [rbp + 1216]                              # other
                        lea              rdx, [rbp + 1184]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 3
                                                                                        jne   .Lx00007_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 3
                                                                                        jne   .Lx00007_0
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rcx, qword ptr [rbp + 1192]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1168], 3
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n30_lit_integer_α
.Lx00007_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n38_call_builtin_icon_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n31_coerce_numeric_α
.Lx00008_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 5
                                                                                        je    .Lx00009_1
                        cmp              eax, 3
                                                                                        jne   .Lx00009_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 3
                                                                                        jne   .Lx00009_0
.Lx00009_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n32_binop_α
.Lx00009_0:
                        lea              rdi, [rbp + 1168]                              # self
                        lea              rsi, [rbp + 1296]                              # other
                        lea              rdx, [rbp + 1152]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx00010_0
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1136], 3
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n33_var_α
.Lx00010_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n38_call_builtin_icon_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052320]                    # handsize
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1312], rax                    # result
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 3
                                                                                        jne   .Lx00011_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 3
                                                                                        jne   .Lx00011_0
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rcx, qword ptr [rbp + 1320]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n35_subscript_α
.Lx00011_0:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n25_to_β
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n35_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rbp + 1120]                    # arr
                        mov              rsi, qword ptr [rbp + 1128]                    # arr
                        mov              rdx, qword ptr [rbp + 1136]                    # i
                        mov              rcx, qword ptr [rbp + 1144]                    # i
                        mov              r8, qword ptr [rbp + 1328]                     # end
                        mov              r9, qword ptr [rbp + 1336]                     # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    n25_to_β
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n36_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        call             proc_show_dcα
                                                                                        jmp   .Lx00012_2
.Lx00012_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n25_to_β
                                                                                        jmp   n37_call_builtin_icon_α
n36_call_proc_staged_β:
                                                                                        jmp   n25_to_β
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn128:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 992]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n25_to_β
                                                                                        jmp   n25_to_β
n37_call_builtin_icon_β:
                                                                                        jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn130:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]                         # fn
                        lea              rsi, [rbp + 960]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n39_var_α
                                                                                        jmp   n39_var_α
n38_call_builtin_icon_β:
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [1879052464]                    # display__STATIC__offset
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 832], rax                     # result
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 896], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n42_subscript_α
.Lx00013_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]                     # base
                        mov              rsi, qword ptr [rbp + 888]                     # base
                        mov              rdx, qword ptr [rbp + 896]                     # idx
                        mov              rcx, qword ptr [rbp + 904]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n46_call_builtin_icon_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n43_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_deref_α:
                        mov              rdi, qword ptr [rbp + 912]                     # d
                        mov              rsi, qword ptr [rbp + 920]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n46_call_builtin_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n44_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n44_iterate_α:
                        mov              qword ptr [rbp + 864], 0
.Lx00014_0:
                        mov              rdi, qword ptr [rbp + 928]                     # obj
                        mov              rsi, qword ptr [rbp + 936]                     # obj
                        mov              rdx, qword ptr [rbp + 864]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              rax, 104
                                                                                        je    n46_call_builtin_icon_α
                                                                                        jmp   n45_call_builtin_icon_α
n44_iterate_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00014_0
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn140:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]                         # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n44_iterate_β
                                                                                        jmp   n44_iterate_β
n45_call_builtin_icon_β:
                                                                                        jmp   n44_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n47_lit_integer_α
                                                                                        jmp   n47_lit_integer_α
n46_call_builtin_icon_β:
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n48_lit_integer_α
.Lx00015_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n49_to_α
.Lx00016_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n49_to_α:
                        mov              rdi, qword ptr [rbp + 320]                     # v
                        mov              rsi, qword ptr [rbp + 328]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 320], 3
                        mov              qword ptr [rbp + 328], rax
                        mov              rdi, qword ptr [rbp + 336]                     # v
                        mov              rsi, qword ptr [rbp + 344]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 304], rax
.Lx00017_0:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              rax, rcx
                                                                                        jg    n68_call_builtin_icon_α
                        mov              qword ptr [rbp + 288], 3
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n50_assign_α
n49_to_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx00017_0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n51_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n51_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n54_subscript_α
.Lx00018_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        mov              rdi, qword ptr [rbp + 528]                     # base
                        mov              rsi, qword ptr [rbp + 536]                     # base
                        mov              rdx, qword ptr [rbp + 544]                     # idx
                        mov              rcx, qword ptr [rbp + 552]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n56_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # base
                        mov              rsi, qword ptr [rbp + 568]                     # base
                        mov              rdx, qword ptr [rbp + 576]                     # idx
                        mov              rcx, qword ptr [rbp + 584]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n57_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:
                        mov              rdi, qword ptr [rbp + 592]                     # d
                        mov              rsi, qword ptr [rbp + 600]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n59_call_builtin_icon_α
.Lx00019_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn160:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                                                                                        jmp   n60_var_ref_α
n59_call_builtin_icon_β:
                                                                                        jmp   n67_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n62_subscript_α
.Lx00020_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:
                        mov              rdi, qword ptr [rbp + 640]                     # base
                        mov              rsi, qword ptr [rbp + 648]                     # base
                        mov              rdx, qword ptr [rbp + 656]                     # idx
                        mov              rcx, qword ptr [rbp + 664]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n64_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]                     # base
                        mov              rsi, qword ptr [rbp + 680]                     # base
                        mov              rdx, qword ptr [rbp + 688]                     # idx
                        mov              rcx, qword ptr [rbp + 696]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n65_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n66_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn170:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]                         # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n67_unmark_α
                                                                                        jmp   n67_unmark_α
n66_call_builtin_icon_β:
                                                                                        jmp   n67_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n67_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n49_to_β
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n69_var_α
                                                                                        jmp   n69_var_α
n68_call_builtin_icon_β:
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052464]                    # display__STATIC__offset
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 128], rax                     # result
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n72_subscript_α
.Lx00021_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n72_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]                     # base
                        mov              rsi, qword ptr [rbp + 184]                     # base
                        mov              rdx, qword ptr [rbp + 192]                     # idx
                        mov              rcx, qword ptr [rbp + 200]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n76_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n73_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n76_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n74_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n74_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx00022_0:
                        mov              rdi, qword ptr [rbp + 224]                     # obj
                        mov              rsi, qword ptr [rbp + 232]                     # obj
                        mov              rdx, qword ptr [rbp + 160]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 104
                                                                                        je    n76_var_α
                                                                                        jmp   n75_call_builtin_icon_α
n74_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx00022_0
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn184:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n74_iterate_β
                                                                                        jmp   n74_iterate_β
n75_call_builtin_icon_β:
                                                                                        jmp   n74_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [1879052448]                    # display__STATIC__bar
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 48], rax                      # result
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    proc_display_ω
                                                                                        jmp   proc_display_γ
n77_call_builtin_icon_β:
                                                                                        jmp   proc_display_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display_β:
                                                                                        jmp   proc_display_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1832]
                        mov              rbp, qword ptr [rbp + 1848]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_display_ω:
                        lea              rsp, [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1840]
                        mov              rbp, qword ptr [rbp + 1848]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_display_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00023_2]
                        lea              rdx, [rip + .Lx00023_3]
                                                                                        jmp   proc_display_α
.Lx00023_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00023_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1360
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00024_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00025_var_ref_α
n00024_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00026_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00027_lit_string_α
.Lx00026_0:
                                                                                        jmp   n00027_lit_string_α
n00024_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00027_lit_string_α
n00024_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                                # show__INITFLAG__0
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00028_nulltest_var_α
n00025_var_ref_β:
                                                                                        jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00028_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 104
                                                                                        je    n00024_disjunction_af
                        mov              rdi, qword ptr [rbp + 1280]                    # d
                        mov              rsi, qword ptr [rbp + 1288]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00024_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00024_disjunction_af
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00029_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00031_assign_var_α
.Lx00030_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # var
                        mov              rsi, qword ptr [rbp + 1304]                    # var
                        mov              rdx, qword ptr [rbp + 1328]                    # val
                        mov              rcx, qword ptr [rbp + 1336]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00024_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:
                        mov              rax, qword ptr [1879052352]                    # denom
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1168], rax                    # result
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1248], rax                    # result
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00034_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00035_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00036_call_builtin_icon_α
.Lx00035_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn256:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00037_var_α
                                                                                        jmp   n00038_binop_α
n00036_call_builtin_icon_β:
                                                                                        jmp   n00037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # a
                        mov              rsi, qword ptr [rbp + 1176]                    # a
                        mov              rdx, qword ptr [rbp + 1184]                    # b
                        mov              rcx, qword ptr [rbp + 1192]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00039_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052496], rax                    # show__STATIC__clubmap
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1024], rax                    # result
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00040_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_α:
                        mov              rax, qword ptr [1879052352]                    # denom
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1040], rax                    # result
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00041_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_binop_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # a
                        mov              rsi, qword ptr [rbp + 1032]                    # a
                        mov              rdx, qword ptr [rbp + 1040]                    # b
                        mov              rcx, qword ptr [rbp + 1048]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00042_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1120], rax                    # result
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00043_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00044_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00045_call_builtin_icon_α
.Lx00044_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn265:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00046_var_α
                                                                                        jmp   n00047_binop_α
n00045_call_builtin_icon_β:
                                                                                        jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_binop_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # a
                        mov              rsi, qword ptr [rbp + 1016]                    # a
                        mov              rdx, qword ptr [rbp + 1056]                    # b
                        mov              rcx, qword ptr [rbp + 1064]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00048_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [1879052512], rax                    # show__STATIC__diamondmap
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 928], rax                     # result
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n00049_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_integer_α:
                        mov              qword ptr [rbp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00051_call_builtin_icon_α
.Lx00050_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn271:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n00052_var_α
                                                                                        jmp   n00053_var_α
n00051_call_builtin_icon_β:
                                                                                        jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [1879052352]                    # denom
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 960], rax                     # result
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n00054_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:
                        mov              rdi, qword ptr [rbp + 864]                     # a
                        mov              rsi, qword ptr [rbp + 872]                     # a
                        mov              rdx, qword ptr [rbp + 960]                     # b
                        mov              rcx, qword ptr [rbp + 968]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 976], rax                     # result
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00056_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:
                        mov              rdi, qword ptr [rbp + 848]                     # a
                        mov              rsi, qword ptr [rbp + 856]                     # a
                        mov              rdx, qword ptr [rbp + 976]                     # b
                        mov              rcx, qword ptr [rbp + 984]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00057_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052528], rax                    # show__STATIC__heartmap
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:
                        mov              rax, qword ptr [1879052384]                    # blanker
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 768], rax                     # result
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00058_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00059_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00060_call_builtin_icon_α
.Lx00059_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn280:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]                         # fn
                        lea              rsi, [rbp + 720]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n00027_lit_string_α
                                                                                        jmp   n00061_var_α
n00060_call_builtin_icon_β:
                                                                                        jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:
                        mov              rax, qword ptr [1879052352]                    # denom
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 800], rax                     # result
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00062_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:
                        mov              rdi, qword ptr [rbp + 704]                     # a
                        mov              rsi, qword ptr [rbp + 712]                     # a
                        mov              rdx, qword ptr [rbp + 800]                     # b
                        mov              rcx, qword ptr [rbp + 808]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00063_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879052544], rax                    # show__STATIC__spademap
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00064_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_conjunction_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00024_disjunction_as
n00064_conjunction_β:
                                                                                        jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Lx00065_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00066_var_α
.Lx00065_0:
                        .quad            .Lx00065_0_s
.Lx00065_0_s:
                        .string          "S: "
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00067_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_α:
                        mov              rax, qword ptr [1879052544]                    # show__STATIC__spademap
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 224], rax                     # result
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00068_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 224]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00069_2
.Lx00069_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    proc_show_ω
                                                                                        jmp   n00070_binop_α
n00068_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00069_0:
                        .quad            .Lx00069_0_s
.Lx00069_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00070_binop_α:
                        mov              rdi, qword ptr [rbp + 128]                     # a
                        mov              rsi, qword ptr [rbp + 136]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Lx00072_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00073_var_α
.Lx00072_0:
                        .quad            .Lx00072_0_s
.Lx00072_0_s:
                        .string          "H: "
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00074_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_α:
                        mov              rax, qword ptr [1879052528]                    # show__STATIC__heartmap
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00075_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00076_2
.Lx00076_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_show_ω
                                                                                        jmp   n00077_binop_α
n00075_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00076_0:
                        .quad            .Lx00076_0_s
.Lx00076_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_α:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 272]                     # b
                        mov              rcx, qword ptr [rbp + 280]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00078_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 3
                        mov              rax, qword ptr [rip + .Lx00079_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00080_var_α
.Lx00079_0:
                        .quad            .Lx00079_0_s
.Lx00079_0_s:
                        .string          "D: "
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:
                        mov              rax, qword ptr [1879052512]                    # show__STATIC__diamondmap
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 480], rax                     # result
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n00082_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_proc_staged_α:
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 480]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00083_2
.Lx00083_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    proc_show_ω
                                                                                        jmp   n00084_binop_α
n00082_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00083_0:
                        .quad            .Lx00083_0_s
.Lx00083_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00084_binop_α:
                        mov              rdi, qword ptr [rbp + 384]                     # a
                        mov              rsi, qword ptr [rbp + 392]                     # a
                        mov              rdx, qword ptr [rbp + 400]                     # b
                        mov              rcx, qword ptr [rbp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00085_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 3
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00087_var_α
.Lx00086_0:
                        .quad            .Lx00086_0_s
.Lx00086_0_s:
                        .string          "C: "
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00088_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_α:
                        mov              rax, qword ptr [1879052496]                    # show__STATIC__clubmap
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 608], rax                     # result
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00089_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_call_proc_staged_α:
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 608]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00090_2
.Lx00090_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    proc_show_ω
                                                                                        jmp   n00091_binop_α
n00089_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00090_0:
                        .quad            .Lx00090_0_s
.Lx00090_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:
                        mov              rdi, qword ptr [rbp + 512]                     # a
                        mov              rsi, qword ptr [rbp + 520]                     # a
                        mov              rdx, qword ptr [rbp + 528]                     # b
                        mov              rcx, qword ptr [rbp + 536]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00092_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_make_list_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00093_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_show_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_show_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_show_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              rbp, qword ptr [rbp + 1384]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        lea              rsp, [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1376]
                        mov              rbp, qword ptr [rbp + 1384]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00094_2]
                        lea              rdx, [rip + .Lx00094_3]
                                                                                        jmp   proc_show_α
.Lx00094_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00094_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_arrange_α
proc_arrange_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 336
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_arrange_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:
                        mov              rax, qword ptr [1879052304]                    # deckimage
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 240], rax                     # result
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00097_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00098_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn333:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    proc_arrange_ω
                                                                                        jmp   n00099_lit_charset_α
n00098_call_builtin_icon_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_charset_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], -1
                        mov              rax, qword ptr [rip + .Lx00100_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00101_binop_α
.Lx00100_0:
                        .quad            .Lx00100_0_s
.Lx00100_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00101_binop_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    proc_arrange_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:
                        mov              rax, qword ptr [1879052352]                    # denom
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 288], rax                     # result
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_α:
                        mov              rax, qword ptr [1879052368]                    # rank
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 304], rax                     # result
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn339:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_arrange_ω
                                                                                        jmp   n00105_return_α
n00104_call_builtin_icon_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00105_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_arrange_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 368]
                        mov              rcx, qword ptr [rbp + 344]
                        mov              rbp, qword ptr [rbp + 360]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_ω:
                        lea              rsp, [rbp + 368]
                        mov              rcx, qword ptr [rbp + 352]
                        mov              rbp, qword ptr [rbp + 360]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00106_2]
                        lea              rdx, [rip + .Lx00106_3]
                                                                                        jmp   proc_arrange_α
.Lx00106_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00106_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rcx
                        mov              qword ptr [rsp + 2768], rdx
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2752
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00108_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 104
                                                                                        je    n00109_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]                    # d
                        mov              rsi, qword ptr [rbp + 2504]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00109_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00109_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00112_call_builtin_icon_α
.Lx00111_0:
                        .quad            .Lx00111_0_s
.Lx00111_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn453:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]                         # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00109_call_builtin_icon_α
                                                                                        jmp   n00113_assign_var_α
n00112_call_builtin_icon_β:
                                                                                        jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # var
                        mov              rsi, qword ptr [rbp + 2520]                    # var
                        mov              rdx, qword ptr [rbp + 2544]                    # val
                        mov              rcx, qword ptr [rbp + 2552]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00109_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn456:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]                         # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n00114_make_list_α
                                                                                        jmp   n00115_assign_α
n00109_call_builtin_icon_β:
                                                                                        jmp   n00114_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00114_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00116_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00118_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn464:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00119_var_α
                                                                                        jmp   n00120_assign_α
n00118_call_builtin_icon_β:
                                                                                        jmp   n00119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00122_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # lo
                        mov              rsi, qword ptr [rbp + 2440]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00123_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00124_lit_string_α
n00123_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00125_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00126_scan_α
.Lx00125_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00125_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00126_scan_α
.Lx00125_1:
                                                                                        jmp   n00126_scan_α
n00123_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00127_disjunction_β
                                                                                        jmp   n00128_scan_α
n00123_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00129_var_α
                                                                                        jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00117_var_α
n00126_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00123_disjunction_β
                                                                                        jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_conjunction_α:
                                                                                        jmp   n00123_disjunction_as
n00130_conjunction_β:
                                                                                        jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00131_var_α
n00129_var_β:
                                                                                        jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn480:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]                         # fn
                        lea              rsi, [rbp + 2352]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n00128_scan_α
                                                                                        jmp   n00123_disjunction_as
n00132_call_builtin_icon_β:
                                                                                        jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00134_scan_match_α
n00124_lit_string_β:
                                                                                        jmp   n00123_disjunction_af
.Lx00133_0:
                        .quad            .Lx00133_0_s
.Lx00133_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00134_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00135_239
                        add              rsp, 16
                                                                                        jmp   n00123_disjunction_af
.Lx00135_239:
                        mov              rdi, qword ptr [rip + .Lx00135_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00135_240
                        add              rsp, 16
                                                                                        jmp   n00123_disjunction_af
.Lx00135_240:
                        mov              qword ptr [rbp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00136_scan_tab_α
.Lx00135_0:
                        .quad            .Lx00135_0_s
.Lx00135_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00136_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00137_0
                        add              rax, r15
                        add              rax, 1
.Lx00137_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00137_239
                        add              rsp, 16
                                                                                        jmp   n00123_disjunction_af
.Lx00137_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00137_240
                        add              rsp, 16
                                                                                        jmp   n00123_disjunction_af
.Lx00137_240:
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
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00138_lit_integer_α
n00136_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00123_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00140_scan_pos_α
.Lx00139_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00140_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00141_0
                        add              rax, r15
                        add              rax, 1
.Lx00141_0:
                        cmp              rax, 1
                                                                                        jl    n00142_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00142_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00142_var_α
                        mov              qword ptr [rbp + 2224], 3
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00136_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00142_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00143_conjunction_α
n00142_var_β:
                                                                                        jmp   n00136_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00143_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00144_disjunction_α
n00143_conjunction_β:
                                                                                        jmp   n00123_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00144_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00145_lit_string_α
n00144_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00146_0
                                                                                        jmp   n00147_lit_integer_α
.Lx00146_0:
                                                                                        jmp   n00147_lit_integer_α
n00144_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00147_lit_integer_α
n00144_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00148_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00149_scan_move_α
.Lx00148_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00150_239
                        add              rsp, 16
                                                                                        jmp   n00128_scan_α
.Lx00150_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00150_240
                        add              rsp, 16
                                                                                        jmp   n00128_scan_α
.Lx00150_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00151_assign_α
n00149_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00152_var_α
n00127_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00153_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00147_lit_integer_α
.Lx00153_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00153_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00147_lit_integer_α
.Lx00153_1:
                                                                                        jmp   n00147_lit_integer_α
n00127_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00154_disjunction_β
                                                                                        jmp   n00147_lit_integer_α
n00127_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00155_lit_string_α
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00156_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00157_var_α
n00155_lit_string_β:
                                                                                        jmp   n00147_lit_integer_α
.Lx00156_0:
                        .quad            .Lx00156_0_s
.Lx00156_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn503:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]                         # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n00147_lit_integer_α
                                                                                        jmp   n00127_disjunction_as
n00158_call_builtin_icon_β:
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00159_var_α
n00152_var_β:
                                                                                        jmp   n00127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00160_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00161_60:
                        .section         .rodata
.Lbynamegenfn182:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn182]                  # fn
                        lea              rsi, [rbp + 1840]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1872]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00127_disjunction_af
                                                                                        jmp   n00162_lit_integer_α
n00160_call_builtin_gen_β:
                                                                                        jmp   .Lx00161_60
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00163_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00164_coerce_numeric_α
.Lx00163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00164_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 5
                                                                                        je    .Lx00165_1
                        cmp              eax, 3
                                                                                        jne   .Lx00165_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx00165_0
.Lx00165_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00166_binop_α
.Lx00165_0:
                        lea              rdi, [rbp + 1824]                              # self
                        lea              rsi, [rbp + 1920]                              # other
                        lea              rdx, [rbp + 1808]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00166_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00167_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00168_assign_α
.Lx00167_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00127_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00171_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00147_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00172_lit_charset_α
n00154_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00173_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00174_assign_var_α
.Lx00173_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00173_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00174_assign_var_α
.Lx00173_1:
                                                                                        jmp   n00174_assign_var_α
n00154_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00147_lit_integer_α
                                                                                        jmp   n00147_lit_integer_α
n00154_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00175_lit_integer_α
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]                     # var
                        mov              rsi, qword ptr [rbp + 536]                     # var
                        mov              rdx, qword ptr [rbp + 560]                     # val
                        mov              rcx, qword ptr [rbp + 568]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00147_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00127_disjunction_as
n00174_assign_var_β:
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00154_disjunction_as
n00175_lit_integer_β:
                                                                                        jmp   n00147_lit_integer_α
.Lx00176_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00177_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00178_var_ref_α
n00172_lit_charset_β:
                                                                                        jmp   n00154_disjunction_af
.Lx00177_0:
                        .quad            .Lx00177_0_s
.Lx00177_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00179_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00180_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00181_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00183_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn199:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn199]                     # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                                                                                        jmp   n00184_disjunction_α
n00183_call_builtin_icon_β:
                                                                                        jmp   n00154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00184_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00185_lit_string_α
n00184_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00186_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00187_assign_α
.Lx00186_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00186_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00187_assign_α
.Lx00186_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00186_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00187_assign_α
.Lx00186_2:
                                                                                        jmp   n00187_assign_α
n00184_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00184_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00184_disjunction_af
                                                                                        jmp   n00184_disjunction_af
n00184_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00188_var_α
                        cmp              eax, 2
                                                                                        je    n00189_lit_string_α
                                                                                        jmp   n00190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00187_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00190_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00193_call_builtin_α
.Lx00192_0:
                        .quad            .Lx00192_0_s
.Lx00192_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00193_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn539:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00194_lit_string_α
                                                                                        jmp   n00195_var_α
n00193_call_builtin_β:
                                                                                        jmp   n00194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00196_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00198_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00199_call_builtin_α
.Lx00198_0:
                        .quad            .Lx00198_0_s
.Lx00198_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00199_call_builtin_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn545:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00200_lit_string_α
                                                                                        jmp   n00201_disjunction_α
n00199_call_builtin_β:
                                                                                        jmp   n00200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00202_var_α
n00201_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00203_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00204_assign_α
.Lx00203_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00203_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00204_assign_α
.Lx00203_1:
                                                                                        jmp   n00204_assign_α
n00201_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00201_disjunction_af
                                                                                        jmp   n00201_disjunction_af
n00201_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00205_lit_string_α
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00204_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00207_var_α
n00205_lit_string_β:
                                                                                        jmp   n00201_disjunction_af
.Lx00206_0:
                        .quad            .Lx00206_0_s
.Lx00206_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00209_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00210_call_builtin_icon_α
.Lx00209_0:
                        .quad            .Lx00209_0_s
.Lx00209_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn554:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00201_disjunction_af
                                                                                        jmp   n00201_disjunction_as
n00210_call_builtin_icon_β:
                                                                                        jmp   n00201_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00211_call_builtin_icon_α
n00202_var_β:
                                                                                        jmp   n00201_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn558:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00201_disjunction_af
                                                                                        jmp   n00201_disjunction_as
n00211_call_builtin_icon_β:
                                                                                        jmp   n00201_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00200_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00212_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00213_call_builtin_α
.Lx00212_0:
                        .quad            .Lx00212_0_s
.Lx00212_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00213_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn561:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n00147_lit_integer_α
                                                                                        jmp   n00214_disjunction_α
n00213_call_builtin_β:
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00215_var_α
n00214_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00216_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00217_assign_α
.Lx00216_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00216_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00217_assign_α
.Lx00216_1:
                                                                                        jmp   n00217_assign_α
n00214_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00214_disjunction_af
                                                                                        jmp   n00214_disjunction_af
n00214_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00218_lit_string_α
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00219_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00219_conjunction_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00154_disjunction_as
n00219_conjunction_β:
                                                                                        jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00220_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00221_var_α
n00218_lit_string_β:
                                                                                        jmp   n00214_disjunction_af
.Lx00220_0:
                        .quad            .Lx00220_0_s
.Lx00220_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00221_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00223_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00224_call_builtin_icon_α
.Lx00223_0:
                        .quad            .Lx00223_0_s
.Lx00223_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn573:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00214_disjunction_af
                                                                                        jmp   n00214_disjunction_as
n00224_call_builtin_icon_β:
                                                                                        jmp   n00214_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00225_call_builtin_icon_α
n00215_var_β:
                                                                                        jmp   n00214_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn577:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn577]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00214_disjunction_af
                                                                                        jmp   n00214_disjunction_as
n00225_call_builtin_icon_β:
                                                                                        jmp   n00214_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00189_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00226_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00227_var_α
n00189_lit_string_β:
                                                                                        jmp   n00184_disjunction_af
.Lx00226_0:
                        .quad            .Lx00226_0_s
.Lx00226_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00228_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn582:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]                         # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00184_disjunction_af
                                                                                        jmp   n00184_disjunction_as
n00228_call_builtin_icon_β:
                                                                                        jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00229_call_builtin_icon_α
n00188_var_β:
                                                                                        jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00229_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn586:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]                         # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00184_disjunction_af
                                                                                        jmp   n00184_disjunction_as
n00229_call_builtin_icon_β:
                                                                                        jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00185_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00230_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00231_lit_integer_α
n00185_lit_string_β:
                                                                                        jmp   n00184_disjunction_af
.Lx00230_0:
                        .quad            .Lx00230_0_s
.Lx00230_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00232_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00233_scan_tab_α
.Lx00232_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00233_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00234_0
                        add              rax, r15
                        add              rax, 1
.Lx00234_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00234_239
                        add              rsp, 16
                                                                                        jmp   n00184_disjunction_af
.Lx00234_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00234_240
                        add              rsp, 16
                                                                                        jmp   n00184_disjunction_af
.Lx00234_240:
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00235_binop_test_α
n00233_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00235_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lhs
                        mov              rsi, qword ptr [rbp + 1400]                    # lhs
                        mov              rdx, qword ptr [rbp + 1408]                    # rhs
                        mov              rcx, qword ptr [rbp + 1416]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00184_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]                    # d
                        mov              rsi, qword ptr [rbp + 1416]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00184_disjunction_as
n00235_binop_test_β:
                                                                                        jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00117_var_α
n00128_scan_β:
                                                                                        jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00236_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00237_scan_match_α
n00145_lit_string_β:
                                                                                        jmp   n00144_disjunction_af
.Lx00236_0:
                        .quad            .Lx00236_0_s
.Lx00236_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00237_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00238_239
                        add              rsp, 16
                                                                                        jmp   n00144_disjunction_af
.Lx00238_239:
                        mov              rdi, qword ptr [rip + .Lx00238_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00238_240
                        add              rsp, 16
                                                                                        jmp   n00144_disjunction_af
.Lx00238_240:
                        mov              qword ptr [rbp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00239_scan_tab_α
.Lx00238_0:
                        .quad            .Lx00238_0_s
.Lx00238_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00239_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00240_0
                        add              rax, r15
                        add              rax, 1
.Lx00240_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00240_239
                        add              rsp, 16
                                                                                        jmp   n00144_disjunction_af
.Lx00240_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00240_240
                        add              rsp, 16
                                                                                        jmp   n00144_disjunction_af
.Lx00240_240:
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
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00241_lit_integer_α
n00239_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00144_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00242_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00243_scan_pos_α
.Lx00242_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00243_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00244_0
                        add              rax, r15
                        add              rax, 1
.Lx00244_0:
                        cmp              rax, 1
                                                                                        jl    n00239_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00239_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00239_scan_tab_β
                        mov              qword ptr [rbp + 2080], 3
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00245_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00119_var_α
n00245_conjunction_β:
                                                                                        jmp   n00144_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00246_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00247_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn608:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00248_var_α
                                                                                        jmp   n00249_call_builtin_icon_α
n00247_call_builtin_icon_β:
                                                                                        jmp   n00248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn610:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00248_var_α
                                                                                        jmp   n00119_var_α
n00249_call_builtin_icon_β:
                                                                                        jmp   n00248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00250_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00250_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2768]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00251_2]
                        lea              rdx, [rip + .Lx00251_3]
                                                                                        jmp   proc_options_α
.Lx00251_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00251_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 448
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00253_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052432], rax                    # Name__
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00254_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00255_2
.Lx00255_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n00256_call_proc_staged_α
                                                                                        jmp   n00256_call_proc_staged_α
n00254_call_proc_staged_β:
                                                                                        jmp   n00256_call_proc_staged_α
.Lx00255_0:
                        .quad            .Lx00255_0_s
.Lx00255_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00257_2
.Lx00257_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n00258_call_proc_staged_α
                                                                                        jmp   n00258_call_proc_staged_α
n00256_call_proc_staged_β:
                                                                                        jmp   n00258_call_proc_staged_α
.Lx00257_0:
                        .quad            .Lx00257_0_s
.Lx00257_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00259_2
.Lx00259_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00260_disjunction_α
                                                                                        jmp   n00260_disjunction_α
n00258_call_proc_staged_β:
                                                                                        jmp   n00260_disjunction_α
.Lx00259_0:
                        .quad            .Lx00259_0_s
.Lx00259_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00260_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00261_lit_string_α
n00260_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00262_0
                                                                                        jmp   n00263_var_α
.Lx00262_0:
                                                                                        jmp   n00263_var_α
n00260_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00263_var_α
n00260_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:
                        mov              rdi, qword ptr [rip + .Lx00264_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00265_var_α
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00266_assign_α
.Lx00264_0:
                        .quad            .Lx00264_0_s
.Lx00264_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052400], rax                    # Save__
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_var_α:
                        mov              rdi, qword ptr [rip + .Lx00267_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00268_lit_integer_α
                        mov              qword ptr [rbp + 80], rax                      # result
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00269_assign_α
.Lx00267_0:
                        .quad            .Lx00267_0_s
.Lx00267_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00269_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052416], rax                    # Saves__
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n00268_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00270_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00271_assign_α
.Lx00270_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00271_assign_α:
                        mov              rsi, qword ptr [rbp + 64]                      # val
                        mov              rdx, qword ptr [rbp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx00272_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00273_assign_α
.Lx00272_0:
                        .quad            .Lx00272_0_s
.Lx00272_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00273_assign_α:
                        mov              rsi, qword ptr [rbp + 48]                      # val
                        mov              rdx, qword ptr [rbp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx00274_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00275_return_α
.Lx00274_0:
                        .quad            .Lx00274_0_s
.Lx00274_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00275_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00276_conjunction_α:
                                                                                        jmp   n00260_disjunction_as
n00276_conjunction_β:
                                                                                        jmp   n00263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00278_call_builtin_icon_α
n00261_lit_string_β:
                                                                                        jmp   n00260_disjunction_af
.Lx00277_0:
                        .quad            .Lx00277_0_s
.Lx00277_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn657:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn657]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00260_disjunction_af
                                                                                        jmp   n00279_lit_string_α
n00278_call_builtin_icon_β:
                                                                                        jmp   n00260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00279_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00280_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00281_call_builtin_icon_α
.Lx00280_0:
                        .quad            .Lx00280_0_s
.Lx00280_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00282_return_α
                                                                                        jmp   n00282_return_α
n00281_call_builtin_icon_β:
                                                                                        jmp   n00282_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 464]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00283_2]
                        lea              rdx, [rip + .Lx00283_3]
                                                                                        jmp   proc_Init___α
.Lx00283_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00283_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 496
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00284_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00285_lit_string_α
n00284_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00286_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00287_var_α
.Lx00286_0:
                                                                                        jmp   n00287_var_α
n00284_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00287_var_α
n00284_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00288_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00289_call_builtin_icon_α
n00285_lit_string_β:
                                                                                        jmp   n00290_var_α
.Lx00288_0:
                        .quad            .Lx00288_0_s
.Lx00288_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn684:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n00290_var_α
                                                                                        jmp   n00284_disjunction_af
n00289_call_builtin_icon_β:
                                                                                        jmp   n00290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00291_var_α
n00290_var_β:
                                                                                        jmp   n00284_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_α:
                        mov              rax, qword ptr [1879052400]                    # Save__
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00292_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_assign_α:
                        mov              rsi, qword ptr [rbp + 352]                     # val
                        mov              rdx, qword ptr [rbp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx00293_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00294_var_α
.Lx00293_0:
                        .quad            .Lx00293_0_s
.Lx00293_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:
                        mov              rax, qword ptr [1879052416]                    # Saves__
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00295_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:
                        mov              rsi, qword ptr [rbp + 320]                     # val
                        mov              rdx, qword ptr [rbp + 328]                     # val
                        mov              rdi, qword ptr [rip + .Lx00296_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00297_conjunction_α
.Lx00296_0:
                        .quad            .Lx00296_0_s
.Lx00296_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00297_conjunction_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00284_disjunction_as
n00297_conjunction_β:
                                                                                        jmp   n00287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:
                        mov              rax, qword ptr [1879052432]                    # Name__
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00298_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00299_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00300_call_proc_staged_α
.Lx00299_0:
                        .quad            .Lx00299_0_s
.Lx00299_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00300_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00301_2
.Lx00301_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00302_call_proc_staged_α
                                                                                        jmp   n00303_call_builtin_icon_α
n00300_call_proc_staged_β:
                                                                                        jmp   n00302_call_proc_staged_α
.Lx00301_0:
                        .quad            .Lx00301_0_s
.Lx00301_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn696:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00302_call_proc_staged_α
                                                                                        jmp   n00302_call_proc_staged_α
n00303_call_builtin_icon_β:
                                                                                        jmp   n00302_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00304_2
.Lx00304_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00305_call_proc_staged_α
                                                                                        jmp   n00305_call_proc_staged_α
n00302_call_proc_staged_β:
                                                                                        jmp   n00305_call_proc_staged_α
.Lx00304_0:
                        .quad            .Lx00304_0_s
.Lx00304_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00305_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00306_2
.Lx00306_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00307_call_proc_staged_α
                                                                                        jmp   n00307_call_proc_staged_α
n00305_call_proc_staged_β:
                                                                                        jmp   n00307_call_proc_staged_α
.Lx00306_0:
                        .quad            .Lx00306_0_s
.Lx00306_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00307_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00308_2
.Lx00308_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00309_return_α
                                                                                        jmp   n00309_return_α
n00307_call_proc_staged_β:
                                                                                        jmp   n00309_return_α
.Lx00308_0:
                        .quad            .Lx00308_0_s
.Lx00308_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00309_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 512]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00310_2]
                        lea              rdx, [rip + .Lx00310_3]
                                                                                        jmp   proc_Term___α
.Lx00310_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00310_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 928
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00311_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00312_var_ref_α
n00311_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00313_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00314_make_list_α
.Lx00313_0:
                                                                                        jmp   n00314_make_list_α
n00311_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00314_make_list_α
n00311_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00314_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00315_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00317_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00318_1:
                        mov              rdi, qword ptr [rip + .Lx00318_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00319_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00320_call_builtin_icon_α
n00317_keyword_icon_gen_β:
                                                                                        jmp   .Lx00318_1
.Lx00318_0:
                        .quad            .Lx00318_0_s
.Lx00318_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00320_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn751:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn751]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00317_keyword_icon_gen_β
                                                                                        jmp   n00317_keyword_icon_gen_β
n00320_call_builtin_icon_β:
                                                                                        jmp   n00317_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00321_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00322_call_builtin_icon_α
.Lx00321_0:
                        .quad            .Lx00321_0_s
.Lx00321_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn754:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn754]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00323_lit_integer_α
                                                                                        jmp   n00323_lit_integer_α
n00322_call_builtin_icon_β:
                                                                                        jmp   n00323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00324_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00325_var_α
.Lx00324_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_α:
                        mov              rax, qword ptr [1879052576]                    # Collections____STATIC__labels
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00326_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00327_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00328_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00329_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00330_assign_α
n00327_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00328_0
#-----------------------------------------------------------------------------------------------------------------------
n00330_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00331_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                                # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00333_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00334_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00334_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00336_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00337_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00338_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00339_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00340_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00340_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00341_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00342_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00343_call_builtin_icon_α
.Lx00342_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn777:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn777]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                                                                                        jmp   n00344_call_builtin_icon_α
n00343_call_builtin_icon_β:
                                                                                        jmp   n00335_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00335_unmark_α
                                                                                        jmp   n00335_unmark_α
n00344_call_builtin_icon_β:
                                                                                        jmp   n00335_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00327_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00329_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                                # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00345_nulltest_var_α
n00312_var_ref_β:
                                                                                        jmp   n00311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00345_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 104
                                                                                        je    n00311_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00311_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00311_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00346_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00347_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00348_assign_var_α
.Lx00347_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00348_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]                     # var
                        mov              rsi, qword ptr [rbp + 840]                     # var
                        mov              rdx, qword ptr [rbp + 864]                     # val
                        mov              rcx, qword ptr [rbp + 872]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00311_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00350_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00351_lit_string_α
.Lx00350_0:
                        .quad            .Lx00350_0_s
.Lx00350_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00352_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00353_lit_string_α
.Lx00352_0:
                        .quad            .Lx00352_0_s
.Lx00352_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00354_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00355_lit_string_α
.Lx00354_0:
                        .quad            .Lx00354_0_s
.Lx00354_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00355_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00356_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00357_make_list_α
.Lx00356_0:
                        .quad            .Lx00356_0_s
.Lx00356_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00357_make_list_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00358_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052576], rax                    # Collections____STATIC__labels
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00311_disjunction_as
n00358_assign_β:
                                                                                        jmp   n00314_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 944]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00359_2]
                        lea              rdx, [rip + .Lx00359_3]
                                                                                        jmp   proc_Collections___α
.Lx00359_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00359_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00360_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00361_var_ref_α
n00360_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00362_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00363_make_list_α
.Lx00362_0:
                                                                                        jmp   n00363_make_list_α
n00360_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00363_make_list_α
n00360_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00363_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00364_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00366_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00367_1:
                        mov              rdi, qword ptr [rip + .Lx00367_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00368_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00369_call_builtin_icon_α
n00366_keyword_icon_gen_β:
                                                                                        jmp   .Lx00367_1
.Lx00367_0:
                        .quad            .Lx00367_0_s
.Lx00367_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00369_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn841:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn841]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00366_keyword_icon_gen_β
                                                                                        jmp   n00366_keyword_icon_gen_β
n00369_call_builtin_icon_β:
                                                                                        jmp   n00366_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00370_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00371_call_builtin_icon_α
.Lx00370_0:
                        .quad            .Lx00370_0_s
.Lx00370_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00371_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn844:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn844]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00372_lit_integer_α
                                                                                        jmp   n00372_lit_integer_α
n00371_call_builtin_icon_β:
                                                                                        jmp   n00372_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00373_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00374_var_α
.Lx00373_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:
                        mov              rax, qword ptr [1879052608]                    # Regions____STATIC__labels
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00375_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00376_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00377_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00378_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00379_assign_α
n00376_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00377_0
#-----------------------------------------------------------------------------------------------------------------------
n00379_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00380_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00381_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                                # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00383_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00383_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00385_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00388_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00389_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00390_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00391_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00392_call_builtin_icon_α
.Lx00391_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00392_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn867:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn867]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                                                                                        jmp   n00393_call_builtin_icon_α
n00392_call_builtin_icon_β:
                                                                                        jmp   n00384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00384_unmark_α
                                                                                        jmp   n00384_unmark_α
n00393_call_builtin_icon_β:
                                                                                        jmp   n00384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00376_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00378_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00361_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                                # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00394_nulltest_var_α
n00361_var_ref_β:
                                                                                        jmp   n00360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00394_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00360_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00360_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00360_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00396_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00397_assign_var_α
.Lx00396_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00397_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00360_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00399_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00400_lit_string_α
.Lx00399_0:
                        .quad            .Lx00399_0_s
.Lx00399_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00400_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00401_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00402_lit_string_α
.Lx00401_0:
                        .quad            .Lx00401_0_s
.Lx00401_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00402_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00403_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00404_make_list_α
.Lx00403_0:
                        .quad            .Lx00403_0_s
.Lx00403_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00404_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00405_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00405_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052608], rax                    # Regions____STATIC__labels
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00360_disjunction_as
n00405_assign_β:
                                                                                        jmp   n00363_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00406_2]
                        lea              rdx, [rip + .Lx00406_3]
                                                                                        jmp   proc_Regions___α
.Lx00406_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00406_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00407_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00408_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00409_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00410_call_builtin_icon_α
n00407_keyword_icon_β:
                                                                                        jmp   n00409_keyword_icon_α
.Lx00408_0:
                        .quad            .Lx00408_0_s
.Lx00408_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00410_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00409_keyword_icon_α
                                                                                        jmp   n00409_keyword_icon_α
n00410_call_builtin_icon_β:
                                                                                        jmp   n00409_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00411_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00412_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00413_call_builtin_icon_α
n00409_keyword_icon_β:
                                                                                        jmp   n00412_keyword_icon_gen_α
.Lx00411_0:
                        .quad            .Lx00411_0_s
.Lx00411_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00413_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn897:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n00412_keyword_icon_gen_α
                                                                                        jmp   n00412_keyword_icon_gen_α
n00413_call_builtin_icon_β:
                                                                                        jmp   n00412_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00412_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00414_1:
                        mov              rdi, qword ptr [rip + .Lx00414_0]                # sval
                        mov              rsi, qword ptr [rbp + 80]                      # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00415_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00416_call_builtin_icon_α
n00412_keyword_icon_gen_β:
                                                                                        jmp   .Lx00414_1
.Lx00414_0:
                        .quad            .Lx00414_0_s
.Lx00414_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn900:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00412_keyword_icon_gen_β
                                                                                        jmp   n00412_keyword_icon_gen_β
n00416_call_builtin_icon_β:
                                                                                        jmp   n00412_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00415_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00417_2]
                        lea              rdx, [rip + .Lx00417_3]
                                                                                        jmp   proc_Signature___α
.Lx00417_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00417_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00418_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00419_var_ref_α
n00418_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00420_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00421_make_list_α
.Lx00420_0:
                                                                                        jmp   n00421_make_list_α
n00418_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00421_make_list_α
n00418_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00421_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00422_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00424_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00425_1:
                        mov              rdi, qword ptr [rip + .Lx00425_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00426_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00427_call_builtin_icon_α
n00424_keyword_icon_gen_β:
                                                                                        jmp   .Lx00425_1
.Lx00425_0:
                        .quad            .Lx00425_0_s
.Lx00425_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00427_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn948:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn948]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00424_keyword_icon_gen_β
                                                                                        jmp   n00424_keyword_icon_gen_β
n00427_call_builtin_icon_β:
                                                                                        jmp   n00424_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00426_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00428_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00429_call_builtin_icon_α
.Lx00428_0:
                        .quad            .Lx00428_0_s
.Lx00428_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00429_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn951:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn951]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00430_lit_integer_α
                                                                                        jmp   n00430_lit_integer_α
n00429_call_builtin_icon_β:
                                                                                        jmp   n00430_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00431_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00432_var_α
.Lx00431_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00432_var_α:
                        mov              rax, qword ptr [1879052640]                    # Storage____STATIC__labels
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00433_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00434_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00434_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00435_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00436_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00437_assign_α
n00434_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00435_0
#-----------------------------------------------------------------------------------------------------------------------
n00437_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00438_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                                # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00440_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00441_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00443_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00444_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00445_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00445_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00446_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00447_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00449_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00450_call_builtin_icon_α
.Lx00449_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00450_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn974:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn974]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                                                                                        jmp   n00451_call_builtin_icon_α
n00450_call_builtin_icon_β:
                                                                                        jmp   n00442_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn976:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00442_unmark_α
                                                                                        jmp   n00442_unmark_α
n00451_call_builtin_icon_β:
                                                                                        jmp   n00442_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00434_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00436_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00419_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                                # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00452_nulltest_var_α
n00419_var_ref_β:
                                                                                        jmp   n00418_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00452_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00418_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00418_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00418_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00453_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00454_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00455_assign_var_α
.Lx00454_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00455_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00418_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00457_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00458_lit_string_α
.Lx00457_0:
                        .quad            .Lx00457_0_s
.Lx00457_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00458_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00459_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00460_lit_string_α
.Lx00459_0:
                        .quad            .Lx00459_0_s
.Lx00459_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00460_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00461_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00462_make_list_α
.Lx00461_0:
                        .quad            .Lx00461_0_s
.Lx00461_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00462_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00463_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052640], rax                    # Storage____STATIC__labels
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00418_disjunction_as
n00463_assign_β:
                                                                                        jmp   n00421_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00464_2]
                        lea              rdx, [rip + .Lx00464_3]
                                                                                        jmp   proc_Storage___α
.Lx00464_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00464_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00465_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00466_var_ref_α
n00465_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00467_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00468_keyword_icon_α
.Lx00467_0:
                                                                                        jmp   n00468_keyword_icon_α
n00465_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00468_keyword_icon_α
n00465_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00468_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00469_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00470_var_α
n00468_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00469_0:
                        .quad            .Lx00469_0_s
.Lx00469_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00470_var_α:
                        mov              rax, qword ptr [1879052672]                    # Time____STATIC__lasttime
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00471_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx00472_1
                        cmp              eax, 3
                                                                                        jne   .Lx00472_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00472_0
.Lx00472_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00473_coerce_numeric_α
.Lx00472_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00473_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx00474_1
                        cmp              eax, 3
                                                                                        jne   .Lx00474_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00474_0
.Lx00474_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00475_binop_α
.Lx00474_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 64]                                # other
                        lea              rdx, [rbp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00475_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00475_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00476_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00476_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00477_return_α
.Lx00476_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00477_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00466_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                                # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00478_nulltest_var_α
n00466_var_ref_β:
                                                                                        jmp   n00465_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00478_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n00465_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00465_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00465_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00479_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00480_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00481_assign_var_α
.Lx00480_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00481_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00465_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00482_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00483_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00468_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00484_assign_α
n00482_keyword_icon_β:
                                                                                        jmp   n00468_keyword_icon_α
.Lx00483_0:
                        .quad            .Lx00483_0_s
.Lx00483_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00484_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052672], rax                    # Time____STATIC__lasttime
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00465_disjunction_as
n00484_assign_β:
                                                                                        jmp   n00468_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00485_2]
                        lea              rdx, [rip + .Lx00485_3]
                                                                                        jmp   proc_Time___α
.Lx00485_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00485_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shuffle_α
proc_shuffle_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 240
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_shuffle_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00486_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00487_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1036:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1036]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00488_var_ref_α
                                                                                        jmp   n00489_assign_α
n00487_call_builtin_icon_β:
                                                                                        jmp   n00488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00490_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx00491_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 104
                                                                                        je    n00492_var_α
                                                                                        jmp   n00493_var_ref_α
n00490_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx00491_0
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00494_random_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_random_α:
                        mov              rdi, qword ptr [rbp + 112]                     # base
                        mov              rsi, qword ptr [rbp + 120]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n00492_var_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00495_swap_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_swap_var_α:
                        mov              rdi, qword ptr [rbp + 48]                      # va
                        mov              rsi, qword ptr [rbp + 56]                      # va
                        mov              rdx, qword ptr [rbp + 96]                      # vb
                        mov              rcx, qword ptr [rbp + 104]                     # vb
                        call             rt_swap_var@PLT
                        cmp              eax, 104
                                                                                        je    n00492_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00490_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00492_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00496_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_shuffle_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_β:
                                                                                        jmp   proc_shuffle_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 272]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_ω:
                        lea              rsp, [rbp + 272]
                        mov              rcx, qword ptr [rbp + 256]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00497_2]
                        lea              rdx, [rip + .Lx00497_3]
                                                                                        jmp   proc_shuffle_α
.Lx00497_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00497_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_display_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1808
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_display_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_arrange_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_arrange_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_shuffle_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_shuffle_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "deck"
.Lgvan1:                .string          "deckimage"
.Lgvan2:                .string          "handsize"
.Lgvan3:                .string          "suitsize"
.Lgvan4:                .string          "denom"
.Lgvan5:                .string          "rank"
.Lgvan6:                .string          "blanker"
.Lgvan7:                .string          "Save__"
.Lgvan8:                .string          "Saves__"
.Lgvan9:                .string          "Name__"
.Lgvan10:               .string          "display__STATIC__bar"
.Lgvan11:               .string          "display__STATIC__offset"
.Lgvan12:               .string          "display__INITFLAG__0"
.Lgvan13:               .string          "show__STATIC__clubmap"
.Lgvan14:               .string          "show__STATIC__diamondmap"
.Lgvan15:               .string          "show__STATIC__heartmap"
.Lgvan16:               .string          "show__STATIC__spademap"
.Lgvan17:               .string          "show__INITFLAG__0"
.Lgvan18:               .string          "Collections____STATIC__labels"
.Lgvan19:               .string          "Collections____INITFLAG__0"
.Lgvan20:               .string          "Regions____STATIC__labels"
.Lgvan21:               .string          "Regions____INITFLAG__0"
.Lgvan22:               .string          "Storage____STATIC__labels"
.Lgvan23:               .string          "Storage____INITFLAG__0"
.Lgvan24:               .string          "Time____STATIC__lasttime"
.Lgvan25:               .string          "Time____INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 26
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 26
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1024
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00498_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 4
                        mov              rax, qword ptr [rip + .Lx00499_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00500_call_proc_staged_α
.Lx00499_0:
                        .quad            .Lx00499_0_s
.Lx00499_0_s:
                        .string          "deal"
#-----------------------------------------------------------------------------------------------------------------------
n00500_call_proc_staged_α:
                        lea              rsi, [rbp + 960]
                        call             proc_Init___dcα
                                                                                        jmp   .Lx00501_2
.Lx00501_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n00502_lit_charset_α
                                                                                        jmp   n00502_lit_charset_α
n00500_call_proc_staged_β:
                                                                                        jmp   n00502_lit_charset_α
.Lx00501_0:
                        .quad            .Lx00501_0_s
.Lx00501_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00502_lit_charset_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], -1
                        mov              rax, qword ptr [rip + .Lx00503_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00504_call_builtin_icon_α
.Lx00503_0:
                        .quad            .Lx00503_0_s
.Lx00503_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00504_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn1105:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1105]                        # fn
                        lea              rsi, [rbp + 864]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n00505_var_α
                                                                                        jmp   n00506_assign_α
n00504_call_builtin_icon_β:
                                                                                        jmp   n00505_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052304], rax                    # deckimage
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00507_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052288], rax                    # deck
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00505_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_var_α:
                        mov              rax, qword ptr [1879052288]                    # deck
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 800], rax                     # result
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00508_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_unop_α:
                        mov              rdi, qword ptr [rbp + 800]                     # lo
                        mov              rsi, qword ptr [rbp + 808]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00509_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00510_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00511_coerce_numeric_α
.Lx00510_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00511_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 5
                                                                                        je    .Lx00512_1
                        cmp              eax, 3
                                                                                        jne   .Lx00512_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00512_0
.Lx00512_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00513_binop_α
.Lx00512_0:
                        lea              rdi, [rbp + 784]                               # self
                        lea              rsi, [rbp + 816]                               # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00513_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_binop_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n00514_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00515_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052336], rax                    # suitsize
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00516_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052320], rax                    # handsize
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00514_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 13
                        mov              rax, qword ptr [rip + .Lx00517_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00518_assign_α
.Lx00517_0:
                        .quad            .Lx00517_0_s
.Lx00517_0_s:
                        .string          "AKQJT98765432"
#-----------------------------------------------------------------------------------------------------------------------
n00518_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [1879052368], rax                    # rank
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00519_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx00520_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00521_var_α
.Lx00520_0:
                        .quad            .Lx00520_0_s
.Lx00520_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00521_var_α:
                        mov              rax, qword ptr [1879052336]                    # suitsize
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 704], rax                     # result
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00522_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn1121:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1121]                        # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n00523_lit_charset_α
                                                                                        jmp   n00524_assign_α
n00522_call_builtin_icon_β:
                                                                                        jmp   n00523_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00524_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052384], rax                    # blanker
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00523_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_lit_charset_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00525_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00526_lit_integer_α
.Lx00525_0:
                        .quad            .Lx00525_0_s
.Lx00525_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00526_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00527_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00528_var_α
.Lx00527_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00528_var_α:
                        mov              rax, qword ptr [1879052336]                    # suitsize
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 592], rax                     # result
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00529_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00529_binop_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx00530_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 600]
                        add              rax, rcx
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00531_subscript_α
.Lx00530_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00532_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00531_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00531_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # arr
                        mov              rsi, qword ptr [rbp + 568]                     # arr
                        mov              rdx, qword ptr [rbp + 576]                     # i
                        mov              rcx, qword ptr [rbp + 584]                     # i
                        mov              r8, qword ptr [rbp + 608]                      # end
                        mov              r9, qword ptr [rbp + 616]                      # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    n00532_var_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00533_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [1879052352], rax                    # denom
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00532_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00534_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 4
                        mov              rax, qword ptr [rip + .Lx00535_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00536_call_proc_staged_α
.Lx00535_0:
                        .quad            .Lx00535_0_s
.Lx00535_0_s:
                        .string          "h+s+"
#-----------------------------------------------------------------------------------------------------------------------
n00536_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 528]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00537_2
.Lx00537_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n00538_disjunction_α
                                                                                        jmp   n00539_assign_α
n00536_call_proc_staged_β:
                                                                                        jmp   n00538_disjunction_α
.Lx00537_0:
                        .quad            .Lx00537_0_s
.Lx00537_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00539_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00538_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00538_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n00540_var_ref_α
n00538_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx00541_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00542_assign_α
.Lx00541_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00541_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00542_assign_α
.Lx00541_1:
                                                                                        jmp   n00542_assign_α
n00538_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n00538_disjunction_af
                                                                                        jmp   n00538_disjunction_af
n00538_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n00543_lit_integer_α
                                                                                        jmp   n00544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00542_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00545_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx00546_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00547_subscript_α
.Lx00546_0:
                        .quad            .Lx00546_0_s
.Lx00546_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n00547_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]                     # base
                        mov              rsi, qword ptr [rbp + 248]                     # base
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        mov              rcx, qword ptr [rbp + 264]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00548_lit_integer_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00549_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00549_deref_α:
                        mov              rdi, qword ptr [rbp + 272]                     # d
                        mov              rsi, qword ptr [rbp + 280]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00548_lit_integer_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00550_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_unop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 104
                                                                                        je    n00548_lit_integer_α
                        cmp              eax, 0
                                                                                        je    n00548_lit_integer_α
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00551_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 224]                     # v
                        mov              rsi, qword ptr [rbp + 232]                     # v
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 104
                                                                                        je    n00548_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n00548_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00552_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00553_var_α
.Lx00552_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00553_var_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00554_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_to_α:
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lx00555_0:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jg    n00556_call_proc_staged_α
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00557_bound_α
n00554_to_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00555_0
#-----------------------------------------------------------------------------------------------------------------------
n00557_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n00558_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_call_proc_staged_α:
                        call             proc_display_dcα
                                                                                        jmp   .Lx00559_2
.Lx00559_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00560_unmark_α
                                                                                        jmp   n00560_unmark_α
n00558_call_proc_staged_β:
                                                                                        jmp   n00560_unmark_α
.Lx00559_0:
                        .quad            .Lx00559_0_s
.Lx00559_0_s:
                        .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
n00560_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n00554_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00556_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00561_2
.Lx00561_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n00556_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00561_0:
                        .quad            .Lx00561_0_s
.Lx00561_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00543_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00562_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00538_disjunction_as
n00543_lit_integer_β:
                                                                                        jmp   n00538_disjunction_af
.Lx00562_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00540_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00563_lit_string_α
n00540_var_ref_β:
                                                                                        jmp   n00538_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00563_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx00564_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00565_subscript_α
.Lx00564_0:
                        .quad            .Lx00564_0_s
.Lx00564_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n00565_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]                     # base
                        mov              rsi, qword ptr [rbp + 376]                     # base
                        mov              rdx, qword ptr [rbp + 384]                     # idx
                        mov              rcx, qword ptr [rbp + 392]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00538_disjunction_af
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00566_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_deref_α:
                        mov              rdi, qword ptr [rbp + 400]                     # d
                        mov              rsi, qword ptr [rbp + 408]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00538_disjunction_af
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00567_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_unop_test_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 104
                                                                                        je    n00538_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00538_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00538_disjunction_as
n00567_unop_test_β:
                                                                                        jmp   n00538_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rbp, qword ptr [rbp + 1048]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1048]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
