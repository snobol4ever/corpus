                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_listtest_α
proc_listtest_α:
                        .global          proc_listtest_α
                        .global          proc_listtest_β
                        .global          proc_listtest_γ
                        .global          proc_listtest_ω
                        sub              rsp, 1440
                        mov              [rsp + 1416], rcx
                        mov              [rsp + 1424], rdx
                        mov              [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1408
                        call             rt_jmp_frame_lexprep2@PLT
proc_listtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n2_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx52_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n1_assign_α
.Lx52_0:
                        cmp              eax, 1
                                                                                        jne   .Lx52_1
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n1_assign_α
.Lx52_1:
                        cmp              eax, 2
                                                                                        jne   .Lx52_2
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n1_assign_α
.Lx52_2:
                        cmp              eax, 3
                                                                                        jne   .Lx52_3
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n1_assign_α
.Lx52_3:
                                                                                        jmp   n1_assign_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n3_to_β
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                        cmp              eax, 2
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n4_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n5_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n6_lit_integer_α
                                                                                        jmp   proc_listtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n7_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_lit_integer_α
n2_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx56_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    n0_disjunction_af
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n0_disjunction_as
n3_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx56_0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n0_disjunction_as
n4_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx57_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n0_disjunction_as
n5_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx58_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n0_disjunction_as
n6_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx59_0:
                        .quad            91
#-----------------------------------------------------------------------------------------------------------------------
n7_bound_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n3_to_α
.Lx62_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n12_call_builtin_icon_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn67:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n14_var_α
                                                                                        jmp   n13_assign_α
n11_call_builtin_icon_β:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn69:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n11_call_builtin_icon_α
                                                                                        jmp   n11_call_builtin_icon_α
n12_call_builtin_icon_β:
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n15_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn75:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n19_var_α
                                                                                        jmp   n18_assign_α
n16_call_builtin_icon_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n20_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_test_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
.Lx81_1:
                        mov              rax, qword ptr [rbp + 1048]
                        mov              rcx, qword ptr [rbp + 1336]
                        cmp              rax, rcx
                                                                                        jge   n16_call_builtin_icon_α
                        mov              rcx, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1024], rcx
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1032], rcx
                                                                                        jmp   n23_var_α
.Lx81_0:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              r8d, 5
                        lea              r9, [rbp + 1024]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx81_1
                        cmp              eax, 1
                                                                                        je    n16_call_builtin_icon_α
                                                                                        jmp   n23_var_α
.Lx81_2:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n16_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n24_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n25_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_iterate_α:
                        mov              qword ptr [rbp + 960], 0
.Lx89_0:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 960]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              rax, 99
                                                                                        je    n22_var_α
                                                                                        jmp   n28_call_builtin_icon_α
n24_iterate_β:
                        inc              qword ptr [rbp + 960]
                                                                                        jmp   .Lx89_0
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn91:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n26_var_α
                                                                                        jmp   n29_assign_α
n25_call_builtin_icon_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        call             proc_randval_dcα
                                                                                        jmp   .Lx95_2
.Lx95_2:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n14_var_α
                                                                                        jmp   n32_call_builtin_icon_α
n27_call_proc_staged_β:
                                                                                        jmp   n14_var_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "randval"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn97:               .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n24_iterate_β
                                                                                        jmp   n24_iterate_β
n28_call_builtin_icon_β:
                                                                                        jmp   n24_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn100:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n33_call_builtin_icon_α
n30_call_builtin_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn104:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n14_var_α
                                                                                        jmp   n14_var_α
n32_call_builtin_icon_β:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn106:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n36_assign_α
n33_call_builtin_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 672]
                        call             proc_check_dcα
                                                                                        jmp   .Lx113_2
.Lx113_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n35_var_α
                                                                                        jmp   n35_var_α
n37_call_proc_staged_β:
                                                                                        jmp   n35_var_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn115:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n39_var_α
                                                                                        jmp   n40_call_builtin_icon_α
n38_call_builtin_icon_β:
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn119:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n39_var_α
                                                                                        jmp   n43_assign_α
n40_call_builtin_icon_β:
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn121:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n42_var_α
                                                                                        jmp   n44_call_builtin_icon_α
n41_call_builtin_icon_β:
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn126:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n42_var_α
                                                                                        jmp   n47_call_builtin_icon_α
n44_call_builtin_icon_β:
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n48_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n46_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn132:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n42_var_α
                                                                                        jmp   n49_assign_α
n47_call_builtin_icon_β:
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α:
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 304]
                        call             proc_check_dcα
                                                                                        jmp   .Lx134_2
.Lx134_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n46_unmark_α
                                                                                        jmp   n50_conjunction_α
n48_call_proc_staged_β:
                                                                                        jmp   n46_unmark_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n46_unmark_α
n50_conjunction_β:
                                                                                        jmp   n46_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_listtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_listtest_β:
                                                                                        jmp   proc_listtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_listtest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1416]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listtest_ω:
                        mov              rax, [rbp + 1424]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listtest_dcα:
                        pop              r11
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1408], r11
                        lea              rax, [rip + .Lx137_2]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rax, [rip + .Lx137_3]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rdi, rbp
                        mov              esi, 1328
                        mov              edx, 1408
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_listtest_α_body
.Lx137_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx137_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rectest_α
proc_rectest_α:
                        .global          proc_rectest_α
                        .global          proc_rectest_β
                        .global          proc_rectest_γ
                        .global          proc_rectest_ω
                        sub              rsp, 1984
                        mov              [rsp + 1960], rcx
                        mov              [rsp + 1968], rdx
                        mov              rdi, rsp
                        mov              esi, 1952
                        mov              edx, 1952
                        call             rt_jmp_frame_lexprep2@PLT
proc_rectest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_α
                                                                                        jmp   n139_call_α
n138_call_builtin_icon_β:
                                                                                        jmp   n139_call_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:
                        .section         .rodata
.Lrkfn193:              .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n141_call_α
                                                                                        jmp   n140_call_builtin_icon_α
n139_call_β:
                                                                                        jmp   n141_call_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn195:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n141_call_α
                                                                                        jmp   n142_call_proc_staged_α
n140_call_builtin_icon_β:
                                                                                        jmp   n141_call_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        .section         .rodata
.Lrkfn197:              .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_integer_α
                                                                                        jmp   n143_call_builtin_icon_α
n141_call_β:
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        lea              rsi, [rsp + 1840]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx199_2
.Lx199_2:
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n141_call_α
                                                                                        jmp   n141_call_α
n142_call_proc_staged_β:
                                                                                        jmp   n141_call_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn201:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_integer_α
                                                                                        jmp   n145_keyword_icon_α
n143_call_builtin_icon_β:
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rsp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1560], rax
                                                                                        jmp   n146_call_α
.Lx202_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n145_keyword_icon_α:
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                                                                                        jmp   n147_call_builtin_icon_α
n145_keyword_icon_β:
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn205:              .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn205]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n149_lit_integer_α
                                                                                        jmp   n148_call_builtin_icon_α
n146_call_β:
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn207:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_integer_α
                                                                                        jmp   n150_call_proc_staged_α
n147_call_builtin_icon_β:
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn209:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n149_lit_integer_α
                                                                                        jmp   n151_call_proc_staged_α
n148_call_builtin_icon_β:
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n152_lit_integer_α
.Lx210_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        lea              rsi, [rsp + 1616]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx212_2
.Lx212_2:
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_integer_α
                                                                                        jmp   n144_lit_integer_α
n150_call_proc_staged_β:
                                                                                        jmp   n144_lit_integer_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        lea              rsi, [rsp + 1456]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx214_2
.Lx214_2:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n149_lit_integer_α
                                                                                        jmp   n149_lit_integer_α
n151_call_proc_staged_β:
                                                                                        jmp   n149_lit_integer_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rsp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1400], rax
                                                                                        jmp   n153_call_α
.Lx215_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn217:              .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                                                                                        jmp   n154_call_builtin_icon_α
n153_call_β:
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn219:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                                                                                        jmp   n156_call_proc_staged_α
n154_call_builtin_icon_β:
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n157_lit_integer_α
.Lx220_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        lea              rsi, [rsp + 1264]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx222_2
.Lx222_2:
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                                                                                        jmp   n155_lit_integer_α
n156_call_proc_staged_β:
                                                                                        jmp   n155_lit_integer_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n158_lit_integer_α
.Lx223_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rsp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n159_lit_integer_α
.Lx224_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rsp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n160_lit_integer_α
.Lx225_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 1200], 6
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n161_call_α
.Lx226_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn228:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n163_lit_integer_α
                                                                                        jmp   n162_call_builtin_icon_α
n161_call_β:
                                                                                        jmp   n163_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn230:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n163_lit_integer_α
                                                                                        jmp   n164_call_proc_staged_α
n162_call_builtin_icon_β:
                                                                                        jmp   n163_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        mov              qword ptr [rsp + 848], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n165_lit_integer_α
.Lx231_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        lea              rsi, [rsp + 976]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx233_2
.Lx233_2:
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n163_lit_integer_α
                                                                                        jmp   n163_lit_integer_α
n164_call_proc_staged_β:
                                                                                        jmp   n163_lit_integer_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rsp + 864], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n166_lit_integer_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rsp + 880], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n167_lit_integer_α
.Lx235_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rsp + 896], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n168_lit_integer_α
.Lx236_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        mov              qword ptr [rsp + 912], 6
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n169_call_α
.Lx237_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn239:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rsp + 752]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n170_call_builtin_icon_α
n169_call_β:
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn241:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n172_call_proc_staged_α
n170_call_builtin_icon_β:
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n173_lit_string_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              rsi, [rsp + 688]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx244_2
.Lx244_2:
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n171_lit_string_α
n172_call_proc_staged_β:
                                                                                        jmp   n171_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rsp + 576], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n174_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rsp + 592], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n175_lit_string_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rsp + 608], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n176_lit_string_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rsp + 624], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n177_call_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn250:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 464]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n178_call_builtin_icon_α
n177_call_β:
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn252:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n180_call_proc_staged_α
n178_call_builtin_icon_β:
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rsp + 272], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n181_lit_string_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n180_call_proc_staged_α:
                        lea              rsi, [rsp + 400]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx255_2
.Lx255_2:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n179_lit_string_α
n180_call_proc_staged_β:
                                                                                        jmp   n179_lit_string_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n182_lit_string_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rsp + 304], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n183_lit_string_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n184_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n185_call_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn261:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rsp + 176]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n187_return_α
                                                                                        jmp   n186_call_builtin_icon_α
n185_call_β:
                                                                                        jmp   n187_return_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn263:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n187_return_α
                                                                                        jmp   n188_call_builtin_icon_α
n186_call_builtin_icon_β:
                                                                                        jmp   n187_return_α
#-----------------------------------------------------------------------------------------------------------------------
n187_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_rectest_γ
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn266:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n187_return_α
                                                                                        jmp   n189_call_proc_staged_α
n188_call_builtin_icon_β:
                                                                                        jmp   n187_return_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        call             proc_wlist_dcα
                                                                                        jmp   .Lx268_2
.Lx268_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n187_return_α
                                                                                        jmp   n187_return_α
n189_call_proc_staged_β:
                                                                                        jmp   n187_return_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
proc_rectest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_rectest_β:
                                                                                        jmp   proc_rectest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rectest_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1960]
                        add              rsp, 1984
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rectest_ω:
                        mov              rax, [rsp + 1968]
                        add              rsp, 1984
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rectest_dcα:
                        pop              r11
                        sub              rsp, 2000
                        mov              qword ptr [rsp + 1976], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1952], r11
                        lea              rax, [rip + .Lx269_2]
                        mov              qword ptr [rsp + 1960], rax
                        lea              rax, [rip + .Lx269_3]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rdi, rbp
                        mov              esi, 1952
                        mov              edx, 1952
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rectest_α_body
.Lx269_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1984
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx269_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1984
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tbltest_α
proc_tbltest_α:
                        .global          proc_tbltest_α
                        .global          proc_tbltest_β
                        .global          proc_tbltest_γ
                        .global          proc_tbltest_ω
                        sub              rsp, 4192
                        mov              [rsp + 4168], rcx
                        mov              [rsp + 4176], rdx
                        mov              [rsp + 4184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4128
                        mov              edx, 4160
                        call             rt_jmp_frame_lexprep2@PLT
proc_tbltest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn452:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rbp + 4112]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    n272_var_ref_α
                                                                                        jmp   n271_assign_α
n270_call_builtin_icon_β:
                                                                                        jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              rdx, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                                                                                        jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:
                        mov              qword ptr [rbp + 4032], 6
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n274_subscript_α
.Lx456_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n274_subscript_α:
                        mov              rdi, qword ptr [rbp + 4016]
                        mov              rsi, qword ptr [rbp + 4024]
                        mov              rdx, qword ptr [rbp + 4032]
                        mov              rcx, qword ptr [rbp + 4040]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n276_var_ref_α
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n277_assign_var_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4048]
                        mov              rsi, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4080]
                        mov              rcx, qword ptr [rbp + 4088]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n276_var_ref_α
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n276_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 3952], 6
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n279_subscript_α
.Lx462_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n279_subscript_α:
                        mov              rdi, qword ptr [rbp + 3936]
                        mov              rsi, qword ptr [rbp + 3944]
                        mov              rdx, qword ptr [rbp + 3952]
                        mov              rcx, qword ptr [rbp + 3960]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n281_var_ref_α
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n282_assign_var_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3968]
                        mov              rsi, qword ptr [rbp + 3976]
                        mov              rdx, qword ptr [rbp + 4000]
                        mov              rcx, qword ptr [rbp + 4008]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n281_var_ref_α
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n281_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        mov              qword ptr [rbp + 3872], 6
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n284_subscript_α
.Lx468_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:
                        mov              rdi, qword ptr [rbp + 3856]
                        mov              rsi, qword ptr [rbp + 3864]
                        mov              rdx, qword ptr [rbp + 3872]
                        mov              rcx, qword ptr [rbp + 3880]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n286_var_ref_α
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 3920], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n287_assign_var_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n288_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3888]
                        mov              rsi, qword ptr [rbp + 3896]
                        mov              rdx, qword ptr [rbp + 3920]
                        mov              rcx, qword ptr [rbp + 3928]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n286_var_ref_α
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:
                        mov              qword ptr [rbp + 3792], 6
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n289_subscript_α
.Lx474_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n289_subscript_α:
                        mov              rdi, qword ptr [rbp + 3776]
                        mov              rsi, qword ptr [rbp + 3784]
                        mov              rdx, qword ptr [rbp + 3792]
                        mov              rcx, qword ptr [rbp + 3800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n291_var_ref_α
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n292_assign_var_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3808]
                        mov              rsi, qword ptr [rbp + 3816]
                        mov              rdx, qword ptr [rbp + 3840]
                        mov              rcx, qword ptr [rbp + 3848]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n291_var_ref_α
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n294_subscript_α
.Lx480_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n294_subscript_α:
                        mov              rdi, qword ptr [rbp + 3696]
                        mov              rsi, qword ptr [rbp + 3704]
                        mov              rdx, qword ptr [rbp + 3712]
                        mov              rcx, qword ptr [rbp + 3720]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n296_var_ref_α
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n297_assign_var_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "o"
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n298_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3760]
                        mov              rcx, qword ptr [rbp + 3768]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n296_var_ref_α
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:
                        mov              qword ptr [rbp + 3632], 6
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n299_subscript_α
.Lx486_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n299_subscript_α:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        mov              rdx, qword ptr [rbp + 3632]
                        mov              rcx, qword ptr [rbp + 3640]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n301_var_ref_α
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 3680], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n302_assign_var_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n303_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        mov              rdx, qword ptr [rbp + 3680]
                        mov              rcx, qword ptr [rbp + 3688]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n301_var_ref_α
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n304_subscript_α
.Lx492_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n304_subscript_α:
                        mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3552]
                        mov              rcx, qword ptr [rbp + 3560]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n306_var_ref_α
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n307_assign_var_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n308_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n306_var_ref_α
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n309_subscript_α
.Lx498_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3480]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n311_var_ref_α
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n312_assign_var_α
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n313_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n311_var_ref_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:
                        mov              qword ptr [rbp + 3392], 6
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n314_subscript_α
.Lx504_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:
                        mov              rdi, qword ptr [rbp + 3376]
                        mov              rsi, qword ptr [rbp + 3384]
                        mov              rdx, qword ptr [rbp + 3392]
                        mov              rcx, qword ptr [rbp + 3400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n316_var_ref_α
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n317_assign_var_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n318_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3408]
                        mov              rsi, qword ptr [rbp + 3416]
                        mov              rdx, qword ptr [rbp + 3440]
                        mov              rcx, qword ptr [rbp + 3448]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n316_var_ref_α
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n319_subscript_α
.Lx510_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n319_subscript_α:
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        mov              rdx, qword ptr [rbp + 3312]
                        mov              rcx, qword ptr [rbp + 3320]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n321_call_builtin_icon_α
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n322_assign_var_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn514:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n323_var_α
                                                                                        jmp   n323_var_α
n321_call_builtin_icon_β:
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              rdx, qword ptr [rbp + 3360]
                        mov              rcx, qword ptr [rbp + 3368]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n321_call_builtin_icon_α
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n321_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n324_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lrkfn519:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn519]
                        lea              rsi, [rbp + 3216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n325_lit_string_α
                                                                                        jmp   n326_assign_α
n324_call_builtin_icon_β:
                                                                                        jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n327_disjunction_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_disjunction_α:
                        mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0
                        mov              dword ptr [rbp + 3056], 0
                                                                                        jmp   n329_var_α
n327_disjunction_as:
                        mov              eax, dword ptr [rbp + 3056]
                        cmp              eax, 0
                                                                                        jne   .Lx523_0
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n328_call_builtin_icon_α
.Lx523_0:
                        cmp              eax, 1
                                                                                        jne   .Lx523_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n328_call_builtin_icon_α
.Lx523_1:
                        cmp              eax, 2
                                                                                        jne   .Lx523_2
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n328_call_builtin_icon_α
.Lx523_2:
                                                                                        jmp   n328_call_builtin_icon_α
n327_disjunction_β:
                        mov              eax, dword ptr [rbp + 3056]
                        cmp              eax, 0
                                                                                        je    n327_disjunction_af
                        cmp              eax, 1
                                                                                        je    n331_iterate_β
                                                                                        jmp   n327_disjunction_af
n327_disjunction_af:
                        add              dword ptr [rbp + 3056], 1
                        mov              eax, dword ptr [rbp + 3056]
                        cmp              eax, 1
                                                                                        je    n330_var_α
                        cmp              eax, 2
                                                                                        je    n332_lit_string_α
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn525:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn525]
                        lea              rsi, [rbp + 2976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n327_disjunction_β
                                                                                        jmp   n327_disjunction_β
n328_call_builtin_icon_β:
                                                                                        jmp   n327_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n333_unop_α
n329_var_β:
                                                                                        jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n334_iterate_α
n330_var_β:
                                                                                        jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n331_iterate_α:
                        mov              qword ptr [rbp + 3120], 0
.Lx531_0:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, qword ptr [rbp + 3120]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              rax, 99
                                                                                        je    n334_iterate_β
                                                                                        jmp   n327_disjunction_as
n331_iterate_β:
                        inc              qword ptr [rbp + 3120]
                                                                                        jmp   .Lx531_0
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n327_disjunction_as
n332_lit_string_β:
                                                                                        jmp   n327_disjunction_af
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n333_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n327_disjunction_as
n333_unop_β:
                                                                                        jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n334_iterate_α:
                        mov              qword ptr [rbp + 3152], 0
.Lx535_0:
                        mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        mov              rdx, qword ptr [rbp + 3152]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              rax, 99
                                                                                        je    n327_disjunction_af
                                                                                        jmp   n331_iterate_α
n334_iterate_β:
                        inc              qword ptr [rbp + 3152]
                                                                                        jmp   .Lx535_0
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n338_call_builtin_icon_α
.Lx538_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n339_disjunction_α
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn541:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn541]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n337_lit_string_α
                                                                                        jmp   n340_assign_α
n338_call_builtin_icon_β:
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              dword ptr [rbp + 2720], 0
                                                                                        jmp   n343_var_α
n339_disjunction_as:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        jne   .Lx543_0
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n341_call_builtin_icon_α
.Lx543_0:
                        cmp              eax, 1
                                                                                        jne   .Lx543_1
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n341_call_builtin_icon_α
.Lx543_1:
                        cmp              eax, 2
                                                                                        jne   .Lx543_2
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n341_call_builtin_icon_α
.Lx543_2:
                                                                                        jmp   n341_call_builtin_icon_α
n339_disjunction_β:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        je    n339_disjunction_af
                        cmp              eax, 1
                                                                                        je    n345_iterate_β
                                                                                        jmp   n339_disjunction_af
n339_disjunction_af:
                        add              dword ptr [rbp + 2720], 1
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 1
                                                                                        je    n344_var_α
                        cmp              eax, 2
                                                                                        je    n346_lit_string_α
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        .section         .rodata
.Lrkfn546:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n339_disjunction_β
                                                                                        jmp   n339_disjunction_β
n341_call_builtin_icon_β:
                                                                                        jmp   n339_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n348_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n347_unop_α
n343_var_β:
                                                                                        jmp   n339_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n350_iterate_α
n344_var_β:
                                                                                        jmp   n339_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_iterate_α:
                        mov              qword ptr [rbp + 2784], 0
.Lx554_0:
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              rdx, qword ptr [rbp + 2784]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              rax, 99
                                                                                        je    n350_iterate_β
                                                                                        jmp   n339_disjunction_as
n345_iterate_β:
                        inc              qword ptr [rbp + 2784]
                                                                                        jmp   .Lx554_0
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n339_disjunction_as
n346_lit_string_β:
                                                                                        jmp   n339_disjunction_af
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n347_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n339_disjunction_as
n347_unop_β:
                                                                                        jmp   n339_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:
                        mov              qword ptr [rbp + 2608], 6
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n351_call_builtin_icon_α
.Lx557_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n352_disjunction_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n350_iterate_α:
                        mov              qword ptr [rbp + 2816], 0
.Lx560_0:
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              rsi, qword ptr [rbp + 2840]
                        mov              rdx, qword ptr [rbp + 2816]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              rax, 99
                                                                                        je    n339_disjunction_af
                                                                                        jmp   n345_iterate_α
n350_iterate_β:
                        inc              qword ptr [rbp + 2816]
                                                                                        jmp   .Lx560_0
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn562:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n349_lit_string_α
                                                                                        jmp   n353_assign_α
n351_call_builtin_icon_β:
                                                                                        jmp   n349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_disjunction_α:
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2376], 0
                        mov              dword ptr [rbp + 2384], 0
                                                                                        jmp   n356_var_α
n352_disjunction_as:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        jne   .Lx564_0
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n354_call_builtin_icon_α
.Lx564_0:
                        cmp              eax, 1
                                                                                        jne   .Lx564_1
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n354_call_builtin_icon_α
.Lx564_1:
                        cmp              eax, 2
                                                                                        jne   .Lx564_2
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n354_call_builtin_icon_α
.Lx564_2:
                                                                                        jmp   n354_call_builtin_icon_α
n352_disjunction_β:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        je    n352_disjunction_af
                        cmp              eax, 1
                                                                                        je    n358_iterate_β
                                                                                        jmp   n352_disjunction_af
n352_disjunction_af:
                        add              dword ptr [rbp + 2384], 1
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 1
                                                                                        je    n357_var_α
                        cmp              eax, 2
                                                                                        je    n359_lit_string_α
                                                                                        jmp   n355_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn567:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n352_disjunction_β
                                                                                        jmp   n352_disjunction_β
n354_call_builtin_icon_β:
                                                                                        jmp   n352_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n361_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n360_unop_α
n356_var_β:
                                                                                        jmp   n352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n363_iterate_α
n357_var_β:
                                                                                        jmp   n352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n358_iterate_α:
                        mov              qword ptr [rbp + 2448], 0
.Lx575_0:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2448]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              rax, 99
                                                                                        je    n363_iterate_β
                                                                                        jmp   n352_disjunction_as
n358_iterate_β:
                        inc              qword ptr [rbp + 2448]
                                                                                        jmp   .Lx575_0
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n352_disjunction_as
n359_lit_string_β:
                                                                                        jmp   n352_disjunction_af
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n360_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n352_disjunction_as
n360_unop_β:
                                                                                        jmp   n352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n364_call_builtin_icon_α
.Lx578_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n365_disjunction_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n363_iterate_α:
                        mov              qword ptr [rbp + 2480], 0
.Lx581_0:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              rdx, qword ptr [rbp + 2480]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              rax, 99
                                                                                        je    n352_disjunction_af
                                                                                        jmp   n358_iterate_α
n363_iterate_β:
                        inc              qword ptr [rbp + 2480]
                                                                                        jmp   .Lx581_0
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn583:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn583]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n362_lit_string_α
                                                                                        jmp   n366_assign_α
n364_call_builtin_icon_β:
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_disjunction_α:
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0
                        mov              dword ptr [rbp + 2080], 0
                                                                                        jmp   n369_var_α
n365_disjunction_as:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        jne   .Lx585_0
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n367_call_builtin_icon_α
.Lx585_0:
                        cmp              eax, 1
                                                                                        jne   .Lx585_1
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n367_call_builtin_icon_α
.Lx585_1:
                        cmp              eax, 2
                                                                                        jne   .Lx585_2
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n367_call_builtin_icon_α
.Lx585_2:
                                                                                        jmp   n367_call_builtin_icon_α
n365_disjunction_β:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        je    n365_disjunction_af
                        cmp              eax, 1
                                                                                        je    n371_iterate_β
                                                                                        jmp   n365_disjunction_af
n365_disjunction_af:
                        add              dword ptr [rbp + 2080], 1
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 1
                                                                                        je    n370_var_α
                        cmp              eax, 2
                                                                                        je    n372_lit_string_α
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n367_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn588:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn588]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n365_disjunction_β
                                                                                        jmp   n365_disjunction_β
n367_call_builtin_icon_β:
                                                                                        jmp   n365_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n374_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n373_unop_α
n369_var_β:
                                                                                        jmp   n365_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n371_iterate_α
n370_var_β:
                                                                                        jmp   n365_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_iterate_α:
                        mov              qword ptr [rbp + 2144], 0
.Lx596_0:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2144]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              rax, 99
                                                                                        je    n365_disjunction_af
                                                                                        jmp   n365_disjunction_as
n371_iterate_β:
                        inc              qword ptr [rbp + 2144]
                                                                                        jmp   .Lx596_0
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n365_disjunction_as
n372_lit_string_β:
                                                                                        jmp   n365_disjunction_af
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n373_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n365_disjunction_as
n373_unop_β:
                                                                                        jmp   n365_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n376_call_builtin_icon_α
.Lx599_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n377_disjunction_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn602:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn602]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n375_lit_string_α
                                                                                        jmp   n378_assign_α
n376_call_builtin_icon_β:
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_disjunction_α:
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              dword ptr [rbp + 1776], 0
                                                                                        jmp   n381_var_α
n377_disjunction_as:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        jne   .Lx604_0
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx604_0:
                        cmp              eax, 1
                                                                                        jne   .Lx604_1
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx604_1:
                        cmp              eax, 2
                                                                                        jne   .Lx604_2
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx604_2:
                                                                                        jmp   n379_call_builtin_icon_α
n377_disjunction_β:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        je    n377_disjunction_af
                        cmp              eax, 1
                                                                                        je    n383_iterate_β
                                                                                        jmp   n377_disjunction_af
n377_disjunction_af:
                        add              dword ptr [rbp + 1776], 1
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 1
                                                                                        je    n382_var_α
                        cmp              eax, 2
                                                                                        je    n384_lit_string_α
                                                                                        jmp   n380_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn607:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rbp + 1696]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n377_disjunction_β
                                                                                        jmp   n377_disjunction_β
n379_call_builtin_icon_β:
                                                                                        jmp   n377_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n386_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n385_unop_α
n381_var_β:
                                                                                        jmp   n377_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n383_iterate_α
n382_var_β:
                                                                                        jmp   n377_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_iterate_α:
                        mov              qword ptr [rbp + 1840], 0
.Lx615_0:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1840]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              rax, 99
                                                                                        je    n377_disjunction_af
                                                                                        jmp   n377_disjunction_as
n383_iterate_β:
                        inc              qword ptr [rbp + 1840]
                                                                                        jmp   .Lx615_0
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n377_disjunction_as
n384_lit_string_β:
                                                                                        jmp   n377_disjunction_af
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n385_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n377_disjunction_as
n385_unop_β:
                                                                                        jmp   n377_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn619:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n387_var_α
                                                                                        jmp   n388_assign_α
n386_call_builtin_icon_β:
                                                                                        jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n389_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn624:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n390_lit_string_α
                                                                                        jmp   n391_assign_α
n389_call_builtin_icon_β:
                                                                                        jmp   n390_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n392_disjunction_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n390_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_disjunction_α:
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              dword ptr [rbp + 1408], 0
                                                                                        jmp   n395_var_α
n392_disjunction_as:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0
                                                                                        jne   .Lx628_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n393_call_builtin_icon_α
.Lx628_0:
                        cmp              eax, 1
                                                                                        jne   .Lx628_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n393_call_builtin_icon_α
.Lx628_1:
                        cmp              eax, 2
                                                                                        jne   .Lx628_2
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n393_call_builtin_icon_α
.Lx628_2:
                                                                                        jmp   n393_call_builtin_icon_α
n392_disjunction_β:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0
                                                                                        je    n392_disjunction_af
                        cmp              eax, 1
                                                                                        je    n397_iterate_β
                                                                                        jmp   n392_disjunction_af
n392_disjunction_af:
                        add              dword ptr [rbp + 1408], 1
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 1
                                                                                        je    n396_var_α
                        cmp              eax, 2
                                                                                        je    n398_lit_string_α
                                                                                        jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn630:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn630]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n392_disjunction_β
                                                                                        jmp   n392_disjunction_β
n393_call_builtin_icon_β:
                                                                                        jmp   n392_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n400_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n399_unop_α
n395_var_β:
                                                                                        jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n402_iterate_α
n396_var_β:
                                                                                        jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n397_iterate_α:
                        mov              qword ptr [rbp + 1472], 0
.Lx638_0:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1472]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              rax, 99
                                                                                        je    n402_iterate_β
                                                                                        jmp   n392_disjunction_as
n397_iterate_β:
                        inc              qword ptr [rbp + 1472]
                                                                                        jmp   .Lx638_0
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n392_disjunction_as
n398_lit_string_β:
                                                                                        jmp   n392_disjunction_af
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n399_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n392_disjunction_as
n399_unop_β:
                                                                                        jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n403_call_builtin_icon_α
.Lx641_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n404_disjunction_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n402_iterate_α:
                        mov              qword ptr [rbp + 1504], 0
.Lx644_0:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1504]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              rax, 99
                                                                                        je    n392_disjunction_af
                                                                                        jmp   n397_iterate_α
n402_iterate_β:
                        inc              qword ptr [rbp + 1504]
                                                                                        jmp   .Lx644_0
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn646:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n401_lit_string_α
                                                                                        jmp   n405_assign_α
n403_call_builtin_icon_β:
                                                                                        jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n408_var_α
n404_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx648_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n406_call_builtin_icon_α
.Lx648_0:
                        cmp              eax, 1
                                                                                        jne   .Lx648_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n406_call_builtin_icon_α
.Lx648_1:
                        cmp              eax, 2
                                                                                        jne   .Lx648_2
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n406_call_builtin_icon_α
.Lx648_2:
                                                                                        jmp   n406_call_builtin_icon_α
n404_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        je    n404_disjunction_af
                        cmp              eax, 1
                                                                                        je    n410_iterate_β
                                                                                        jmp   n404_disjunction_af
n404_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1
                                                                                        je    n409_var_α
                        cmp              eax, 2
                                                                                        je    n411_lit_string_α
                                                                                        jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn651:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n404_disjunction_β
                                                                                        jmp   n404_disjunction_β
n406_call_builtin_icon_β:
                                                                                        jmp   n404_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n412_unop_α
n408_var_β:
                                                                                        jmp   n404_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n415_iterate_α
n409_var_β:
                                                                                        jmp   n404_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n410_iterate_α:
                        mov              qword ptr [rbp + 1136], 0
.Lx659_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1136]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              rax, 99
                                                                                        je    n415_iterate_β
                                                                                        jmp   n404_disjunction_as
n410_iterate_β:
                        inc              qword ptr [rbp + 1136]
                                                                                        jmp   .Lx659_0
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n404_disjunction_as
n411_lit_string_β:
                                                                                        jmp   n404_disjunction_af
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n412_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n404_disjunction_as
n412_unop_β:
                                                                                        jmp   n404_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n416_call_builtin_icon_α
.Lx662_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n417_disjunction_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n415_iterate_α:
                        mov              qword ptr [rbp + 1168], 0
.Lx665_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              rax, 99
                                                                                        je    n404_disjunction_af
                                                                                        jmp   n410_iterate_α
n415_iterate_β:
                        inc              qword ptr [rbp + 1168]
                                                                                        jmp   .Lx665_0
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn667:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n414_lit_string_α
                                                                                        jmp   n418_assign_α
n416_call_builtin_icon_β:
                                                                                        jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n417_disjunction_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0
                                                                                        jmp   n421_var_α
n417_disjunction_as:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        jne   .Lx669_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n419_call_builtin_icon_α
.Lx669_0:
                        cmp              eax, 1
                                                                                        jne   .Lx669_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n419_call_builtin_icon_α
.Lx669_1:
                        cmp              eax, 2
                                                                                        jne   .Lx669_2
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n419_call_builtin_icon_α
.Lx669_2:
                                                                                        jmp   n419_call_builtin_icon_α
n417_disjunction_β:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        je    n417_disjunction_af
                        cmp              eax, 1
                                                                                        je    n423_iterate_β
                                                                                        jmp   n417_disjunction_af
n417_disjunction_af:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 1
                                                                                        je    n422_var_α
                        cmp              eax, 2
                                                                                        je    n424_lit_string_α
                                                                                        jmp   n420_var_α
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn672:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n417_disjunction_β
                                                                                        jmp   n417_disjunction_β
n419_call_builtin_icon_β:
                                                                                        jmp   n417_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n426_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n425_unop_α
n421_var_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n428_iterate_α
n422_var_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n423_iterate_α:
                        mov              qword ptr [rbp + 800], 0
.Lx680_0:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 800]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              rax, 99
                                                                                        je    n428_iterate_β
                                                                                        jmp   n417_disjunction_as
n423_iterate_β:
                        inc              qword ptr [rbp + 800]
                                                                                        jmp   .Lx680_0
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n417_disjunction_as
n424_lit_string_β:
                                                                                        jmp   n417_disjunction_af
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n425_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n417_disjunction_as
n425_unop_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n429_call_builtin_icon_α
.Lx683_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n430_disjunction_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n428_iterate_α:
                        mov              qword ptr [rbp + 832], 0
.Lx686_0:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 832]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              rax, 99
                                                                                        je    n417_disjunction_af
                                                                                        jmp   n423_iterate_α
n428_iterate_β:
                        inc              qword ptr [rbp + 832]
                                                                                        jmp   .Lx686_0
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn688:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n427_lit_string_α
                                                                                        jmp   n431_assign_α
n429_call_builtin_icon_β:
                                                                                        jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n430_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n434_var_α
n430_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx690_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n432_call_builtin_icon_α
.Lx690_0:
                        cmp              eax, 1
                                                                                        jne   .Lx690_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n432_call_builtin_icon_α
.Lx690_1:
                        cmp              eax, 2
                                                                                        jne   .Lx690_2
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n432_call_builtin_icon_α
.Lx690_2:
                                                                                        jmp   n432_call_builtin_icon_α
n430_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n430_disjunction_af
                        cmp              eax, 1
                                                                                        je    n436_iterate_β
                                                                                        jmp   n430_disjunction_af
n430_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n435_var_α
                        cmp              eax, 2
                                                                                        je    n437_lit_string_α
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn693:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n430_disjunction_β
                                                                                        jmp   n430_disjunction_β
n432_call_builtin_icon_β:
                                                                                        jmp   n430_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n439_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n438_unop_α
n434_var_β:
                                                                                        jmp   n430_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n436_iterate_α
n435_var_β:
                                                                                        jmp   n430_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n436_iterate_α:
                        mov              qword ptr [rbp + 496], 0
.Lx701_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              rax, 99
                                                                                        je    n430_disjunction_af
                                                                                        jmp   n430_disjunction_as
n436_iterate_β:
                        inc              qword ptr [rbp + 496]
                                                                                        jmp   .Lx701_0
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n430_disjunction_as
n437_lit_string_β:
                                                                                        jmp   n430_disjunction_af
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n438_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n430_disjunction_as
n438_unop_β:
                                                                                        jmp   n430_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n441_call_builtin_icon_α
.Lx704_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n442_disjunction_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn707:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn707]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n440_lit_string_α
                                                                                        jmp   n443_assign_α
n441_call_builtin_icon_β:
                                                                                        jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n442_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n446_var_α
n442_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx709_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n444_call_builtin_icon_α
.Lx709_0:
                        cmp              eax, 1
                                                                                        jne   .Lx709_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n444_call_builtin_icon_α
.Lx709_1:
                        cmp              eax, 2
                                                                                        jne   .Lx709_2
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n444_call_builtin_icon_α
.Lx709_2:
                                                                                        jmp   n444_call_builtin_icon_α
n442_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n442_disjunction_af
                        cmp              eax, 1
                                                                                        je    n448_iterate_β
                                                                                        jmp   n442_disjunction_af
n442_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n447_var_α
                        cmp              eax, 2
                                                                                        je    n449_lit_string_α
                                                                                        jmp   n445_return_α
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn712:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn712]
                        lea              rsi, [rbp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n442_disjunction_β
                                                                                        jmp   n442_disjunction_β
n444_call_builtin_icon_β:
                                                                                        jmp   n442_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n445_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tbltest_γ
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n450_unop_α
n446_var_β:
                                                                                        jmp   n442_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n448_iterate_α
n447_var_β:
                                                                                        jmp   n442_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n448_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx719_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        je    n442_disjunction_af
                                                                                        jmp   n442_disjunction_as
n448_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx719_0
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n442_disjunction_as
n449_lit_string_β:
                                                                                        jmp   n442_disjunction_af
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n450_unop_α:
                        mov              rdi, qword ptr [rbp + 4128]
                        mov              rsi, qword ptr [rbp + 4136]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n442_disjunction_as
n450_unop_β:
                                                                                        jmp   n442_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_tbltest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tbltest_β:
                                                                                        jmp   proc_tbltest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tbltest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4168]
                        lea              rsp, [rbp + 4192]
                        mov              rbp, [rbp + 4184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tbltest_ω:
                        mov              rax, [rbp + 4176]
                        lea              rsp, [rbp + 4192]
                        mov              rbp, [rbp + 4184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tbltest_dcα:
                        pop              r11
                        sub              rsp, 4208
                        mov              qword ptr [rsp + 4184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 4160], r11
                        lea              rax, [rip + .Lx722_2]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rax, [rip + .Lx722_3]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rdi, rbp
                        mov              esi, 4128
                        mov              edx, 4160
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tbltest_α_body
.Lx722_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -4192
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx722_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -4192
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_randval_α
proc_randval_α:
                        .global          proc_randval_α
                        .global          proc_randval_β
                        .global          proc_randval_γ
                        .global          proc_randval_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_randval_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n724_random_α
.Lx771_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n724_random_α:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n725_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n725_deref_α:
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n726_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:
                        mov              qword ptr [rsp + 784], 6
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n727_call_builtin_α
.Lx774_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn776:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]
                        lea              rsi, [rsp + 864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n729_lit_integer_α
                                                                                        jmp   n728_lit_integer_α
n727_call_builtin_β:
                                                                                        jmp   n729_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:
                        mov              qword ptr [rsp + 816], 6
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n730_random_α
.Lx777_0:
                        .quad            999
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:
                        mov              qword ptr [rsp + 608], 6
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n731_call_builtin_α
.Lx778_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n730_random_α:
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n732_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn781:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn781]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n734_lit_integer_α
                                                                                        jmp   n733_lit_integer_α
n731_call_builtin_β:
                                                                                        jmp   n734_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n732_deref_α:
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n735_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_integer_α:
                        mov              qword ptr [rsp + 672], 6
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n736_random_α
.Lx783_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n737_call_builtin_α
.Lx784_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n735_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n736_random_α:
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n739_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn788:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn788]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n741_lit_integer_α
                                                                                        jmp   n740_lit_charset_α
n737_call_builtin_β:
                                                                                        jmp   n741_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n738_var_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n742_return_α
#-----------------------------------------------------------------------------------------------------------------------
n739_deref_α:
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n743_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_charset_α:
                        mov              qword ptr [rsp + 416], 1
                        mov              dword ptr [rsp + 420], -1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n744_random_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n745_call_builtin_α
.Lx793_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n742_return_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   proc_randval_γ
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_real_α:
                        mov              qword ptr [rsp + 704], 7
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n746_op75_α
.Lx795_0:
                        .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n744_random_α:
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n747_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n745_call_builtin_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn798:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn798]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                                                                                        jmp   n748_lit_charset_α
n745_call_builtin_β:
                                                                                        jmp   proc_randval_ω
#-----------------------------------------------------------------------------------------------------------------------
n746_op75_α:
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 7
                                                                                        je    .Lx800_1
                        cmp              eax, 6
                                                                                        jne   .Lx800_0
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 6
                                                                                        jne   .Lx800_0
.Lx800_1:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n749_binop_α
.Lx800_0:
                        lea              rdi, [rsp + 688]
                        lea              rsi, [rsp + 704]
                        lea              rdx, [rsp + 640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n749_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n747_deref_α:
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n750_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_charset_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              dword ptr [rsp + 148], -1
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n751_random_α
.Lx802_0:
                        .quad            .Lx802_0_s
.Lx802_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n749_binop_α:
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n752_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_charset_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              dword ptr [rsp + 468], -1
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n753_random_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n751_random_α:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n754_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n752_assign_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n753_random_α:
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n755_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n754_deref_α:
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n756_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n755_deref_α:
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n757_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_charset_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n758_random_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n757_binop_α:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n759_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n758_random_α:
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n760_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_charset_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              dword ptr [rsp + 516], -1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n761_random_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n760_deref_α:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n762_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n761_random_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n763_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n762_binop_α:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n764_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n763_deref_α:
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n765_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_charset_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              dword ptr [rsp + 244], -1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n766_random_α
.Lx818_0:
                        .quad            .Lx818_0_s
.Lx818_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n765_binop_α:
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n767_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n766_random_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n768_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n767_assign_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n768_deref_α:
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n769_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n769_binop_α:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    proc_randval_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n770_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n770_assign_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_randval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_randval_β:
                                                                                        jmp   proc_randval_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_randval_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 936]
                        add              rsp, 960
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_randval_ω:
                        mov              rax, [rsp + 944]
                        add              rsp, 960
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_randval_dcα:
                        pop              r11
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 928], r11
                        lea              rax, [rip + .Lx825_2]
                        mov              qword ptr [rsp + 936], rax
                        lea              rax, [rip + .Lx825_3]
                        mov              qword ptr [rsp + 944], rax
                        mov              rdi, rbp
                        mov              esi, 912
                        mov              edx, 928
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_randval_α_body
.Lx825_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -960
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx825_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -960
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_α
proc_check_α:
                        .global          proc_check_α
                        .global          proc_check_β
                        .global          proc_check_γ
                        .global          proc_check_ω
                        sub              rsp, 2336
                        mov              [rsp + 2312], rcx
                        mov              [rsp + 2320], rdx
                        mov              [rsp + 2328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2208
                        mov              edx, 2304
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n826_disjunction_α:
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0
                                                                                        jmp   n828_var_α
n826_disjunction_as:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        jne   .Lx921_0
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n827_lit_integer_α
.Lx921_0:
                                                                                        jmp   n827_lit_integer_α
n826_disjunction_β:
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n827_lit_integer_α
n826_disjunction_af:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n827_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n830_var_α
.Lx922_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n828_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n831_unop_α
n828_var_β:
                                                                                        jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn926:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n827_lit_integer_α
                                                                                        jmp   n826_disjunction_as
n829_call_builtin_icon_β:
                                                                                        jmp   n827_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n832_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n831_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n835_to_α
#-----------------------------------------------------------------------------------------------------------------------
n833_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_check_γ
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n836_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n835_to_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lx935_0:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jg    n833_return_α
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n837_assign_α
n835_to_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx935_0
#-----------------------------------------------------------------------------------------------------------------------
n836_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n838_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n837_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n839_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n838_binop_test_α:
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              eax, 100
                                                                                        je    .Lx938_0
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 100
                                                                                        je    .Lx938_0
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              eax, 6
                                                                                        jne   .Lx938_2
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 6
                                                                                        jne   .Lx938_2
.Lx938_1:
                        mov              rax, qword ptr [rbp + 2152]
                        mov              rcx, qword ptr [rbp + 2184]
                        cmp              rax, rcx
                                                                                        je    n826_disjunction_af
                        mov              rcx, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rcx
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rcx
                                                                                        jmp   n840_lit_string_α
.Lx938_0:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 10
                        lea              r9, [rbp + 2128]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx938_1
                        cmp              eax, 1
                                                                                        je    n826_disjunction_af
                                                                                        jmp   n840_lit_string_α
.Lx938_2:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n826_disjunction_af
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n840_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n841_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n840_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n842_var_α
.Lx941_0:
                        .quad            .Lx941_0_s
.Lx941_0_s:
                        .string          "different sizes: "
#-----------------------------------------------------------------------------------------------------------------------
n841_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n844_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n845_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n844_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn949:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n827_lit_integer_α
                                                                                        jmp   n847_lit_string_α
n844_call_builtin_icon_β:
                                                                                        jmp   n827_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n845_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n846_var_ref_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n848_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n849_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n850_var_α
.Lx953_0:
                        .quad            .Lx953_0_s
.Lx953_0_s:
                        .string          " / "
#-----------------------------------------------------------------------------------------------------------------------
n848_deref_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n846_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n851_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n849_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n852_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n854_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n846_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n852_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n853_disjunction_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n855_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n853_disjunction_α:
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0
                                                                                        jmp   n857_var_ref_α
n853_disjunction_as:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        jne   .Lx962_0
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n856_assign_α
.Lx962_0:
                        cmp              eax, 1
                                                                                        jne   .Lx962_1
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n856_assign_α
.Lx962_1:
                                                                                        jmp   n856_assign_α
n853_disjunction_β:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        je    n853_disjunction_af
                                                                                        jmp   n853_disjunction_af
n853_disjunction_af:
                        add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 1
                                                                                        je    n858_keyword_icon_α
                                                                                        jmp   n861_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n854_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn964:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn964]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n827_lit_integer_α
                                                                                        jmp   n829_call_builtin_icon_α
n854_call_builtin_icon_β:
                                                                                        jmp   n827_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n855_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n853_disjunction_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n860_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n861_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n857_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n862_var_α
n857_var_ref_β:
                                                                                        jmp   n853_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n858_keyword_icon_α:
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                                                                                        jmp   n853_disjunction_as
n858_keyword_icon_β:
                                                                                        jmp   n853_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n859_deref_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n853_disjunction_af
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n853_disjunction_as
n859_deref_β:
                                                                                        jmp   n853_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n860_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n853_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n861_disjunction_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              dword ptr [rbp + 1344], 0
                                                                                        jmp   n864_var_α
n861_disjunction_as:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        jne   .Lx973_0
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n863_disjunction_α
.Lx973_0:
                                                                                        jmp   n863_disjunction_α
n861_disjunction_β:
                        mov              eax, dword ptr [rbp + 1344]
                                                                                        jmp   n863_disjunction_α
n861_disjunction_af:
                        add              dword ptr [rbp + 1344], 1
                        mov              eax, dword ptr [rbp + 1344]
                                                                                        jmp   n863_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n862_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n866_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n863_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n868_var_α
n863_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx977_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n867_conjunction_α
.Lx977_0:
                                                                                        jmp   n867_conjunction_α
n863_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n872_unmark_α
n863_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n872_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n870_var_α
n864_var_β:
                                                                                        jmp   n861_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n865_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn981:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn981]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n863_disjunction_α
                                                                                        jmp   n861_disjunction_as
n865_call_builtin_icon_β:
                                                                                        jmp   n863_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n866_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n871_op75_α
.Lx982_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n867_conjunction_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n872_unmark_α
n867_conjunction_β:
                                                                                        jmp   n872_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n873_call_builtin_icon_α
n868_var_β:
                                                                                        jmp   n863_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n869_conjunction_α:
                                                                                        jmp   n863_disjunction_as
n869_conjunction_β:
                                                                                        jmp   n872_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n870_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n874_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n871_op75_α:
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 7
                                                                                        je    .Lx990_1
                        cmp              eax, 6
                                                                                        jne   .Lx990_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 6
                                                                                        jne   .Lx990_0
.Lx990_1:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n875_binop_α
.Lx990_0:
                        lea              rdi, [rbp + 2208]
                        lea              rsi, [rbp + 1632]
                        lea              rdx, [rbp + 1600]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n875_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n872_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n835_to_β
#-----------------------------------------------------------------------------------------------------------------------
n873_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn994:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn994]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n863_disjunction_af
                                                                                        jmp   n876_var_α
n873_call_builtin_icon_β:
                                                                                        jmp   n863_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n874_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n861_disjunction_af
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n877_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n875_binop_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 6
                                                                                        jne   .Lx996_0
                        mov              rax, qword ptr [rbp + 1608]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1584], 6
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n878_subscript_α
.Lx996_0:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n853_disjunction_af
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n878_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n876_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n879_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n877_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n880_var_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "element "
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n853_disjunction_af
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n859_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n879_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn1002:             .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1002]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n863_disjunction_af
                                                                                        jmp   n881_binop_test_α
n879_call_builtin_icon_β:
                                                                                        jmp   n863_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n880_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n882_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n881_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n863_disjunction_af
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n883_var_α
#-----------------------------------------------------------------------------------------------------------------------
n882_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n865_call_builtin_icon_α
.Lx1006_0:
                        .quad            .Lx1006_0_s
.Lx1006_0_s:
                        .string          " differs"
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n884_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n884_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1010:             .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1010]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n885_lit_string_α
                                                                                        jmp   n886_lit_string_α
n884_call_builtin_icon_β:
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n887_var_α
.Lx1011_0:
                        .quad            .Lx1011_0_s
.Lx1011_0_s:
                        .string          "element "
#-----------------------------------------------------------------------------------------------------------------------
n886_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n888_call_builtin_α
.Lx1012_0:
                        .quad            .Lx1012_0_s
.Lx1012_0_s:
                        .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n887_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_call_builtin_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1016:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1016]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n891_lit_string_α
                                                                                        jmp   n890_disjunction_α
n888_call_builtin_β:
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n892_var_α
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          " out of order: "
#-----------------------------------------------------------------------------------------------------------------------
n890_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n894_var_α
n890_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx1019_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n893_assign_α
.Lx1019_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1019_1
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n893_assign_α
.Lx1019_1:
                                                                                        jmp   n893_assign_α
n890_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n890_disjunction_af
                                                                                        jmp   n890_disjunction_af
n890_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    n895_keyword_icon_α
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n897_call_builtin_α
.Lx1020_0:
                        .quad            .Lx1020_0_s
.Lx1020_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n892_var_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n898_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n899_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n900_var_α
n894_var_β:
                                                                                        jmp   n890_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n895_keyword_icon_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                                                                                        jmp   n890_disjunction_as
n895_keyword_icon_β:
                                                                                        jmp   n890_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n896_binop_test_α:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 100
                                                                                        je    .Lx1027_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 100
                                                                                        je    .Lx1027_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 6
                                                                                        jne   .Lx1027_2
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 6
                                                                                        jne   .Lx1027_2
.Lx1027_1:
                        mov              rax, qword ptr [rbp + 2280]
                        mov              rcx, qword ptr [rbp + 2264]
                        cmp              rax, rcx
                                                                                        jle   n890_disjunction_af
                        mov              rcx, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1040], rcx
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1048], rcx
                                                                                        jmp   n890_disjunction_as
.Lx1027_0:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 7
                        lea              r9, [rbp + 1040]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1027_1
                        cmp              eax, 1
                                                                                        je    n890_disjunction_af
                                                                                        jmp   n890_disjunction_as
.Lx1027_2:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n890_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n890_disjunction_as
n896_binop_test_β:
                                                                                        jmp   n890_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n897_call_builtin_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn1029:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1029]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n902_lit_string_α
                                                                                        jmp   n901_disjunction_α
n897_call_builtin_β:
                                                                                        jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n898_unop_test_α:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 99
                                                                                        je    n872_unmark_α
                        cmp              eax, 0
                                                                                        je    n872_unmark_α
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n903_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n904_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n896_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n901_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n906_var_α
n901_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx1035_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n905_assign_α
.Lx1035_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1035_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n905_assign_α
.Lx1035_1:
                                                                                        jmp   n905_assign_α
n901_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n901_disjunction_af
                                                                                        jmp   n901_disjunction_af
n901_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n907_keyword_icon_α
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n902_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n909_call_builtin_α
.Lx1036_0:
                        .quad            .Lx1036_0_s
.Lx1036_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n903_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn1038:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1038]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n872_unmark_α
                                                                                        jmp   n910_call_builtin_icon_α
n903_call_builtin_icon_β:
                                                                                        jmp   n872_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n904_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n911_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n906_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n912_var_α
n906_var_β:
                                                                                        jmp   n901_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n907_keyword_icon_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                                                                                        jmp   n901_disjunction_as
n907_keyword_icon_β:
                                                                                        jmp   n901_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n908_binop_test_α:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 100
                                                                                        je    .Lx1045_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 100
                                                                                        je    .Lx1045_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 6
                                                                                        jne   .Lx1045_2
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 6
                                                                                        jne   .Lx1045_2
.Lx1045_1:
                        mov              rax, qword ptr [rbp + 2280]
                        mov              rcx, qword ptr [rbp + 2264]
                        cmp              rax, rcx
                                                                                        jle   n901_disjunction_af
                        mov              rcx, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 832], rcx
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 840], rcx
                                                                                        jmp   n901_disjunction_as
.Lx1045_0:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 7
                        lea              r9, [rbp + 832]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1045_1
                        cmp              eax, 1
                                                                                        je    n901_disjunction_af
                                                                                        jmp   n901_disjunction_as
.Lx1045_2:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n901_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n901_disjunction_as
n908_binop_test_β:
                                                                                        jmp   n901_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n909_call_builtin_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn1047:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n885_lit_string_α
                                                                                        jmp   n913_disjunction_α
n909_call_builtin_β:
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1049:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rbp + 272]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n872_unmark_α
                                                                                        jmp   n869_conjunction_α
n910_call_builtin_icon_β:
                                                                                        jmp   n872_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n904_var_α
#-----------------------------------------------------------------------------------------------------------------------
n912_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n908_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n913_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n915_var_α
n913_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx1054_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n914_assign_α
.Lx1054_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1054_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n914_assign_α
.Lx1054_1:
                                                                                        jmp   n914_assign_α
n913_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        je    n913_disjunction_af
                                                                                        jmp   n913_disjunction_af
n913_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1
                                                                                        je    n916_keyword_icon_α
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n918_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n919_var_α
n915_var_β:
                                                                                        jmp   n913_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n916_keyword_icon_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                                                                                        jmp   n913_disjunction_as
n916_keyword_icon_β:
                                                                                        jmp   n913_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n917_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n913_disjunction_af
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n913_disjunction_as
n917_binop_test_β:
                                                                                        jmp   n913_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n918_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n904_var_α
#-----------------------------------------------------------------------------------------------------------------------
n919_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n917_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
proc_check_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_β:
                                                                                        jmp   proc_check_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_check_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2312]
                        lea              rsp, [rbp + 2336]
                        mov              rbp, [rbp + 2328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_ω:
                        mov              rax, [rbp + 2320]
                        lea              rsp, [rbp + 2336]
                        mov              rbp, [rbp + 2328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_dcα:
                        pop              r11
                        sub              rsp, 2352
                        mov              qword ptr [rsp + 2328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2304], r11
                        lea              rax, [rip + .Lx1063_2]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rax, [rip + .Lx1063_3]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2208
                        mov              edx, 2304
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_check_α_body
.Lx1063_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1063_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wlist_α
proc_wlist_α:
                        .global          proc_wlist_α
                        .global          proc_wlist_β
                        .global          proc_wlist_γ
                        .global          proc_wlist_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
proc_wlist_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1065_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n1067_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1069_var_α
n1066_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1080_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1068_call_builtin_icon_α
.Lx1080_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1080_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1068_call_builtin_icon_α
.Lx1080_1:
                                                                                        jmp   n1068_call_builtin_icon_α
n1066_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1070_iterate_β
                                                                                        jmp   n1066_disjunction_af
n1066_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1071_lit_string_α
                                                                                        jmp   n1075_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1073_call_builtin_icon_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1068_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn1083:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1083]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n1066_disjunction_β
                                                                                        jmp   n1066_disjunction_β
n1068_call_builtin_icon_β:
                                                                                        jmp   n1066_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1070_iterate_α
n1069_var_β:
                                                                                        jmp   n1066_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1070_iterate_α:
                        mov              qword ptr [rbp + 192], 0
.Lx1087_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              rax, 99
                                                                                        je    n1066_disjunction_af
                                                                                        jmp   n1074_lit_integer_α
n1070_iterate_β:
                        inc              qword ptr [rbp + 192]
                                                                                        jmp   .Lx1087_0
#-----------------------------------------------------------------------------------------------------------------------
n1071_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1088_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1066_disjunction_as
n1071_lit_string_β:
                                                                                        jmp   n1066_disjunction_af
.Lx1088_0:
                        .quad            .Lx1088_0_s
.Lx1088_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn1090:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1090]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1070_iterate_β
                                                                                        jmp   n1066_disjunction_as
n1072_call_builtin_icon_β:
                                                                                        jmp   n1070_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1073_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn1092:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1092]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1066_disjunction_α
                                                                                        jmp   n1066_disjunction_α
n1073_call_builtin_icon_β:
                                                                                        jmp   n1066_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx1093_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1072_call_builtin_icon_α
.Lx1093_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1075_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wlist_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_wlist_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wlist_β:
                                                                                        jmp   proc_wlist_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wlist_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 376]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wlist_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wlist_dcα:
                        pop              r11
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 368], r11
                        lea              rax, [rip + .Lx1095_2]
                        mov              qword ptr [rbp + 376], rax
                        lea              rax, [rip + .Lx1095_3]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 368
                        mov              edx, 368
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wlist_α_body
.Lx1095_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -400
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1095_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -400
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_copytest_α
proc_copytest_α:
                        .global          proc_copytest_α
                        .global          proc_copytest_β
                        .global          proc_copytest_γ
                        .global          proc_copytest_ω
                        sub              rsp, 4592
                        mov              [rsp + 4568], rcx
                        mov              [rsp + 4576], rdx
                        mov              [rsp + 4584], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4432
                        mov              edx, 4560
                        call             rt_jmp_frame_lexprep2@PLT
proc_copytest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1259:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1259]
                        lea              rsi, [rbp + 4416]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 99
                                                                                        je    n1097_lit_integer_α
                                                                                        jmp   n1097_lit_integer_α
n1096_call_builtin_icon_β:
                                                                                        jmp   n1097_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1097_lit_integer_α:
                        mov              qword ptr [rbp + 4352], 6
                        mov              rax, qword ptr [rip + .Lx1260_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n1098_lit_integer_α
.Lx1260_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_integer_α:
                        mov              qword ptr [rbp + 4368], 6
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n1099_lit_integer_α
.Lx1261_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1099_lit_integer_α:
                        mov              qword ptr [rbp + 4384], 6
                        mov              rax, qword ptr [rip + .Lx1262_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n1100_make_list_α
.Lx1262_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1100_make_list_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        lea              rdi, [rbp + 4304]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                                                                                        jmp   n1101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1101_assign_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              rdx, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n1102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1102_var_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n1103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1103_var_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n1105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1104_var_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n1106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4216], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4232], rax
                        .section         .rodata
.Lrkfn1273:             .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1273]
                        lea              rsi, [rbp + 4208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n1104_var_α
                                                                                        jmp   n1104_var_α
n1105_call_builtin_icon_β:
                                                                                        jmp   n1104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                        .section         .rodata
.Lrkfn1275:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1275]
                        lea              rsi, [rbp + 4144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              eax, 99
                                                                                        je    n1107_var_α
                                                                                        jmp   n1108_assign_α
n1106_call_builtin_icon_β:
                                                                                        jmp   n1107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1107_var_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n1109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1108_assign_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n1107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4088], rax
                        .section         .rodata
.Lrkfn1280:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1280]
                        lea              rsi, [rbp + 4080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    n1110_var_α
                                                                                        jmp   n1110_var_α
n1109_call_builtin_icon_β:
                                                                                        jmp   n1110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_var_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n1111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1111_lit_integer_α:
                        mov              qword ptr [rbp + 4048], 6
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n1113_call_builtin_icon_α
.Lx1283_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1112_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx1284_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n1114_disjunction_α
.Lx1284_0:
                        .quad            .Lx1284_0_s
.Lx1284_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn1286:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1286]
                        lea              rsi, [rbp + 3984]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    n1112_lit_string_α
                                                                                        jmp   n1112_lit_string_α
n1113_call_builtin_icon_β:
                                                                                        jmp   n1112_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1114_disjunction_α:
                        mov              qword ptr [rbp + 3808], 0
                        mov              qword ptr [rbp + 3816], 0
                        mov              dword ptr [rbp + 3824], 0
                                                                                        jmp   n1116_lit_string_α
n1114_disjunction_as:
                        mov              eax, dword ptr [rbp + 3824]
                        cmp              eax, 0
                                                                                        jne   .Lx1288_0
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n1115_call_builtin_icon_α
.Lx1288_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1288_1
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n1115_call_builtin_icon_α
.Lx1288_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1288_2
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n1115_call_builtin_icon_α
.Lx1288_2:
                                                                                        jmp   n1115_call_builtin_icon_α
n1114_disjunction_β:
                        mov              eax, dword ptr [rbp + 3824]
                        cmp              eax, 0
                                                                                        je    n1114_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1118_iterate_β
                                                                                        jmp   n1114_disjunction_af
n1114_disjunction_af:
                        add              dword ptr [rbp + 3824], 1
                        mov              eax, dword ptr [rbp + 3824]
                        cmp              eax, 1
                                                                                        je    n1117_var_α
                        cmp              eax, 2
                                                                                        je    n1119_lit_string_α
                                                                                        jmp   n1121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn1290:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1290]
                        lea              rsi, [rbp + 3744]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              eax, 99
                                                                                        je    n1114_disjunction_β
                                                                                        jmp   n1114_disjunction_β
n1115_call_builtin_icon_β:
                                                                                        jmp   n1114_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1116_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n1114_disjunction_as
n1116_lit_string_β:
                                                                                        jmp   n1114_disjunction_af
.Lx1291_0:
                        .quad            .Lx1291_0_s
.Lx1291_0_s:
                        .string          "L1:"
#-----------------------------------------------------------------------------------------------------------------------
n1117_var_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n1118_iterate_α
n1117_var_β:
                                                                                        jmp   n1114_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1118_iterate_α:
                        mov              qword ptr [rbp + 3920], 0
.Lx1295_0:
                        mov              rdi, qword ptr [rbp + 3936]
                        mov              rsi, qword ptr [rbp + 3944]
                        mov              rdx, qword ptr [rbp + 3920]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              rax, 99
                                                                                        je    n1114_disjunction_af
                                                                                        jmp   n1120_call_builtin_icon_α
n1118_iterate_β:
                        inc              qword ptr [rbp + 3920]
                                                                                        jmp   .Lx1295_0
#-----------------------------------------------------------------------------------------------------------------------
n1119_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx1296_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n1114_disjunction_as
n1119_lit_string_β:
                                                                                        jmp   n1114_disjunction_af
.Lx1296_0:
                        .quad            .Lx1296_0_s
.Lx1296_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        .section         .rodata
.Lrkfn1298:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1298]
                        lea              rsi, [rbp + 3872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    n1118_iterate_β
                                                                                        jmp   n1114_disjunction_as
n1120_call_builtin_icon_β:
                                                                                        jmp   n1118_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              rax, qword ptr [rip + .Lx1299_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n1122_disjunction_α
.Lx1299_0:
                        .quad            .Lx1299_0_s
.Lx1299_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1122_disjunction_α:
                        mov              qword ptr [rbp + 3568], 0
                        mov              qword ptr [rbp + 3576], 0
                        mov              dword ptr [rbp + 3584], 0
                                                                                        jmp   n1125_lit_string_α
n1122_disjunction_as:
                        mov              eax, dword ptr [rbp + 3584]
                        cmp              eax, 0
                                                                                        jne   .Lx1301_0
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n1123_call_builtin_icon_α
.Lx1301_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1301_1
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n1123_call_builtin_icon_α
.Lx1301_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1301_2
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n1123_call_builtin_icon_α
.Lx1301_2:
                                                                                        jmp   n1123_call_builtin_icon_α
n1122_disjunction_β:
                        mov              eax, dword ptr [rbp + 3584]
                        cmp              eax, 0
                                                                                        je    n1122_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1127_iterate_β
                                                                                        jmp   n1122_disjunction_af
n1122_disjunction_af:
                        add              dword ptr [rbp + 3584], 1
                        mov              eax, dword ptr [rbp + 3584]
                        cmp              eax, 1
                                                                                        je    n1126_var_α
                        cmp              eax, 2
                                                                                        je    n1128_lit_string_α
                                                                                        jmp   n1124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        .section         .rodata
.Lrkfn1303:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1303]
                        lea              rsi, [rbp + 3504]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n1122_disjunction_β
                                                                                        jmp   n1122_disjunction_β
n1123_call_builtin_icon_β:
                                                                                        jmp   n1122_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1124_lit_integer_α:
                        mov              qword ptr [rbp + 3440], 6
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n1130_lit_integer_α
.Lx1304_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1125_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx1305_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n1122_disjunction_as
n1125_lit_string_β:
                                                                                        jmp   n1122_disjunction_af
.Lx1305_0:
                        .quad            .Lx1305_0_s
.Lx1305_0_s:
                        .string          "L2:"
#-----------------------------------------------------------------------------------------------------------------------
n1126_var_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n1127_iterate_α
n1126_var_β:
                                                                                        jmp   n1122_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1127_iterate_α:
                        mov              qword ptr [rbp + 3680], 0
.Lx1309_0:
                        mov              rdi, qword ptr [rbp + 3696]
                        mov              rsi, qword ptr [rbp + 3704]
                        mov              rdx, qword ptr [rbp + 3680]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              rax, 99
                                                                                        je    n1122_disjunction_af
                                                                                        jmp   n1129_call_builtin_icon_α
n1127_iterate_β:
                        inc              qword ptr [rbp + 3680]
                                                                                        jmp   .Lx1309_0
#-----------------------------------------------------------------------------------------------------------------------
n1128_lit_string_α:
                        mov              qword ptr [rbp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n1122_disjunction_as
n1128_lit_string_β:
                                                                                        jmp   n1122_disjunction_af
.Lx1310_0:
                        .quad            .Lx1310_0_s
.Lx1310_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1129_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        .section         .rodata
.Lrkfn1312:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1312]
                        lea              rsi, [rbp + 3632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n1127_iterate_β
                                                                                        jmp   n1122_disjunction_as
n1129_call_builtin_icon_β:
                                                                                        jmp   n1127_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1130_lit_integer_α:
                        mov              qword ptr [rbp + 3456], 6
                        mov              rax, qword ptr [rip + .Lx1313_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n1131_lit_integer_α
.Lx1313_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx1314_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n1132_make_list_α
.Lx1314_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1132_make_list_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3392]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n1133_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lrkfn1318:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1318]
                        lea              rsi, [rbp + 3344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n1135_var_α
                                                                                        jmp   n1134_assign_α
n1133_call_builtin_icon_β:
                                                                                        jmp   n1135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_assign_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                                                                                        jmp   n1135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_var_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n1136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_var_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n1138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n1139_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1138_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn1327:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1327]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n1137_var_α
                                                                                        jmp   n1137_var_α
n1138_call_builtin_icon_β:
                                                                                        jmp   n1137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn1329:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1329]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n1140_var_α
                                                                                        jmp   n1141_assign_α
n1139_call_builtin_icon_β:
                                                                                        jmp   n1140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1140_var_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n1142_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_assign_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n1140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1142_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx1333_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n1144_call_builtin_icon_α
.Lx1333_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1143_var_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n1145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3112], rax
                        .section         .rodata
.Lrkfn1337:             .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1337]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n1143_var_α
                                                                                        jmp   n1143_var_α
n1144_call_builtin_icon_β:
                                                                                        jmp   n1143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1145_lit_integer_α:
                        mov              qword ptr [rbp + 3056], 6
                        mov              rax, qword ptr [rip + .Lx1338_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n1147_call_builtin_icon_α
.Lx1338_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1146_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx1339_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n1148_disjunction_α
.Lx1339_0:
                        .quad            .Lx1339_0_s
.Lx1339_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1147_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lrkfn1341:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1341]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n1146_lit_string_α
                                                                                        jmp   n1146_lit_string_α
n1147_call_builtin_icon_β:
                                                                                        jmp   n1146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1148_disjunction_α:
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              dword ptr [rbp + 2784], 0
                                                                                        jmp   n1151_lit_string_α
n1148_disjunction_as:
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0
                                                                                        jne   .Lx1343_0
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n1149_call_builtin_icon_α
.Lx1343_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1343_1
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n1149_call_builtin_icon_α
.Lx1343_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1343_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n1149_call_builtin_icon_α
.Lx1343_2:
                                                                                        jmp   n1149_call_builtin_icon_α
n1148_disjunction_β:
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0
                                                                                        je    n1148_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1153_iterate_β
                                                                                        jmp   n1148_disjunction_af
n1148_disjunction_af:
                        add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 1
                                                                                        je    n1152_var_α
                        cmp              eax, 2
                                                                                        je    n1154_lit_string_α
                                                                                        jmp   n1150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn1345:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1345]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n1148_disjunction_β
                                                                                        jmp   n1148_disjunction_β
n1149_call_builtin_icon_β:
                                                                                        jmp   n1148_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1150_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n1156_disjunction_α
.Lx1346_0:
                        .quad            .Lx1346_0_s
.Lx1346_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1151_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx1347_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n1148_disjunction_as
n1151_lit_string_β:
                                                                                        jmp   n1148_disjunction_af
.Lx1347_0:
                        .quad            .Lx1347_0_s
.Lx1347_0_s:
                        .string          "S1:"
#-----------------------------------------------------------------------------------------------------------------------
n1152_var_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n1157_call_builtin_icon_α
n1152_var_β:
                                                                                        jmp   n1148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1153_iterate_α:
                        mov              qword ptr [rbp + 2880], 0
.Lx1351_0:
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
                        mov              rdx, qword ptr [rbp + 2880]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              rax, 99
                                                                                        je    n1148_disjunction_af
                                                                                        jmp   n1155_call_builtin_icon_α
n1153_iterate_β:
                        inc              qword ptr [rbp + 2880]
                                                                                        jmp   .Lx1351_0
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx1352_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n1148_disjunction_as
n1154_lit_string_β:
                                                                                        jmp   n1148_disjunction_af
.Lx1352_0:
                        .quad            .Lx1352_0_s
.Lx1352_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn1354:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1354]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n1153_iterate_β
                                                                                        jmp   n1148_disjunction_as
n1155_call_builtin_icon_β:
                                                                                        jmp   n1153_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1156_disjunction_α:
                        mov              qword ptr [rbp + 2480], 0
                        mov              qword ptr [rbp + 2488], 0
                        mov              dword ptr [rbp + 2496], 0
                                                                                        jmp   n1160_lit_string_α
n1156_disjunction_as:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 0
                                                                                        jne   .Lx1356_0
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1158_call_builtin_icon_α
.Lx1356_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1356_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1158_call_builtin_icon_α
.Lx1356_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1356_2
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1158_call_builtin_icon_α
.Lx1356_2:
                                                                                        jmp   n1158_call_builtin_icon_α
n1156_disjunction_β:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 0
                                                                                        je    n1156_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1162_iterate_β
                                                                                        jmp   n1156_disjunction_af
n1156_disjunction_af:
                        add              dword ptr [rbp + 2496], 1
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 1
                                                                                        je    n1161_var_α
                        cmp              eax, 2
                                                                                        je    n1163_lit_string_α
                                                                                        jmp   n1159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2920], rax
                        .section         .rodata
.Lrkfn1358:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1358]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n1148_disjunction_af
                                                                                        jmp   n1153_iterate_α
n1157_call_builtin_icon_β:
                                                                                        jmp   n1148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn1360:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1360]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n1156_disjunction_β
                                                                                        jmp   n1156_disjunction_β
n1158_call_builtin_icon_β:
                                                                                        jmp   n1156_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1159_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1362:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1362]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n1166_var_ref_α
                                                                                        jmp   n1165_assign_α
n1159_call_builtin_icon_β:
                                                                                        jmp   n1166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx1363_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n1156_disjunction_as
n1160_lit_string_β:
                                                                                        jmp   n1156_disjunction_af
.Lx1363_0:
                        .quad            .Lx1363_0_s
.Lx1363_0_s:
                        .string          "S2:"
#-----------------------------------------------------------------------------------------------------------------------
n1161_var_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n1167_call_builtin_icon_α
n1161_var_β:
                                                                                        jmp   n1156_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1162_iterate_α:
                        mov              qword ptr [rbp + 2592], 0
.Lx1367_0:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2592]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              rax, 99
                                                                                        je    n1156_disjunction_af
                                                                                        jmp   n1164_call_builtin_icon_α
n1162_iterate_β:
                        inc              qword ptr [rbp + 2592]
                                                                                        jmp   .Lx1367_0
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx1368_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n1156_disjunction_as
n1163_lit_string_β:
                                                                                        jmp   n1156_disjunction_af
.Lx1368_0:
                        .quad            .Lx1368_0_s
.Lx1368_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1164_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn1370:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1370]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n1162_iterate_β
                                                                                        jmp   n1156_disjunction_as
n1164_call_builtin_icon_β:
                                                                                        jmp   n1162_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1165_assign_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n1166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n1168_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lrkfn1375:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1375]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n1156_disjunction_af
                                                                                        jmp   n1162_iterate_α
n1167_call_builtin_icon_β:
                                                                                        jmp   n1156_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n1169_subscript_α
.Lx1376_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1169_subscript_α:
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1171_var_ref_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n1170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx1378_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n1172_assign_var_α
.Lx1378_0:
                        .quad            .Lx1378_0_s
.Lx1378_0_s:
                        .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n1171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n1173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1171_var_ref_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n1171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx1382_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n1174_subscript_α
.Lx1382_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1174_subscript_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1176_var_ref_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n1175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n1177_assign_var_α
.Lx1384_0:
                        .quad            .Lx1384_0_s
.Lx1384_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n1176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n1178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1176_var_ref_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n1176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx1388_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1179_subscript_α
.Lx1388_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1179_subscript_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1181_var_ref_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n1180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx1390_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n1182_assign_var_α
.Lx1390_0:
                        .quad            .Lx1390_0_s
.Lx1390_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n1181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n1183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1181_var_ref_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n1181_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n1184_subscript_α
.Lx1394_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n1184_subscript_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1186_var_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n1185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_α:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n1187_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1186_var_α:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n1188_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1186_var_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n1186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn1402:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1402]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n1189_var_α
                                                                                        jmp   n1190_assign_α
n1188_call_builtin_icon_β:
                                                                                        jmp   n1189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n1191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_assign_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n1189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx1406_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n1193_call_builtin_icon_α
.Lx1406_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n1194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1193_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn1410:             .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1410]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n1192_var_α
                                                                                        jmp   n1192_var_α
n1193_call_builtin_icon_β:
                                                                                        jmp   n1192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx1411_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n1196_lit_string_α
.Lx1411_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1195_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx1412_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n1197_disjunction_α
.Lx1412_0:
                        .quad            .Lx1412_0_s
.Lx1412_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1196_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx1413_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n1198_call_builtin_icon_α
.Lx1413_0:
                        .quad            .Lx1413_0_s
.Lx1413_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n1197_disjunction_α:
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0
                                                                                        jmp   n1201_lit_string_α
n1197_disjunction_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        jne   .Lx1415_0
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1199_call_builtin_icon_α
.Lx1415_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1415_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1199_call_builtin_icon_α
.Lx1415_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1415_2
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1199_call_builtin_icon_α
.Lx1415_2:
                                                                                        jmp   n1199_call_builtin_icon_α
n1197_disjunction_β:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        je    n1197_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1203_iterate_β
                                                                                        jmp   n1197_disjunction_af
n1197_disjunction_af:
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 1
                                                                                        je    n1202_var_α
                        cmp              eax, 2
                                                                                        je    n1204_lit_string_α
                                                                                        jmp   n1200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn1417:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1417]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n1195_lit_string_α
                                                                                        jmp   n1195_lit_string_α
n1198_call_builtin_icon_β:
                                                                                        jmp   n1195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1419:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1419]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n1197_disjunction_β
                                                                                        jmp   n1197_disjunction_β
n1199_call_builtin_icon_β:
                                                                                        jmp   n1197_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1200_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx1420_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n1206_disjunction_α
.Lx1420_0:
                        .quad            .Lx1420_0_s
.Lx1420_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1201_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx1421_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n1197_disjunction_as
n1201_lit_string_β:
                                                                                        jmp   n1197_disjunction_af
.Lx1421_0:
                        .quad            .Lx1421_0_s
.Lx1421_0_s:
                        .string          "T1:"
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_α:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n1207_lit_integer_α
n1202_var_β:
                                                                                        jmp   n1197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1203_iterate_α:
                        mov              qword ptr [rbp + 1632], 0
.Lx1425_0:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1632]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              rax, 99
                                                                                        je    n1197_disjunction_af
                                                                                        jmp   n1205_call_builtin_icon_α
n1203_iterate_β:
                        inc              qword ptr [rbp + 1632]
                                                                                        jmp   .Lx1425_0
#-----------------------------------------------------------------------------------------------------------------------
n1204_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx1426_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n1197_disjunction_as
n1204_lit_string_β:
                                                                                        jmp   n1197_disjunction_af
.Lx1426_0:
                        .quad            .Lx1426_0_s
.Lx1426_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn1428:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1428]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n1203_iterate_β
                                                                                        jmp   n1197_disjunction_as
n1205_call_builtin_icon_β:
                                                                                        jmp   n1203_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1206_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n1210_lit_string_α
n1206_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx1430_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1208_call_builtin_icon_α
.Lx1430_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1430_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1208_call_builtin_icon_α
.Lx1430_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1430_2
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1208_call_builtin_icon_α
.Lx1430_2:
                                                                                        jmp   n1208_call_builtin_icon_α
n1206_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n1206_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1212_iterate_β
                                                                                        jmp   n1206_disjunction_af
n1206_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n1211_var_α
                        cmp              eax, 2
                                                                                        je    n1213_lit_string_α
                                                                                        jmp   n1209_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1207_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx1431_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n1215_call_builtin_icon_α
.Lx1431_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1208_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1433:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1433]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n1206_disjunction_β
                                                                                        jmp   n1206_disjunction_β
n1208_call_builtin_icon_β:
                                                                                        jmp   n1206_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1209_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx1434_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n1216_lit_integer_α
.Lx1434_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1210_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx1435_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n1206_disjunction_as
n1210_lit_string_β:
                                                                                        jmp   n1206_disjunction_af
.Lx1435_0:
                        .quad            .Lx1435_0_s
.Lx1435_0_s:
                        .string          "T2:"
#-----------------------------------------------------------------------------------------------------------------------
n1211_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n1217_lit_integer_α
n1211_var_β:
                                                                                        jmp   n1206_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1212_iterate_α:
                        mov              qword ptr [rbp + 1312], 0
.Lx1439_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              rax, 99
                                                                                        je    n1206_disjunction_af
                                                                                        jmp   n1214_call_builtin_icon_α
n1212_iterate_β:
                        inc              qword ptr [rbp + 1312]
                                                                                        jmp   .Lx1439_0
#-----------------------------------------------------------------------------------------------------------------------
n1213_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx1440_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1206_disjunction_as
n1213_lit_string_β:
                                                                                        jmp   n1206_disjunction_af
.Lx1440_0:
                        .quad            .Lx1440_0_s
.Lx1440_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1214_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn1442:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1442]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n1212_iterate_β
                                                                                        jmp   n1206_disjunction_as
n1214_call_builtin_icon_β:
                                                                                        jmp   n1212_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1215_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn1444:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1444]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n1197_disjunction_af
                                                                                        jmp   n1203_iterate_α
n1215_call_builtin_icon_β:
                                                                                        jmp   n1197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1216_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx1445_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1218_lit_integer_α
.Lx1445_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1217_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx1446_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n1219_call_builtin_icon_α
.Lx1446_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1218_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx1447_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1220_lit_integer_α
.Lx1447_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1219_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn1449:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1449]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n1206_disjunction_af
                                                                                        jmp   n1212_iterate_α
n1219_call_builtin_icon_β:
                                                                                        jmp   n1206_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1220_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx1450_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n1221_lit_integer_α
.Lx1450_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1221_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1222_call_α
.Lx1451_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1222_call_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn1453:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1453]
                        lea              rsi, [rbp + 944]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n1224_var_α
                                                                                        jmp   n1223_assign_α
n1222_call_β:
                                                                                        jmp   n1224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1223_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n1224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1224_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n1225_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1225_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn1458:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1458]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n1226_var_α
                                                                                        jmp   n1227_assign_α
n1225_call_builtin_icon_β:
                                                                                        jmp   n1226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1226_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1228_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1227_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n1226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1228_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx1462_0]
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n1229_var_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1230_lit_integer_α
.Lx1462_0:
                        .quad            .Lx1462_0_s
.Lx1462_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n1229_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n1231_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1230_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx1465_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1233_assign_var_α
.Lx1465_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1231_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx1466_0]
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n1232_lit_string_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n1234_lit_integer_α
.Lx1466_0:
                        .quad            .Lx1466_0_s
.Lx1466_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n1232_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx1467_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1235_disjunction_α
.Lx1467_0:
                        .quad            .Lx1467_0_s
.Lx1467_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1233_assign_var_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1229_var_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n1229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1234_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx1469_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1236_assign_var_α
.Lx1469_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1235_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n1239_lit_string_α
n1235_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx1471_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1237_call_builtin_icon_α
.Lx1471_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1471_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1237_call_builtin_icon_α
.Lx1471_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1471_2
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1237_call_builtin_icon_α
.Lx1471_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1471_3
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1237_call_builtin_icon_α
.Lx1471_3:
                                                                                        jmp   n1237_call_builtin_icon_α
n1235_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    n1235_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1235_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1242_iterate_β
                                                                                        jmp   n1235_disjunction_af
n1235_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    n1240_var_α
                        cmp              eax, 2
                                                                                        je    n1241_var_α
                        cmp              eax, 3
                                                                                        je    n1243_lit_string_α
                                                                                        jmp   n1238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1236_assign_var_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1232_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n1232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1237_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1474:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1474]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n1235_disjunction_β
                                                                                        jmp   n1235_disjunction_β
n1237_call_builtin_icon_β:
                                                                                        jmp   n1235_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1238_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx1475_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1246_disjunction_α
.Lx1475_0:
                        .quad            .Lx1475_0_s
.Lx1475_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1239_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx1476_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1235_disjunction_as
n1239_lit_string_β:
                                                                                        jmp   n1235_disjunction_af
.Lx1476_0:
                        .quad            .Lx1476_0_s
.Lx1476_0_s:
                        .string          "R1:"
#-----------------------------------------------------------------------------------------------------------------------
n1240_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1244_call_builtin_icon_α
n1240_var_β:
                                                                                        jmp   n1235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1241_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1247_call_builtin_icon_α
n1241_var_β:
                                                                                        jmp   n1235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1242_iterate_α:
                        mov              qword ptr [rbp + 624], 0
.Lx1482_0:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 624]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              rax, 99
                                                                                        je    n1235_disjunction_af
                                                                                        jmp   n1245_call_builtin_icon_α
n1242_iterate_β:
                        inc              qword ptr [rbp + 624]
                                                                                        jmp   .Lx1482_0
#-----------------------------------------------------------------------------------------------------------------------
n1243_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx1483_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1235_disjunction_as
n1243_lit_string_β:
                                                                                        jmp   n1235_disjunction_af
.Lx1483_0:
                        .quad            .Lx1483_0_s
.Lx1483_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1244_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1485:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1485]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n1235_disjunction_af
                                                                                        jmp   n1235_disjunction_as
n1244_call_builtin_icon_β:
                                                                                        jmp   n1235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1245_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn1487:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1487]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n1242_iterate_β
                                                                                        jmp   n1235_disjunction_as
n1245_call_builtin_icon_β:
                                                                                        jmp   n1242_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1246_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n1250_lit_string_α
n1246_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx1489_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1248_call_builtin_icon_α
.Lx1489_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1489_1
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1248_call_builtin_icon_α
.Lx1489_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1489_2
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1248_call_builtin_icon_α
.Lx1489_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1489_3
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1248_call_builtin_icon_α
.Lx1489_3:
                                                                                        jmp   n1248_call_builtin_icon_α
n1246_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n1246_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1246_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1253_iterate_β
                                                                                        jmp   n1246_disjunction_af
n1246_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n1251_var_α
                        cmp              eax, 2
                                                                                        je    n1252_var_α
                        cmp              eax, 3
                                                                                        je    n1254_lit_string_α
                                                                                        jmp   n1249_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn1491:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1491]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n1235_disjunction_af
                                                                                        jmp   n1242_iterate_α
n1247_call_builtin_icon_β:
                                                                                        jmp   n1235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1248_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn1493:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1493]
                        lea              rsi, [rbp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n1246_disjunction_β
                                                                                        jmp   n1246_disjunction_β
n1248_call_builtin_icon_β:
                                                                                        jmp   n1246_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1249_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_copytest_γ
#-----------------------------------------------------------------------------------------------------------------------
n1250_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1495_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1246_disjunction_as
n1250_lit_string_β:
                                                                                        jmp   n1246_disjunction_af
.Lx1495_0:
                        .quad            .Lx1495_0_s
.Lx1495_0_s:
                        .string          "R2:"
#-----------------------------------------------------------------------------------------------------------------------
n1251_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1255_call_builtin_icon_α
n1251_var_β:
                                                                                        jmp   n1246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1252_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1257_call_builtin_icon_α
n1252_var_β:
                                                                                        jmp   n1246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1253_iterate_α:
                        mov              qword ptr [rbp + 272], 0
.Lx1501_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rax, 99
                                                                                        je    n1246_disjunction_af
                                                                                        jmp   n1256_call_builtin_icon_α
n1253_iterate_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx1501_0
#-----------------------------------------------------------------------------------------------------------------------
n1254_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1502_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1246_disjunction_as
n1254_lit_string_β:
                                                                                        jmp   n1246_disjunction_af
.Lx1502_0:
                        .quad            .Lx1502_0_s
.Lx1502_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1255_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1504:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1504]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1246_disjunction_af
                                                                                        jmp   n1246_disjunction_as
n1255_call_builtin_icon_β:
                                                                                        jmp   n1246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1256_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn1506:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1506]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n1253_iterate_β
                                                                                        jmp   n1246_disjunction_as
n1256_call_builtin_icon_β:
                                                                                        jmp   n1253_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1257_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1508:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1508]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1246_disjunction_af
                                                                                        jmp   n1253_iterate_α
n1257_call_builtin_icon_β:
                                                                                        jmp   n1246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_copytest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_copytest_β:
                                                                                        jmp   proc_copytest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_copytest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4568]
                        lea              rsp, [rbp + 4592]
                        mov              rbp, [rbp + 4584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_copytest_ω:
                        mov              rax, [rbp + 4576]
                        lea              rsp, [rbp + 4592]
                        mov              rbp, [rbp + 4584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_copytest_dcα:
                        pop              r11
                        sub              rsp, 4608
                        mov              qword ptr [rsp + 4584], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 4560], r11
                        lea              rax, [rip + .Lx1509_2]
                        mov              qword ptr [rbp + 4568], rax
                        lea              rax, [rip + .Lx1509_3]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rdi, rbp
                        mov              esi, 4432
                        mov              edx, 4560
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_copytest_α_body
.Lx1509_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -4592
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1509_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -4592
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_messtest_α
proc_messtest_α:
                        .global          proc_messtest_α
                        .global          proc_messtest_β
                        .global          proc_messtest_γ
                        .global          proc_messtest_ω
                        sub              rsp, 5360
                        mov              [rsp + 5336], rcx
                        mov              [rsp + 5344], rdx
                        mov              [rsp + 5352], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5280
                        mov              edx, 5328
                        call             rt_jmp_frame_lexprep2@PLT
proc_messtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1510_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1673:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1673]
                        lea              rsi, [rbp + 5264]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              eax, 99
                                                                                        je    n1511_lit_charset_α
                                                                                        jmp   n1511_lit_charset_α
n1510_call_builtin_icon_β:
                                                                                        jmp   n1511_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1511_lit_charset_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              dword ptr [rbp + 2004], -1
                        mov              rax, qword ptr [rip + .Lx1674_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n1512_lit_charset_α
.Lx1674_0:
                        .quad            .Lx1674_0_s
.Lx1674_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1512_lit_charset_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              dword ptr [rbp + 2020], -1
                        mov              rax, qword ptr [rip + .Lx1675_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n1513_lit_real_α
.Lx1675_0:
                        .quad            .Lx1675_0_s
.Lx1675_0_s:
                        .string          "0cs"
#-----------------------------------------------------------------------------------------------------------------------
n1513_lit_real_α:
                        mov              qword ptr [rbp + 2032], 7
                        mov              rax, qword ptr [rip + .Lx1676_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n1514_call_builtin_icon_α
.Lx1676_0:
                        .quad            4616639978017495450
#-----------------------------------------------------------------------------------------------------------------------
n1514_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1678:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1678]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1515_lit_real_α
n1514_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1515_lit_real_α:
                        mov              qword ptr [rbp + 2080], 7
                        mov              rax, qword ptr [rip + .Lx1679_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n1517_lit_string_α
.Lx1679_0:
                        .quad            4612136378390124954
#-----------------------------------------------------------------------------------------------------------------------
n1516_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1518_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1517_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx1682_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n1520_keyword_icon_α
.Lx1682_0:
                        .quad            .Lx1682_0_s
.Lx1682_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1518_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1519_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1522_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1520_keyword_icon_α:
                        mov              qword ptr [rbp + 2112], 0
                        mov              qword ptr [rbp + 2120], 0
                                                                                        jmp   n1524_proc_value_α
n1520_keyword_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1521_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn1689:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1689]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n1519_var_α
                                                                                        jmp   n1519_var_α
n1521_call_builtin_icon_β:
                                                                                        jmp   n1519_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1522_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn1691:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1691]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n1523_var_α
                                                                                        jmp   n1525_assign_α
n1522_call_builtin_icon_β:
                                                                                        jmp   n1523_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1523_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1526_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1524_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1695_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n1528_proc_value_α
.Lx1695_0:
                        .quad            .Lx1695_0_s
.Lx1695_0_s:
                        .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n1525_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                                                                                        jmp   n1523_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1526_var_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1529_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1527_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1700:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1700]
                        lea              rsi, [rbp + 416]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n1530_var_α
                                                                                        jmp   n1530_var_α
n1527_call_builtin_icon_β:
                                                                                        jmp   n1530_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1528_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1702_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n1531_lit_string_α
.Lx1702_0:
                        .quad            .Lx1702_0_s
.Lx1702_0_s:
                        .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n1529_iterate_α:
                        mov              qword ptr [rbp + 576], 0
.Lx1704_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 576]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              rax, 99
                                                                                        je    n1527_call_builtin_icon_α
                                                                                        jmp   n1532_call_builtin_icon_α
n1529_iterate_β:
                        inc              qword ptr [rbp + 576]
                                                                                        jmp   .Lx1704_0
#-----------------------------------------------------------------------------------------------------------------------
n1530_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1533_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1531_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx1707_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n1535_proc_value_α
.Lx1707_0:
                        .quad            .Lx1707_0_s
.Lx1707_0_s:
                        .string          "epsilons"
#-----------------------------------------------------------------------------------------------------------------------
n1532_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1709:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1709]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n1529_iterate_β
                                                                                        jmp   n1536_call_builtin_icon_α
n1532_call_builtin_icon_β:
                                                                                        jmp   n1529_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1533_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn1711:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1711]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n1534_var_α
                                                                                        jmp   n1537_iterate_α
n1533_call_builtin_icon_β:
                                                                                        jmp   n1534_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1534_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1538_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1535_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1715_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n1540_lit_string_α
.Lx1715_0:
                        .quad            .Lx1715_0_s
.Lx1715_0_s:
                        .string          "r0"
#-----------------------------------------------------------------------------------------------------------------------
n1536_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn1717:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1717]
                        lea              rsi, [rbp + 448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n1529_iterate_β
                                                                                        jmp   n1529_iterate_β
n1536_call_builtin_icon_β:
                                                                                        jmp   n1529_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1537_iterate_α:
                        mov              qword ptr [rbp + 320], 0
.Lx1719_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 320]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              rax, 99
                                                                                        je    n1534_var_α
                                                                                        jmp   n1541_call_builtin_icon_α
n1537_iterate_β:
                        inc              qword ptr [rbp + 320]
                                                                                        jmp   .Lx1719_0
#-----------------------------------------------------------------------------------------------------------------------
n1538_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1720_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1542_call_proc_staged_α
.Lx1720_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1539_var_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1543_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1540_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx1723_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n1545_proc_value_α
.Lx1723_0:
                        .quad            .Lx1723_0_s
.Lx1723_0_s:
                        .string          "delta"
#-----------------------------------------------------------------------------------------------------------------------
n1541_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn1725:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1725]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1537_iterate_β
                                                                                        jmp   n1546_call_builtin_icon_α
n1541_call_builtin_icon_β:
                                                                                        jmp   n1537_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1542_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        call             proc_wsortf_dcα
                                                                                        jmp   .Lx1727_2
.Lx1727_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1539_var_α
                                                                                        jmp   n1539_var_α
n1542_call_proc_staged_β:
                                                                                        jmp   n1539_var_α
.Lx1727_0:
                        .quad            .Lx1727_0_s
.Lx1727_0_s:
                        .string          "wsortf"
#-----------------------------------------------------------------------------------------------------------------------
n1543_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx1728_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1547_call_proc_staged_α
.Lx1728_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n1544_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_messtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n1545_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1731_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n1548_lit_string_α
.Lx1731_0:
                        .quad            .Lx1731_0_s
.Lx1731_0_s:
                        .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n1546_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn1733:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1733]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n1537_iterate_β
                                                                                        jmp   n1537_iterate_β
n1546_call_builtin_icon_β:
                                                                                        jmp   n1537_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1547_call_proc_staged_α:
                        lea              rsi, [rbp + 80]
                        lea              rdx, [rbp + 96]
                        call             proc_wsortf_dcα
                                                                                        jmp   .Lx1735_2
.Lx1735_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n1544_return_α
                                                                                        jmp   n1544_return_α
n1547_call_proc_staged_β:
                                                                                        jmp   n1544_return_α
.Lx1735_0:
                        .quad            .Lx1735_0_s
.Lx1735_0_s:
                        .string          "wsortf"
#-----------------------------------------------------------------------------------------------------------------------
n1548_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx1736_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1549_lit_integer_α
.Lx1736_0:
                        .quad            .Lx1736_0_s
.Lx1736_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n1549_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx1737_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n1550_call_builtin_icon_α
.Lx1737_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1550_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn1739:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1739]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1551_make_list_α
n1550_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1551_make_list_α:
                        lea              rdi, [rbp + 2336]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n1552_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1552_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1743_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n1553_lit_charset_α
.Lx1743_0:
                        .quad            .Lx1743_0_s
.Lx1743_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n1553_lit_charset_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], -1
                        mov              rax, qword ptr [rip + .Lx1744_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n1554_lit_integer_α
.Lx1744_0:
                        .quad            .Lx1744_0_s
.Lx1744_0_s:
                        .string          "123cs"
#-----------------------------------------------------------------------------------------------------------------------
n1554_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx1745_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n1555_lit_integer_α
.Lx1745_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1555_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx1746_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n1556_make_list_α
.Lx1746_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1556_make_list_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 2
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n1557_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1557_lit_integer_α:
                        mov              qword ptr [rbp + 2464], 6
                        mov              rax, qword ptr [rip + .Lx1749_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n1558_lit_integer_α
.Lx1749_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n1558_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx1750_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1559_binop_α
.Lx1750_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1559_binop_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n1560_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1560_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1753_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n1561_lit_integer_α
.Lx1753_0:
                        .quad            .Lx1753_0_s
.Lx1753_0_s:
                        .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n1561_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx1754_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n1562_call_builtin_icon_α
.Lx1754_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1562_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn1756:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1756]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1563_lit_integer_α
n1562_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1563_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx1757_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n1564_lit_integer_α
.Lx1757_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1564_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx1758_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n1565_call_builtin_icon_α
.Lx1758_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1565_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn1760:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1760]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1566_keyword_icon_α
n1565_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1566_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1761_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n1567_lit_real_α
n1566_keyword_icon_β:
                                                                                        jmp   n1516_var_α
.Lx1761_0:
                        .quad            .Lx1761_0_s
.Lx1761_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n1567_lit_real_α:
                        mov              qword ptr [rbp + 2720], 7
                        mov              rax, qword ptr [rip + .Lx1762_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n1568_proc_value_α
.Lx1762_0:
                        .quad            4614613358185178726
#-----------------------------------------------------------------------------------------------------------------------
n1568_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1764_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n1569_lit_integer_α
.Lx1764_0:
                        .quad            .Lx1764_0_s
.Lx1764_0_s:
                        .string          "reverse"
#-----------------------------------------------------------------------------------------------------------------------
n1569_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx1765_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n1570_call_α
.Lx1765_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1570_call_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                        .section         .rodata
.Lrkfn1767:             .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1767]
                        lea              rsi, [rbp + 2768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1571_make_list_α
n1570_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1571_make_list_α:
                        lea              rdi, [rbp + 2832]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n1572_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1572_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 6
                        mov              rax, qword ptr [rip + .Lx1770_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n1573_call_builtin_icon_α
.Lx1770_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1573_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        .section         .rodata
.Lrkfn1772:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1772]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1574_proc_value_α
n1573_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1574_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1774_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n1575_lit_integer_α
.Lx1774_0:
                        .quad            .Lx1774_0_s
.Lx1774_0_s:
                        .string          "r5"
#-----------------------------------------------------------------------------------------------------------------------
n1575_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx1775_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n1576_lit_integer_α
.Lx1775_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1576_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 6
                        mov              rax, qword ptr [rip + .Lx1776_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n1577_call_α
.Lx1776_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1577_call_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn1778:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1778]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1578_keyword_icon_α
n1577_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1578_keyword_icon_α:
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                                                                                        jmp   n1579_create_α
n1578_keyword_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1579_create_α:
                        mov              qword ptr [rbp + 3056], r12
                        mov              qword ptr [rbp + 3064], r13
                        mov              qword ptr [rbp + 3072], r14
                        mov              qword ptr [rbp + 3080], r15
                        mov              qword ptr [rbp + 3088], rbx
                        mov              qword ptr [rbp + 3096], rbp
                        lea              rdi, [rip + n1581_disjunction_α]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 5360
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 3040], rax
                                                                                        jmp   n1580_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n1580_lit_real_α:
                        mov              qword ptr [rbp + 3184], 7
                        mov              rax, qword ptr [rip + .Lx1782_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n1582_lit_integer_α
.Lx1782_0:
                        .quad            4617878467915022336
#-----------------------------------------------------------------------------------------------------------------------
n1581_disjunction_α:
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              dword ptr [rbp + 3136], 0
                                                                                        jmp   n1584_lit_integer_α
n1581_disjunction_as:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        jne   .Lx1784_0
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n1583_coret_α
.Lx1784_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1784_1
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n1583_coret_α
.Lx1784_1:
                                                                                        jmp   n1583_coret_α
n1581_disjunction_β:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        je    n1581_disjunction_af
                                                                                        jmp   n1581_disjunction_af
n1581_disjunction_af:
                        add              dword ptr [rbp + 3136], 1
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 1
                                                                                        je    n1585_lit_integer_α
                                                                                        jmp   n1669_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n1582_lit_integer_α:
                        mov              qword ptr [rbp + 3296], 6
                        mov              rax, qword ptr [rip + .Lx1785_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n1586_lit_integer_α
.Lx1785_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1583_coret_α:
                        mov              rdi, qword ptr [rbp + 3120]
                        mov              rsi, qword ptr [rbp + 3128]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n1581_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1584_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx1788_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n1581_disjunction_as
n1584_lit_integer_β:
                                                                                        jmp   n1581_disjunction_af
.Lx1788_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1585_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, qword ptr [rip + .Lx1789_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n1581_disjunction_as
n1585_lit_integer_β:
                                                                                        jmp   n1581_disjunction_af
.Lx1789_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1586_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx1790_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n1587_make_list_α
.Lx1790_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1587_make_list_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 2
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n1588_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1588_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lrkfn1794:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1794]
                        lea              rsi, [rbp + 3216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1589_lit_string_α
n1588_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1589_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx1795_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n1590_lit_integer_α
.Lx1795_0:
                        .quad            .Lx1795_0_s
.Lx1795_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1590_lit_integer_α:
                        mov              qword ptr [rbp + 3408], 6
                        mov              rax, qword ptr [rip + .Lx1796_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n1591_lit_integer_α
.Lx1796_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1591_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 6
                        mov              rax, qword ptr [rip + .Lx1797_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n1592_call_α
.Lx1797_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1592_call_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn1799:             .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1799]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1593_lit_integer_α
n1592_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1593_lit_integer_α:
                        mov              qword ptr [rbp + 3456], 6
                        mov              rax, qword ptr [rip + .Lx1800_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n1594_lit_integer_α
.Lx1800_0:
                        .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1594_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx1801_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n1595_binop_α
.Lx1801_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1595_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3480]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n1596_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1596_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx1803_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n1597_lit_integer_α
.Lx1803_0:
                        .quad            .Lx1803_0_s
.Lx1803_0_s:
                        .string          "epsilon"
#-----------------------------------------------------------------------------------------------------------------------
n1597_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx1804_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n1598_lit_integer_α
.Lx1804_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1598_lit_integer_α:
                        mov              qword ptr [rbp + 3584], 6
                        mov              rax, qword ptr [rip + .Lx1805_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n1599_lit_integer_α
.Lx1805_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1599_lit_integer_α:
                        mov              qword ptr [rbp + 3600], 6
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n1600_make_list_α
.Lx1806_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1600_make_list_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n1601_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1601_lit_integer_α:
                        mov              qword ptr [rbp + 3696], 6
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n1602_lit_integer_α
.Lx1809_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1602_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx1810_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n1603_lit_integer_α
.Lx1810_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1603_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx1811_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n1604_call_α
.Lx1811_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1604_call_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3672], rax
                        .section         .rodata
.Lrkfn1813:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1813]
                        lea              rsi, [rbp + 3632]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1605_proc_value_α
n1604_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1605_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1815_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n1606_keyword_icon_α
.Lx1815_0:
                        .quad            .Lx1815_0_s
.Lx1815_0_s:
                        .string          "r2"
#-----------------------------------------------------------------------------------------------------------------------
n1606_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1816_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n1607_lit_integer_α
n1606_keyword_icon_β:
                                                                                        jmp   n1516_var_α
.Lx1816_0:
                        .quad            .Lx1816_0_s
.Lx1816_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n1607_lit_integer_α:
                        mov              qword ptr [rbp + 3792], 6
                        mov              rax, qword ptr [rip + .Lx1817_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n1608_var_α
.Lx1817_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1608_var_α:
                        mov              qword ptr [rbp + 3808], 0
                        mov              qword ptr [rbp + 3816], 0
                                                                                        jmp   n1609_lit_integer_α
n1608_var_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1609_lit_integer_α:
                        mov              qword ptr [rbp + 3936], 6
                        mov              rax, qword ptr [rip + .Lx1819_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n1610_lit_integer_α
.Lx1819_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1610_lit_integer_α:
                        mov              qword ptr [rbp + 3952], 6
                        mov              rax, qword ptr [rip + .Lx1820_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n1611_lit_integer_α
.Lx1820_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1611_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx1821_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n1612_make_list_α
.Lx1821_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1612_make_list_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3888]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n1613_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1613_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        .section         .rodata
.Lrkfn1825:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1825]
                        lea              rsi, [rbp + 3840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1614_lit_integer_α
n1613_call_builtin_icon_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1614_lit_integer_α:
                        mov              qword ptr [rbp + 3984], 6
                        mov              rax, qword ptr [rip + .Lx1826_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n1615_lit_integer_α
.Lx1826_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1615_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 6
                        mov              rax, qword ptr [rip + .Lx1827_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n1616_lit_integer_α
.Lx1827_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1616_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 6
                        mov              rax, qword ptr [rip + .Lx1828_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n1617_lit_integer_α
.Lx1828_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1617_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n1618_call_α
.Lx1829_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1618_call_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4056], rax
                        .section         .rodata
.Lrkfn1831:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1831]
                        lea              rsi, [rbp + 4016]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1619_proc_value_α
n1618_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1619_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1833_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n1620_proc_value_α
.Lx1833_0:
                        .quad            .Lx1833_0_s
.Lx1833_0_s:
                        .string          "r1"
#-----------------------------------------------------------------------------------------------------------------------
n1620_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1835_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n1621_create_α
.Lx1835_0:
                        .quad            .Lx1835_0_s
.Lx1835_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n1621_create_α:
                        mov              qword ptr [rbp + 4176], r12
                        mov              qword ptr [rbp + 4184], r13
                        mov              qword ptr [rbp + 4192], r14
                        mov              qword ptr [rbp + 4200], r15
                        mov              qword ptr [rbp + 4208], rbx
                        mov              qword ptr [rbp + 4216], rbp
                        lea              rdi, [rip + n1623_disjunction_α]
                        lea              rsi, [rbp + 4176]
                        mov              edx, 5360
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 4160], rax
                                                                                        jmp   n1622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1622_var_α:
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n1624_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1623_disjunction_α:
                        mov              qword ptr [rbp + 4240], 0
                        mov              qword ptr [rbp + 4248], 0
                        mov              dword ptr [rbp + 4256], 0
                                                                                        jmp   n1626_lit_integer_α
n1623_disjunction_as:
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 0
                                                                                        jne   .Lx1841_0
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n1625_coret_α
.Lx1841_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1841_1
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n1625_coret_α
.Lx1841_1:
                                                                                        jmp   n1625_coret_α
n1623_disjunction_β:
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 0
                                                                                        je    n1623_disjunction_af
                                                                                        jmp   n1623_disjunction_af
n1623_disjunction_af:
                        add              dword ptr [rbp + 4256], 1
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 1
                                                                                        je    n1627_lit_integer_α
                                                                                        jmp   n1670_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n1624_lit_charset_α:
                        mov              qword ptr [rbp + 4320], 1
                        mov              dword ptr [rbp + 4324], -1
                        mov              rax, qword ptr [rip + .Lx1842_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n1628_lit_real_α
.Lx1842_0:
                        .quad            .Lx1842_0_s
.Lx1842_0_s:
                        .string          "XYZcs"
#-----------------------------------------------------------------------------------------------------------------------
n1625_coret_α:
                        mov              rdi, qword ptr [rbp + 4240]
                        mov              rsi, qword ptr [rbp + 4248]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n1623_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1626_lit_integer_α:
                        mov              qword ptr [rbp + 4272], 6
                        mov              rax, qword ptr [rip + .Lx1845_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n1623_disjunction_as
n1626_lit_integer_β:
                                                                                        jmp   n1623_disjunction_af
.Lx1845_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1627_lit_integer_α:
                        mov              qword ptr [rbp + 4288], 6
                        mov              rax, qword ptr [rip + .Lx1846_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n1623_disjunction_as
n1627_lit_integer_β:
                                                                                        jmp   n1623_disjunction_af
.Lx1846_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1628_lit_real_α:
                        mov              qword ptr [rbp + 4336], 7
                        mov              rax, qword ptr [rip + .Lx1847_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n1629_lit_integer_α
.Lx1847_0:
                        .quad            4607632778762754458
#-----------------------------------------------------------------------------------------------------------------------
n1629_lit_integer_α:
                        mov              qword ptr [rbp + 4400], 6
                        mov              rax, qword ptr [rip + .Lx1848_0]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n1630_call_α
.Lx1848_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1630_call_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4376], rax
                        .section         .rodata
.Lrkfn1850:             .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1850]
                        lea              rsi, [rbp + 4368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1631_lit_integer_α
n1630_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1631_lit_integer_α:
                        mov              qword ptr [rbp + 4432], 6
                        mov              rax, qword ptr [rip + .Lx1851_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n1632_lit_integer_α
.Lx1851_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1632_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx1852_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n1633_binop_α
.Lx1852_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n1633_binop_α:
                        mov              rdi, qword ptr [rbp + 4432]
                        mov              rsi, qword ptr [rbp + 4440]
                        mov              rdx, qword ptr [rbp + 4448]
                        mov              rcx, qword ptr [rbp + 4456]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n1634_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1634_lit_charset_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], -1
                        mov              rax, qword ptr [rip + .Lx1854_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n1635_lit_integer_α
.Lx1854_0:
                        .quad            .Lx1854_0_s
.Lx1854_0_s:
                        .string          "1234cs"
#-----------------------------------------------------------------------------------------------------------------------
n1635_lit_integer_α:
                        mov              qword ptr [rbp + 4480], 6
                        mov              rax, qword ptr [rip + .Lx1855_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n1636_call_α
.Lx1855_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1636_call_α:
                        .section         .rodata
.Lrkfn1857:             .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1857]
                        lea              rsi, [rbp + 4512]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1637_proc_value_α
n1636_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1637_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1859_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n1638_lit_string_α
.Lx1859_0:
                        .quad            .Lx1859_0_s
.Lx1859_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n1638_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx1860_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n1639_lit_integer_α
.Lx1860_0:
                        .quad            .Lx1860_0_s
.Lx1860_0_s:
                        .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n1639_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx1861_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n1640_lit_integer_α
.Lx1861_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1640_lit_integer_α:
                        mov              qword ptr [rbp + 4688], 6
                        mov              rax, qword ptr [rip + .Lx1862_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n1641_lit_integer_α
.Lx1862_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1641_lit_integer_α:
                        mov              qword ptr [rbp + 4704], 6
                        mov              rax, qword ptr [rip + .Lx1863_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n1642_lit_integer_α
.Lx1863_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1642_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 6
                        mov              rax, qword ptr [rip + .Lx1864_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n1643_lit_integer_α
.Lx1864_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1643_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 6
                        mov              rax, qword ptr [rip + .Lx1865_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n1644_call_α
.Lx1865_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1644_call_α:
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4632], rax
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4648], rax
                        .section         .rodata
.Lrkfn1867:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1867]
                        lea              rsi, [rbp + 4576]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1645_lit_integer_α
n1644_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1645_lit_integer_α:
                        mov              qword ptr [rbp + 4752], 6
                        mov              rax, qword ptr [rip + .Lx1868_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n1646_create_α
.Lx1868_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1646_create_α:
                        mov              qword ptr [rbp + 4784], r12
                        mov              qword ptr [rbp + 4792], r13
                        mov              qword ptr [rbp + 4800], r14
                        mov              qword ptr [rbp + 4808], r15
                        mov              qword ptr [rbp + 4816], rbx
                        mov              qword ptr [rbp + 4824], rbp
                        lea              rdi, [rip + n1648_lit_integer_α]
                        lea              rsi, [rbp + 4784]
                        mov              edx, 5360
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 4768], rax
                                                                                        jmp   n1647_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1647_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1872_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n1649_lit_integer_α
.Lx1872_0:
                        .quad            .Lx1872_0_s
.Lx1872_0_s:
                        .string          "table"
#-----------------------------------------------------------------------------------------------------------------------
n1648_lit_integer_α:
                        mov              qword ptr [rbp + 4880], 6
                        mov              rax, qword ptr [rip + .Lx1873_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n1650_lit_integer_α
.Lx1873_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1649_lit_integer_α:
                        mov              qword ptr [rbp + 4992], 6
                        mov              rax, qword ptr [rip + .Lx1874_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n1651_lit_integer_α
.Lx1874_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1650_lit_integer_α:
                        mov              qword ptr [rbp + 4896], 6
                        mov              rax, qword ptr [rip + .Lx1875_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n1652_to_α
.Lx1875_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1651_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx1876_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n1653_call_α
.Lx1876_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1652_to_α:
                        mov              rdi, qword ptr [rbp + 4880]
                        mov              rsi, qword ptr [rbp + 4888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4880], 6
                        mov              qword ptr [rbp + 4888], rax
                        mov              rdi, qword ptr [rbp + 4896]
                        mov              rsi, qword ptr [rbp + 4904]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4896], 6
                        mov              qword ptr [rbp + 4904], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4864], rax
.Lx1878_0:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rcx, qword ptr [rbp + 4904]
                        cmp              rax, rcx
                                                                                        jg    n1671_cofail_α
                        mov              qword ptr [rbp + 4848], 6
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n1654_coret_α
n1652_to_β:
                        inc              qword ptr [rbp + 4864]
                                                                                        jmp   .Lx1878_0
#-----------------------------------------------------------------------------------------------------------------------
n1653_call_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4968], rax
                        .section         .rodata
.Lrkfn1880:             .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1880]
                        lea              rsi, [rbp + 4944]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1655_proc_value_α
n1653_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1654_coret_α:
                        mov              rdi, qword ptr [rbp + 4848]
                        mov              rsi, qword ptr [rbp + 4856]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n1652_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1655_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1884_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                                                                                        jmp   n1656_call_α
.Lx1884_0:
                        .quad            .Lx1884_0_s
.Lx1884_0_s:
                        .string          "right"
#-----------------------------------------------------------------------------------------------------------------------
n1656_call_α:
                        .section         .rodata
.Lrkfn1886:             .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1886]
                        lea              rsi, [rbp + 5056]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                                                                                        jmp   n1657_lit_string_α
n1656_call_β:
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1657_lit_string_α:
                        mov              qword ptr [rbp + 5072], 1
                        mov              rax, qword ptr [rip + .Lx1887_0]
                        mov              qword ptr [rbp + 5080], rax
                                                                                        jmp   n1658_proc_value_α
.Lx1887_0:
                        .quad            .Lx1887_0_s
.Lx1887_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n1658_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1889_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                                                                                        jmp   n1659_keyword_icon_α
.Lx1889_0:
                        .quad            .Lx1889_0_s
.Lx1889_0_s:
                        .string          "messtest"
#-----------------------------------------------------------------------------------------------------------------------
n1659_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1890_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                                                                                        jmp   n1660_lit_integer_α
n1659_keyword_icon_β:
                                                                                        jmp   n1516_var_α
.Lx1890_0:
                        .quad            .Lx1890_0_s
.Lx1890_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n1660_lit_integer_α:
                        mov              qword ptr [rbp + 5152], 6
                        mov              rax, qword ptr [rip + .Lx1891_0]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n1661_lit_integer_α
.Lx1891_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1661_lit_integer_α:
                        mov              qword ptr [rbp + 5168], 6
                        mov              rax, qword ptr [rip + .Lx1892_0]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n1662_binop_α
.Lx1892_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1662_binop_α:
                        mov              rdi, qword ptr [rbp + 5152]
                        mov              rsi, qword ptr [rbp + 5160]
                        mov              rdx, qword ptr [rbp + 5168]
                        mov              rcx, qword ptr [rbp + 5176]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1516_var_α
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   n1663_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1663_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1895_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n1664_lit_string_α
.Lx1895_0:
                        .quad            .Lx1895_0_s
.Lx1895_0_s:
                        .string          "listtest"
#-----------------------------------------------------------------------------------------------------------------------
n1664_lit_string_α:
                        mov              qword ptr [rbp + 5200], 1
                        mov              rax, qword ptr [rip + .Lx1896_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n1665_proc_value_α
.Lx1896_0:
                        .quad            .Lx1896_0_s
.Lx1896_0_s:
                        .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n1665_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1898_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   n1666_lit_integer_α
.Lx1898_0:
                        .quad            .Lx1898_0_s
.Lx1898_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n1666_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx1899_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n1667_make_list_α
.Lx1899_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1667_make_list_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 75
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1668_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1668_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                                                                                        jmp   n1516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1669_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   proc_messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1670_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   proc_messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1671_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   proc_messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_messtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_messtest_β:
                                                                                        jmp   proc_messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_messtest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 5336]
                        lea              rsp, [rbp + 5360]
                        mov              rbp, [rbp + 5352]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_messtest_ω:
                        mov              rax, [rbp + 5344]
                        lea              rsp, [rbp + 5360]
                        mov              rbp, [rbp + 5352]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_messtest_dcα:
                        pop              r11
                        sub              rsp, 5376
                        mov              qword ptr [rsp + 5352], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 5328], r11
                        lea              rax, [rip + .Lx1909_2]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rax, [rip + .Lx1909_3]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rdi, rbp
                        mov              esi, 5280
                        mov              edx, 5328
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_messtest_α_body
.Lx1909_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -5360
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1909_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -5360
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wsortf_α
proc_wsortf_α:
                        .global          proc_wsortf_α
                        .global          proc_wsortf_β
                        .global          proc_wsortf_γ
                        .global          proc_wsortf_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_wsortf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1910_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1953:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1953]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n1911_var_α
                                                                                        jmp   n1911_var_α
n1910_call_builtin_icon_β:
                                                                                        jmp   n1911_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1911_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1912_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1912_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1914_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1913_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wsortf_γ
#-----------------------------------------------------------------------------------------------------------------------
n1914_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1960:             .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1960]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1913_return_α
                                                                                        jmp   n1915_iterate_α
n1914_call_builtin_icon_β:
                                                                                        jmp   n1913_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1915_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx1962_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    n1913_return_α
                                                                                        jmp   n1916_assign_α
n1915_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx1962_0
#-----------------------------------------------------------------------------------------------------------------------
n1916_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n1917_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1917_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n1918_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1918_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1919_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1919_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn1969:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1969]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n1920_disjunction_α
                                                                                        jmp   n1921_assign_α
n1919_call_builtin_icon_β:
                                                                                        jmp   n1920_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1920_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n1923_var_α
n1920_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx1971_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1922_var_α
.Lx1971_0:
                                                                                        jmp   n1922_var_α
n1920_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                                                                                        jmp   n1922_var_α
n1920_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                                                                                        jmp   n1922_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1921_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n1920_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1922_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1925_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1923_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n1927_scan_enter_α
n1923_var_β:
                                                                                        jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1924_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1978:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1978]
                        lea              rsi, [rbp + 368]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1922_var_α
                                                                                        jmp   n1920_disjunction_as
n1924_call_builtin_icon_β:
                                                                                        jmp   n1922_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1925_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn1980:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1980]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1926_unmark_α
                                                                                        jmp   n1928_conjunction_α
n1925_call_builtin_icon_β:
                                                                                        jmp   n1926_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1926_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n1915_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1927_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n1929_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1928_conjunction_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1926_unmark_α
n1928_conjunction_β:
                                                                                        jmp   n1926_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1929_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n1931_lit_string_α
n1929_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx1987_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1930_scan_match_α
.Lx1987_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1987_1
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1930_scan_match_α
.Lx1987_1:
                                                                                        jmp   n1930_scan_match_α
n1929_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n1929_disjunction_af
                                                                                        jmp   n1929_disjunction_af
n1929_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n1932_lit_string_α
                                                                                        jmp   n1951_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1930_scan_match_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        push             r10
                        push             r10
                        call             rt_scan_needle@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx
                                                                                        jge   .Lx1989_239
                        add              rsp, 16
                                                                                        jmp   n1929_disjunction_β
.Lx1989_239:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 8]
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx1989_240
                        add              rsp, 16
                                                                                        jmp   n1929_disjunction_β
.Lx1989_240:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1933_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n1931_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx1990_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1929_disjunction_as
n1931_lit_string_β:
                                                                                        jmp   n1929_disjunction_af
.Lx1990_0:
                        .quad            .Lx1990_0_s
.Lx1990_0_s:
                        .string          "list"
#-----------------------------------------------------------------------------------------------------------------------
n1932_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1991_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1929_disjunction_as
n1932_lit_string_β:
                                                                                        jmp   n1929_disjunction_af
.Lx1991_0:
                        .quad            .Lx1991_0_s
.Lx1991_0_s:
                        .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n1933_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 904]
                        cmp              rax, 1
                                                                                        jge   .Lx1993_0
                        add              rax, r15
                        add              rax, 1
.Lx1993_0:
                        cmp              rax, 1
                                                                                        jge   .Lx1993_239
                        add              rsp, 16
                                                                                        jmp   n1929_disjunction_β
.Lx1993_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx1993_240
                        add              rsp, 16
                                                                                        jmp   n1929_disjunction_β
.Lx1993_240:
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
                                                                                        jmp   n1934_scan_α
n1933_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1929_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1934_scan_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                                                                                        jmp   n1935_var_α
n1934_scan_β:
                                                                                        jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1935_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1936_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1936_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n1938_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1937_var_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                                                                                        jmp   n1939_conjunction_α
n1937_var_β:
                                                                                        jmp   n1934_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n1938_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx2001_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1940_scan_match_α
.Lx2001_0:
                        .quad            .Lx2001_0_s
.Lx2001_0_s:
                        .string          "record constructor"
#-----------------------------------------------------------------------------------------------------------------------
n1939_conjunction_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n1941_lit_string_α
n1939_conjunction_β:
                                                                                        jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1940_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 18
                                                                                        jge   .Lx2004_239
                        add              rsp, 16
                                                                                        jmp   n1943_scan_α
.Lx2004_239:
                        mov              rdi, qword ptr [rip + .Lx2004_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 18
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx2004_240
                        add              rsp, 16
                                                                                        jmp   n1943_scan_α
.Lx2004_240:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, r14
                        add              rax, 19
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n1942_scan_tab_α
.Lx2004_0:
                        .quad            .Lx2004_0_s
.Lx2004_0_s:
                        .string          "record constructor"
#-----------------------------------------------------------------------------------------------------------------------
n1941_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx2005_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1944_var_ref_α
.Lx2005_0:
                        .quad            .Lx2005_0_s
.Lx2005_0_s:
                        .string          "key="
#-----------------------------------------------------------------------------------------------------------------------
n1942_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 728]
                        cmp              rax, 1
                                                                                        jge   .Lx2007_0
                        add              rax, r15
                        add              rax, 1
.Lx2007_0:
                        cmp              rax, 1
                                                                                        jge   .Lx2007_239
                        add              rsp, 16
                                                                                        jmp   n1943_scan_α
.Lx2007_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx2007_240
                        add              rsp, 16
                                                                                        jmp   n1943_scan_α
.Lx2007_240:
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n1945_scan_α
n1942_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n1943_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1943_scan_α:
                        lea              rdi, [rbp + 624]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                                                                                        jmp   n1937_var_α
n1943_scan_β:
                                                                                        jmp   n1937_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1944_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n1946_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1945_scan_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                                                                                        jmp   n1934_scan_β
n1945_scan_β:
                                                                                        jmp   n1937_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1946_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1947_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1947_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1922_var_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n1948_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1948_deref_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1922_var_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1949_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1949_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn2019:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2019]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n1922_var_α
                                                                                        jmp   n1950_lit_string_α
n1949_call_builtin_icon_β:
                                                                                        jmp   n1922_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1950_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx2020_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1924_call_builtin_icon_α
.Lx2020_0:
                        .quad            .Lx2020_0_s
.Lx2020_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1951_scan_α:
                        lea              rdi, [rbp + 800]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                                                                                        jmp   n1920_disjunction_af
n1951_scan_β:
                                                                                        jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_wsortf_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wsortf_β:
                                                                                        jmp   proc_wsortf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wsortf_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1144]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wsortf_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wsortf_dcα:
                        pop              r11
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1136], r11
                        lea              rax, [rip + .Lx2023_2]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rax, [rip + .Lx2023_3]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1104
                        mov              edx, 1136
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wsortf_α_body
.Lx2023_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1168
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx2023_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1168
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "r0()"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "r1(a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec2:           .string          "r2(a,b)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec2]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec3:           .string          "r5(a,b,c,d,e)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec3]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "listtest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_listtest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_listtest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "rectest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_rectest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1952
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_rectest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tbltest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tbltest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tbltest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "randval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_randval_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 928
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_randval_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_check_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_check_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wlist"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wlist_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wlist_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "copytest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_copytest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_copytest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "messtest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_messtest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 5328
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_messtest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "wsortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_wsortf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_wsortf_dcα]
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
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 200
                        mov              rdi, rsp
                        mov              ecx, 200
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 192], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n2024_call_proc_staged_α:
                        call             proc_listtest_dcα
                                                                                        jmp   .Lx2030_2
.Lx2030_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n2025_call_proc_staged_α
                                                                                        jmp   n2025_call_proc_staged_α
n2024_call_proc_staged_β:
                                                                                        jmp   n2025_call_proc_staged_α
.Lx2030_0:
                        .quad            .Lx2030_0_s
.Lx2030_0_s:
                        .string          "listtest"
#-----------------------------------------------------------------------------------------------------------------------
n2025_call_proc_staged_α:
                        call             proc_rectest_dcα
                                                                                        jmp   .Lx2032_2
.Lx2032_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n2026_call_proc_staged_α
                                                                                        jmp   n2026_call_proc_staged_α
n2025_call_proc_staged_β:
                                                                                        jmp   n2026_call_proc_staged_α
.Lx2032_0:
                        .quad            .Lx2032_0_s
.Lx2032_0_s:
                        .string          "rectest"
#-----------------------------------------------------------------------------------------------------------------------
n2026_call_proc_staged_α:
                        call             proc_tbltest_dcα
                                                                                        jmp   .Lx2034_2
.Lx2034_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n2027_call_proc_staged_α
                                                                                        jmp   n2027_call_proc_staged_α
n2026_call_proc_staged_β:
                                                                                        jmp   n2027_call_proc_staged_α
.Lx2034_0:
                        .quad            .Lx2034_0_s
.Lx2034_0_s:
                        .string          "tbltest"
#-----------------------------------------------------------------------------------------------------------------------
n2027_call_proc_staged_α:
                        call             proc_copytest_dcα
                                                                                        jmp   .Lx2036_2
.Lx2036_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n2028_call_proc_staged_α
                                                                                        jmp   n2028_call_proc_staged_α
n2027_call_proc_staged_β:
                                                                                        jmp   n2028_call_proc_staged_α
.Lx2036_0:
                        .quad            .Lx2036_0_s
.Lx2036_0_s:
                        .string          "copytest"
#-----------------------------------------------------------------------------------------------------------------------
n2028_call_proc_staged_α:
                        call             proc_messtest_dcα
                                                                                        jmp   .Lx2038_2
.Lx2038_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n2028_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx2038_0:
                        .quad            .Lx2038_0_s
.Lx2038_0_s:
                        .string          "messtest"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 192]
                        add              rsp, 200
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 192]
                        add              rsp, 200
                        ret
                        .section         .note.GNU-stack,"",@progbits
