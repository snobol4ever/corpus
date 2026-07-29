                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tins_α
proc_tins_α:
                        .global          proc_tins_α
                        .global          proc_tins_β
                        .global          proc_tins_γ
                        .global          proc_tins_ω
                        sub              rsp, 1600
                        mov              [rsp + 1576], rcx
                        mov              [rsp + 1584], rdx
                        mov              [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1504
                        mov              edx, 1568
                        call             rt_jmp_frame_lexprep2@PLT
proc_tins_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n1_var_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "test insert:"
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx56_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn58:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_α
                                                                                        jmp   n5_assign_α
n3_call_builtin_icon_β:
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn60:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n3_call_builtin_icon_α
                                                                                        jmp   n7_lit_string_α
n4_call_builtin_icon_β:
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n10_var_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n11_var_α
.Lx65_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n15_to_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn73:               .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n16_assign_α
n12_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn75:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rbp + 784]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n18_var_α
                                                                                        jmp   n17_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n19_call_builtin_icon_α
.Lx76_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n15_to_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 992], 6
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 960], rax
.Lx78_0:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 1000]
                        cmp              rax, rcx
                                                                                        jg    n9_var_α
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n20_call_builtin_icon_α
n15_to_β:
                        inc              qword ptr [rbp + 960]
                                                                                        jmp   .Lx78_0
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn84:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n3_call_builtin_icon_α
                                                                                        jmp   n23_lit_string_α
n19_call_builtin_icon_β:
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn86:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n15_to_β
                                                                                        jmp   n15_to_β
n20_call_builtin_icon_β:
                                                                                        jmp   n15_to_β
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n24_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n26_var_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n24_iterate_α:
                        mov              qword ptr [rbp + 304], 0
.Lx93_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 304]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              rax, 99
                                                                                        je    n22_var_α
                                                                                        jmp   n27_assign_α
n24_iterate_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx93_0
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n32_call_builtin_icon_α
.Lx101_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn103:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n24_iterate_β
                                                                                        jmp   n33_bound_α
n30_call_builtin_icon_β:
                                                                                        jmp   n24_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rbp + 160]
                        lea              rcx, [rbp + 176]
                        call             proc_check_dcα
                                                                                        jmp   .Lx105_2
.Lx105_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_tins_ω
                                                                                        jmp   proc_tins_ω
n31_call_proc_staged_β:
                                                                                        jmp   proc_tins_ω
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn107:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n3_call_builtin_icon_α
                                                                                        jmp   n34_call_builtin_icon_α
n32_call_builtin_icon_β:
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_bound_α:
                        mov              qword ptr [rbp + 336], rsp
                                                                                        jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn111:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n3_call_builtin_icon_α
                                                                                        jmp   n3_call_builtin_icon_α
n34_call_builtin_icon_β:
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n37_var_α
n35_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx113_0
                                                                                        jmp   n36_unmark_α
.Lx113_0:
                                                                                        jmp   n36_unmark_α
n35_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                                                                                        jmp   n36_unmark_α
n35_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                                                                                        jmp   n36_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n36_unmark_α:
                        mov              rsp, qword ptr [rbp + 336]
                                                                                        jmp   n24_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n38_unop_α
n37_var_β:
                                                                                        jmp   n35_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_unop_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n40_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_test_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 100
                                                                                        je    .Lx121_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx121_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 6
                                                                                        jne   .Lx121_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx121_2
.Lx121_1:
                        mov              rax, qword ptr [rbp + 712]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n35_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rcx
                                                                                        jmp   n41_lit_integer_α
.Lx121_0:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        lea              r9, [rbp + 688]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx121_1
                        cmp              eax, 1
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n41_lit_integer_α
.Lx121_2:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n35_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n42_var_α
.Lx122_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n43_to_α
#-----------------------------------------------------------------------------------------------------------------------
n43_to_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 6
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 432], rax
.Lx126_0:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx
                                                                                        jg    n36_unmark_α
                        mov              qword ptr [rbp + 416], 6
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n44_bound_α
n43_to_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx126_0
#-----------------------------------------------------------------------------------------------------------------------
n44_bound_α:
                        mov              qword ptr [rbp + 480], rsp
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n48_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n47_unmark_α:
                        mov              rsp, qword ptr [rbp + 480]
                                                                                        jmp   n43_to_β
#-----------------------------------------------------------------------------------------------------------------------
n48_unop_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n50_op75_α
.Lx136_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_op75_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 7
                                                                                        je    .Lx138_1
                        cmp              eax, 6
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx138_0
.Lx138_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n51_binop_α
.Lx138_0:
                        lea              rdi, [rbp + 640]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 624]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n51_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx139_0
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n52_call_builtin_icon_α
.Lx139_0:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n47_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n52_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn141:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n47_unmark_α
                                                                                        jmp   n47_unmark_α
n52_call_builtin_icon_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_β:
                                                                                        jmp   proc_tins_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1576]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_ω:
                        mov              rax, [rbp + 1584]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_dcα:
                        pop              r11
                        sub              rsp, 1616
                        mov              qword ptr [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1568], r11
                        lea              rax, [rip + .Lx142_2]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rax, [rip + .Lx142_3]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1504
                        mov              edx, 1568
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tins_α_body
.Lx142_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx142_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tdel_α
proc_tdel_α:
                        .global          proc_tdel_α
                        .global          proc_tdel_β
                        .global          proc_tdel_γ
                        .global          proc_tdel_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_tdel_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n144_var_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "test delete:"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n147_call_builtin_icon_α
.Lx191_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn193:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rbp + 912]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n149_var_α
                                                                                        jmp   n148_assign_α
n146_call_builtin_icon_β:
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn195:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n146_call_builtin_icon_α
                                                                                        jmp   n150_lit_string_α
n147_call_builtin_icon_β:
                                                                                        jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n153_var_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n154_var_α
.Lx200_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n155_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n158_to_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn208:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n156_call_builtin_icon_α
                                                                                        jmp   n159_assign_α
n155_call_builtin_icon_β:
                                                                                        jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn210:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 672]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n161_lit_integer_α
                                                                                        jmp   n160_assign_α
n156_call_builtin_icon_β:
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n162_call_builtin_icon_α
.Lx211_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n158_to_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 864], 6
                        mov              qword ptr [rbp + 872], rax
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 848], rax
.Lx213_0:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 888]
                        cmp              rax, rcx
                                                                                        jg    n152_var_α
                        mov              qword ptr [rbp + 832], 6
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n163_call_builtin_icon_α
n158_to_β:
                        inc              qword ptr [rbp + 848]
                                                                                        jmp   .Lx213_0
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n164_assign_α
.Lx216_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn218:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n146_call_builtin_icon_α
                                                                                        jmp   n165_call_builtin_icon_α
n162_call_builtin_icon_β:
                                                                                        jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn220:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rbp + 768]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n158_to_β
                                                                                        jmp   n158_to_β
n163_call_builtin_icon_β:
                                                                                        jmp   n158_to_β
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn223:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 944]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n146_call_builtin_icon_α
                                                                                        jmp   n146_call_builtin_icon_α
n165_call_builtin_icon_β:
                                                                                        jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n169_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n169_iterate_α:
                        mov              qword ptr [rbp + 272], 0
.Lx231_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rax, 99
                                                                                        je    n168_var_α
                                                                                        jmp   n171_call_builtin_icon_α
n169_iterate_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx231_0
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn235:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n169_iterate_β
                                                                                        jmp   n173_bound_α
n171_call_builtin_icon_β:
                                                                                        jmp   n169_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n174_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n173_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 144]
                        lea              rcx, [rbp + 160]
                        call             proc_check_dcα
                                                                                        jmp   .Lx241_2
.Lx241_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_tdel_ω
                                                                                        jmp   proc_tdel_ω
n174_call_proc_staged_β:
                                                                                        jmp   proc_tdel_ω
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n176_var_α
.Lx242_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n177_to_α
#-----------------------------------------------------------------------------------------------------------------------
n177_to_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 400], 6
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 368], rax
.Lx246_0:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx
                                                                                        jg    n178_unmark_α
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n179_bound_α
n177_to_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx246_0
#-----------------------------------------------------------------------------------------------------------------------
n178_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n169_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n179_bound_α:
                        mov              qword ptr [rbp + 416], rsp
                                                                                        jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_unmark_α:
                        mov              rsp, qword ptr [rbp + 416]
                                                                                        jmp   n177_to_β
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n184_op75_α
.Lx257_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n184_op75_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 7
                                                                                        je    .Lx259_1
                        cmp              eax, 6
                                                                                        jne   .Lx259_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx259_0
.Lx259_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n185_binop_α
.Lx259_0:
                        lea              rdi, [rbp + 1296]
                        lea              rsi, [rbp + 608]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n185_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx260_0
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 560], 6
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n186_assign_α
.Lx260_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n182_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n187_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn263:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n182_unmark_α
                                                                                        jmp   n182_unmark_α
n187_call_builtin_icon_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_β:
                                                                                        jmp   proc_tdel_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1320]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_dcα:
                        pop              r11
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1312], r11
                        lea              rax, [rip + .Lx264_2]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rax, [rip + .Lx264_3]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1248
                        mov              edx, 1312
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tdel_α_body
.Lx264_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1344
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx264_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1344
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
                        sub              rsp, 2432
                        mov              [rsp + 2408], rcx
                        mov              [rsp + 2416], rdx
                        mov              [rsp + 2424], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2336
                        mov              edx, 2400
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn355:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n267_disjunction_α
                                                                                        jmp   n268_assign_α
n266_call_builtin_icon_β:
                                                                                        jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n270_var_α
n267_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx357_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n269_lit_string_α
.Lx357_0:
                                                                                        jmp   n269_lit_string_α
n267_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n269_lit_string_α
n267_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n272_assign_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "\t[ok]"
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n273_unop_test_α
n270_var_β:
                                                                                        jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn362:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n269_lit_string_α
                                                                                        jmp   n267_disjunction_as
n271_call_builtin_icon_β:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n274_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n273_unop_test_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 99
                                                                                        je    n267_disjunction_af
                        cmp              eax, 0
                                                                                        je    n267_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_disjunction_α:
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              dword ptr [rbp + 1248], 0
                                                                                        jmp   n277_var_α
n274_disjunction_as:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 0
                                                                                        jne   .Lx366_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n276_disjunction_α
.Lx366_0:
                                                                                        jmp   n276_disjunction_α
n274_disjunction_β:
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n276_disjunction_α
n274_disjunction_af:
                        add              dword ptr [rbp + 1248], 1
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n276_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n279_var_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "  \tsizes "
#-----------------------------------------------------------------------------------------------------------------------
n276_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n281_var_α
n276_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx369_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n280_disjunction_α
.Lx369_0:
                                                                                        jmp   n280_disjunction_α
n276_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                                                                                        jmp   n280_disjunction_α
n276_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                                                                                        jmp   n280_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n283_var_α
n277_var_β:
                                                                                        jmp   n274_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n278_conjunction_α:
                                                                                        jmp   n274_disjunction_as
n278_conjunction_β:
                                                                                        jmp   n276_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n284_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n280_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n286_var_α
n280_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx376_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n285_var_α
.Lx376_0:
                                                                                        jmp   n285_var_α
n280_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n285_var_α
n280_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n285_var_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n288_var_α
n281_var_β:
                                                                                        jmp   n276_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n282_conjunction_α:
                                                                                        jmp   n276_disjunction_as
n282_conjunction_β:
                                                                                        jmp   n280_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n289_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n284_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n290_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n291_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n292_unop_α
n286_var_β:
                                                                                        jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_conjunction_α:
                                                                                        jmp   n280_disjunction_as
n287_conjunction_β:
                                                                                        jmp   n285_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n293_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n274_disjunction_af
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n295_call_builtin_icon_α
.Lx391_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn393:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_ω
                                                                                        jmp   proc_check_ω
n291_call_builtin_icon_β:
                                                                                        jmp   proc_check_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_unop_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n276_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n297_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n298_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn398:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n269_lit_string_α
                                                                                        jmp   n299_lit_string_α
n295_call_builtin_icon_β:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n300_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n301_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n298_unop_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n302_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n303_var_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n300_unop_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n304_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n301_unop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n306_binop_test_α
.Lx406_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n307_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_test_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 100
                                                                                        je    .Lx409_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 100
                                                                                        je    .Lx409_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx409_2
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx409_2
.Lx409_1:
                        mov              rax, qword ptr [rbp + 728]
                        mov              rcx, qword ptr [rbp + 760]
                        cmp              rax, rcx
                                                                                        jge   n280_disjunction_af
                        mov              rcx, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rcx
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rcx
                                                                                        jmp   n308_lit_string_α
.Lx409_0:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              r8d, 5
                        lea              r9, [rbp + 704]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx409_1
                        cmp              eax, 1
                                                                                        je    n280_disjunction_af
                                                                                        jmp   n308_lit_string_α
.Lx409_2:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n280_disjunction_af
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n309_binop_test_α
.Lx410_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_test_α:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 100
                                                                                        je    .Lx411_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 100
                                                                                        je    .Lx411_0
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 6
                                                                                        jne   .Lx411_2
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 6
                                                                                        jne   .Lx411_2
.Lx411_1:
                        mov              rax, qword ptr [rbp + 1592]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jle   n274_disjunction_af
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rcx
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rcx
                                                                                        jmp   n310_lit_string_α
.Lx411_0:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 7
                        lea              r9, [rbp + 1568]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx411_1
                        cmp              eax, 1
                                                                                        je    n274_disjunction_af
                                                                                        jmp   n310_lit_string_α
.Lx411_2:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n274_disjunction_af
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n307_unop_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n312_call_builtin_icon_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "\n generated twice:"
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_test_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 100
                                                                                        je    .Lx414_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 100
                                                                                        je    .Lx414_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx414_2
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 6
                                                                                        jne   .Lx414_2
.Lx414_1:
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rcx, qword ptr [rbp + 1224]
                        cmp              rax, rcx
                                                                                        jle   n276_disjunction_af
                        mov              rcx, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rcx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1128], rcx
                                                                                        jmp   n313_lit_string_α
.Lx414_0:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 7
                        lea              r9, [rbp + 1120]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx414_1
                        cmp              eax, 1
                                                                                        je    n276_disjunction_af
                                                                                        jmp   n313_lit_string_α
.Lx414_2:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n276_disjunction_af
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n314_call_builtin_icon_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "\n not generated:"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n315_call_builtin_icon_α
.Lx416_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn418:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn418]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n316_var_α
                                                                                        jmp   n316_var_α
n312_call_builtin_icon_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "\n unknown values generated:"
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn421:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n318_lit_string_α
                                                                                        jmp   n318_lit_string_α
n314_call_builtin_icon_β:
                                                                                        jmp   n318_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn423:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn423]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n269_lit_string_α
                                                                                        jmp   n319_lit_string_α
n315_call_builtin_icon_β:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n320_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn427:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn427]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n322_lit_string_α
                                                                                        jmp   n322_lit_string_α
n317_call_builtin_icon_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n323_var_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n324_var_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n320_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx431_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n321_keyword_icon_α
                                                                                        jmp   n325_assign_α
n320_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx431_0
#-----------------------------------------------------------------------------------------------------------------------
n321_keyword_icon_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                                                                                        jmp   n326_assign_α
n321_keyword_icon_β:
                                                                                        jmp   n285_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n327_var_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n328_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n330_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n331_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n287_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n332_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn443:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n329_keyword_icon_α
                                                                                        jmp   n334_iterate_α
n328_call_builtin_icon_β:
                                                                                        jmp   n329_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n329_keyword_icon_α:
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                                                                                        jmp   n335_assign_α
n329_keyword_icon_β:
                                                                                        jmp   n276_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n330_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n331_bound_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   n337_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn449:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n333_keyword_icon_α
                                                                                        jmp   n338_iterate_α
n332_call_builtin_icon_β:
                                                                                        jmp   n333_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n333_keyword_icon_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n339_assign_α
n333_keyword_icon_β:
                                                                                        jmp   n280_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n334_iterate_α:
                        mov              qword ptr [rbp + 1424], 0
.Lx452_0:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1424]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              rax, 99
                                                                                        je    n329_keyword_icon_α
                                                                                        jmp   n340_call_builtin_icon_α
n334_iterate_β:
                        inc              qword ptr [rbp + 1424]
                                                                                        jmp   .Lx452_0
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n278_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n341_call_builtin_icon_α
.Lx454_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n337_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n343_var_α
n337_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx456_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n342_unmark_α
.Lx456_0:
                        cmp              eax, 1
                                                                                        jne   .Lx456_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n342_unmark_α
.Lx456_1:
                                                                                        jmp   n342_unmark_α
n337_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n337_disjunction_af
                                                                                        jmp   n337_disjunction_af
n337_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n344_lit_string_α
                                                                                        jmp   n342_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n338_iterate_α:
                        mov              qword ptr [rbp + 976], 0
.Lx458_0:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 976]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              rax, 99
                                                                                        je    n333_keyword_icon_α
                                                                                        jmp   n347_call_builtin_icon_α
n338_iterate_β:
                        inc              qword ptr [rbp + 976]
                                                                                        jmp   .Lx458_0
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n282_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn461:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n334_iterate_β
                                                                                        jmp   n334_iterate_β
n340_call_builtin_icon_β:
                                                                                        jmp   n334_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn463:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n269_lit_string_α
                                                                                        jmp   n271_call_builtin_icon_α
n341_call_builtin_icon_β:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_unmark_α:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n320_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n348_var_α
n343_var_β:
                                                                                        jmp   n337_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n349_var_α
n344_lit_string_β:
                                                                                        jmp   n337_disjunction_af
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn470:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n337_disjunction_af
                                                                                        jmp   n337_disjunction_as
n345_call_builtin_icon_β:
                                                                                        jmp   n337_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn472:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n337_disjunction_af
                                                                                        jmp   n337_disjunction_as
n346_call_builtin_icon_β:
                                                                                        jmp   n337_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn474:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn474]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n338_iterate_β
                                                                                        jmp   n338_iterate_β
n347_call_builtin_icon_β:
                                                                                        jmp   n338_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n351_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn482:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn482]
                        lea              rsi, [rbp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n337_disjunction_af
                                                                                        jmp   n345_call_builtin_icon_α
n351_call_builtin_icon_β:
                                                                                        jmp   n337_disjunction_af
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
                        mov              rax, [rbp + 2408]
                        lea              rsp, [rbp + 2432]
                        mov              rbp, [rbp + 2424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_ω:
                        mov              rax, [rbp + 2416]
                        lea              rsp, [rbp + 2432]
                        mov              rbp, [rbp + 2424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_dcα:
                        pop              r11
                        sub              rsp, 2448
                        mov              qword ptr [rsp + 2424], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2400], r11
                        lea              rax, [rip + .Lx483_2]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rax, [rip + .Lx483_3]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 2336
                        mov              edx, 2400
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_check_α_body
.Lx483_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx483_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stale_α
proc_stale_α:
                        .global          proc_stale_α
                        .global          proc_stale_β
                        .global          proc_stale_γ
                        .global          proc_stale_ω
                        sub              rsp, 2240
                        mov              [rsp + 2216], rcx
                        mov              [rsp + 2224], rdx
                        mov              [rsp + 2232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2144
                        mov              edx, 2208
                        call             rt_jmp_frame_lexprep2@PLT
proc_stale_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n485_assign_α
.Lx576_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n485_assign_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n486_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn579:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n488_call_builtin_icon_α
                                                                                        jmp   n487_assign_α
n486_call_builtin_icon_β:
                                                                                        jmp   n488_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n488_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn582:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n490_call_builtin_icon_α
                                                                                        jmp   n489_assign_α
n488_call_builtin_icon_β:
                                                                                        jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n489_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn585:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n491_lit_integer_α
                                                                                        jmp   n491_lit_integer_α
n490_call_builtin_icon_β:
                                                                                        jmp   n491_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n492_var_α
.Lx586_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n493_to_α
#-----------------------------------------------------------------------------------------------------------------------
n493_to_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1760], 6
                        mov              qword ptr [rbp + 1768], rax
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1776], 6
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1744], rax
.Lx590_0:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1784]
                        cmp              rax, rcx
                                                                                        jg    n494_lit_string_α
                        mov              qword ptr [rbp + 1728], 6
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n495_assign_α
n493_to_β:
                        inc              qword ptr [rbp + 1744]
                                                                                        jmp   .Lx590_0
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n496_call_builtin_icon_α
.Lx591_0:
                        .quad            .Lx591_0_s
.Lx591_0_s:
                        .string          "checking !S:"
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n497_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n496_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn594:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n498_var_α
                                                                                        jmp   n498_var_α
n496_call_builtin_icon_β:
                                                                                        jmp   n498_var_α
#-----------------------------------------------------------------------------------------------------------------------
n497_bound_α:
                        mov              qword ptr [rbp + 1792], rsp
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n500_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n502_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_iterate_α:
                        mov              qword ptr [rbp + 1168], 0
.Lx602_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              rax, 99
                                                                                        je    n501_lit_string_α
                                                                                        jmp   n503_assign_α
n500_iterate_β:
                        inc              qword ptr [rbp + 1168]
                                                                                        jmp   .Lx602_0
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n504_call_builtin_icon_α
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          "checking !T:"
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n505_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n507_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn608:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n508_var_α
                                                                                        jmp   n508_var_α
n504_call_builtin_icon_β:
                                                                                        jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n505_subscript_α:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 1968]
                        mov              rcx, qword ptr [rbp + 1976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n506_var_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n509_var_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n507_bound_α:
                        mov              qword ptr [rbp + 1200], rsp
                                                                                        jmp   n512_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n513_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n515_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n516_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n511_unmark_α:
                        mov              rsp, qword ptr [rbp + 1792]
                                                                                        jmp   n493_to_β
#-----------------------------------------------------------------------------------------------------------------------
n512_disjunction_α:
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              dword ptr [rbp + 1408], 0
                                                                                        jmp   n518_var_α
n512_disjunction_as:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0
                                                                                        jne   .Lx623_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n517_var_α
.Lx623_0:
                                                                                        jmp   n517_var_α
n512_disjunction_β:
                        mov              eax, dword ptr [rbp + 1408]
                                                                                        jmp   n517_var_α
n512_disjunction_af:
                        add              dword ptr [rbp + 1408], 1
                        mov              eax, dword ptr [rbp + 1408]
                                                                                        jmp   n517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n513_iterate_α:
                        mov              qword ptr [rbp + 624], 0
.Lx625_0:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 624]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              rax, 99
                                                                                        je    n514_lit_string_α
                                                                                        jmp   n520_assign_α
n513_iterate_β:
                        inc              qword ptr [rbp + 624]
                                                                                        jmp   .Lx625_0
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n521_call_builtin_icon_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "checking key(T):"
#-----------------------------------------------------------------------------------------------------------------------
n515_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n506_var_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n506_var_α
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn629:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn629]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n511_unmark_α
                                                                                        jmp   n522_conjunction_α
n516_call_builtin_icon_β:
                                                                                        jmp   n511_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n525_var_α
n518_var_β:
                                                                                        jmp   n526_var_α
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn635:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n517_var_α
                                                                                        jmp   n512_disjunction_as
n519_call_builtin_icon_β:
                                                                                        jmp   n517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n527_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn638:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n528_var_α
                                                                                        jmp   n528_var_α
n521_call_builtin_icon_β:
                                                                                        jmp   n528_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_conjunction_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n511_unmark_α
n522_conjunction_β:
                                                                                        jmp   n511_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n529_random_α
#-----------------------------------------------------------------------------------------------------------------------
n524_unmark_α:
                        mov              rsp, qword ptr [rbp + 1200]
                                                                                        jmp   n500_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n525_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n530_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n526_var_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                                                                                        jmp   n531_lit_string_α
n526_var_β:
                                                                                        jmp   n512_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n527_bound_α:
                        mov              qword ptr [rbp + 656], rsp
                                                                                        jmp   n532_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n533_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n529_random_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n524_unmark_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n535_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn653:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn653]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n526_var_α
                                                                                        jmp   n512_disjunction_af
n530_call_builtin_icon_β:
                                                                                        jmp   n526_var_α
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n536_var_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "S["
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n538_var_ref_α
n532_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx656_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n537_var_α
.Lx656_0:
                                                                                        jmp   n537_var_α
n532_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                                                                                        jmp   n537_var_α
n532_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                                                                                        jmp   n537_var_α
#-----------------------------------------------------------------------------------------------------------------------
n533_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx658_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    n534_call_builtin_icon_α
                                                                                        jmp   n540_assign_α
n533_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx658_0
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rbp + 32]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n541_return_α
                                                                                        jmp   n541_return_α
n534_call_builtin_icon_β:
                                                                                        jmp   n541_return_α
#-----------------------------------------------------------------------------------------------------------------------
n535_deref_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n524_unmark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n542_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n543_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n546_var_α
n538_var_ref_β:
                                                                                        jmp   n532_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn669:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rbp + 896]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n537_var_α
                                                                                        jmp   n532_disjunction_as
n539_call_builtin_icon_β:
                                                                                        jmp   n537_var_α
#-----------------------------------------------------------------------------------------------------------------------
n540_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n547_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n541_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_stale_γ
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn673:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn673]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n524_unmark_α
                                                                                        jmp   n548_conjunction_α
n542_call_builtin_icon_β:
                                                                                        jmp   n524_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n519_call_builtin_icon_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n549_random_α
#-----------------------------------------------------------------------------------------------------------------------
n545_unmark_α:
                        mov              rsp, qword ptr [rbp + 656]
                                                                                        jmp   n513_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n546_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n550_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n547_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n551_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n548_conjunction_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n524_unmark_α
n548_conjunction_β:
                                                                                        jmp   n524_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n549_random_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n545_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n552_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n550_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n532_disjunction_af
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n553_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n551_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n555_var_ref_α
n551_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx687_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n554_var_α
.Lx687_0:
                                                                                        jmp   n554_var_α
n551_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n554_var_α
n551_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n552_deref_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n545_unmark_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n557_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n553_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n532_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n558_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n554_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n561_var_α
n555_var_ref_β:
                                                                                        jmp   n551_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn695:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn695]
                        lea              rsi, [rbp + 352]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n554_var_α
                                                                                        jmp   n551_disjunction_as
n556_call_builtin_icon_β:
                                                                                        jmp   n554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn697:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn697]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n545_unmark_α
                                                                                        jmp   n562_conjunction_α
n557_call_builtin_icon_β:
                                                                                        jmp   n545_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n558_unop_test_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 99
                                                                                        je    n532_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n532_disjunction_af
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n564_random_α
#-----------------------------------------------------------------------------------------------------------------------
n560_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n533_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n565_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n562_conjunction_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n545_unmark_α
n562_conjunction_β:
                                                                                        jmp   n545_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n566_var_α
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n564_random_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n560_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n567_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n565_subscript_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n551_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n568_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n569_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n560_unmark_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n570_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n568_deref_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n551_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n571_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n539_call_builtin_icon_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn715:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn715]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n560_unmark_α
                                                                                        jmp   n572_conjunction_α
n570_call_builtin_icon_β:
                                                                                        jmp   n560_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n571_unop_test_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 99
                                                                                        je    n551_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n551_disjunction_af
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                                                                                        jmp   n573_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n572_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n560_unmark_α
n572_conjunction_β:
                                                                                        jmp   n560_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n574_var_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n556_call_builtin_icon_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_β:
                                                                                        jmp   proc_stale_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2216]
                        lea              rsp, [rbp + 2240]
                        mov              rbp, [rbp + 2232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_ω:
                        mov              rax, [rbp + 2224]
                        lea              rsp, [rbp + 2240]
                        mov              rbp, [rbp + 2232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_dcα:
                        pop              r11
                        sub              rsp, 2256
                        mov              qword ptr [rsp + 2232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2208], r11
                        lea              rax, [rip + .Lx722_2]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rax, [rip + .Lx722_3]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rdi, rbp
                        mov              esi, 2144
                        mov              edx, 2208
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_stale_α_body
.Lx722_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx722_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tins"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tins_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1568
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tins_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "tdel"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_tdel_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_tdel_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_check_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_check_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "stale"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_stale_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_stale_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "verbose"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
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
                        sub              rsp, 840
                        mov              rdi, rsp
                        mov              ecx, 840
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 832], rbp
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
n723_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n725_var_ref_α
n723_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx758_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n724_disjunction_α
.Lx758_0:
                                                                                        jmp   n724_disjunction_α
n723_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                                                                                        jmp   n724_disjunction_α
n723_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                                                                                        jmp   n724_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n724_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n728_lit_integer_α
n724_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx760_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n727_disjunction_α
.Lx760_0:
                        cmp              eax, 1
                                                                                        jne   .Lx760_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n727_disjunction_α
.Lx760_1:
                        cmp              eax, 2
                                                                                        jne   .Lx760_2
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n727_disjunction_α
.Lx760_2:
                                                                                        jmp   n727_disjunction_α
n724_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n724_disjunction_af
                        cmp              eax, 1
                                                                                        je    n724_disjunction_af
                                                                                        jmp   n724_disjunction_af
n724_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n729_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n730_lit_integer_α
                                                                                        jmp   n741_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n731_lit_integer_α
n725_var_ref_β:
                                                                                        jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n726_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n723_disjunction_as
n726_assign_β:
                                                                                        jmp   n724_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n727_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n733_lit_integer_α
n727_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx765_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n732_call_proc_staged_α
.Lx765_0:
                        cmp              eax, 1
                                                                                        jne   .Lx765_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n732_call_proc_staged_α
.Lx765_1:
                        cmp              eax, 2
                                                                                        jne   .Lx765_2
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n732_call_proc_staged_α
.Lx765_2:
                                                                                        jmp   n732_call_proc_staged_α
n727_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        je    n727_disjunction_af
                        cmp              eax, 1
                                                                                        je    n727_disjunction_af
                                                                                        jmp   n727_disjunction_af
n727_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1
                                                                                        je    n734_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n735_lit_integer_α
                                                                                        jmp   n724_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n724_disjunction_as
n728_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx766_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n724_disjunction_as
n729_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx767_0:
                        .quad            619
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n724_disjunction_as
n730_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx768_0:
                        .quad            991
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n736_subscript_α
.Lx769_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n732_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 592]
                        call             proc_tdel_dcα
                                                                                        jmp   .Lx771_2
.Lx771_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n727_disjunction_β
                                                                                        jmp   n727_disjunction_β
n732_call_proc_staged_β:
                                                                                        jmp   n727_disjunction_β
.Lx771_0:
                        .quad            .Lx771_0_s
.Lx771_0_s:
                        .string          "tdel"
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n727_disjunction_as
n733_lit_integer_β:
                                                                                        jmp   n727_disjunction_af
.Lx772_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n727_disjunction_as
n734_lit_integer_β:
                                                                                        jmp   n727_disjunction_af
.Lx773_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n727_disjunction_as
n735_lit_integer_β:
                                                                                        jmp   n727_disjunction_af
.Lx774_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n736_subscript_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n723_disjunction_af
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n737_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n737_deref_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n723_disjunction_af
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n739_binop_test_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "-v"
#-----------------------------------------------------------------------------------------------------------------------
n739_binop_test_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n723_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n740_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n726_assign_α
.Lx779_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n741_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n744_lit_integer_α
n741_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx781_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx781_0:
                        cmp              eax, 1
                                                                                        jne   .Lx781_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx781_1:
                        cmp              eax, 2
                                                                                        jne   .Lx781_2
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx781_2:
                                                                                        jmp   n742_disjunction_α
n741_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        je    n741_disjunction_af
                        cmp              eax, 1
                                                                                        je    n741_disjunction_af
                                                                                        jmp   n741_disjunction_af
n741_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1
                                                                                        je    n745_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n746_lit_integer_α
                                                                                        jmp   n743_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n742_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n748_lit_integer_α
n742_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx783_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n747_disjunction_α
.Lx783_0:
                        cmp              eax, 1
                                                                                        jne   .Lx783_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n747_disjunction_α
.Lx783_1:
                        cmp              eax, 2
                                                                                        jne   .Lx783_2
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n747_disjunction_α
.Lx783_2:
                                                                                        jmp   n747_disjunction_α
n742_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        je    n742_disjunction_af
                        cmp              eax, 1
                                                                                        je    n742_disjunction_af
                                                                                        jmp   n742_disjunction_af
n742_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 1
                                                                                        je    n749_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n750_lit_integer_α
                                                                                        jmp   n741_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n743_call_proc_staged_α:
                        call             proc_stale_dcα
                                                                                        jmp   .Lx785_2
.Lx785_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n751_lit_string_α
                                                                                        jmp   n751_lit_string_α
n743_call_proc_staged_β:
                                                                                        jmp   n751_lit_string_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "stale"
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n741_disjunction_as
n744_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx786_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n741_disjunction_as
n745_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx787_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n741_disjunction_as
n746_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx788_0:
                        .quad            233
#-----------------------------------------------------------------------------------------------------------------------
n747_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n753_lit_integer_α
n747_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx790_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n752_call_proc_staged_α
.Lx790_0:
                        cmp              eax, 1
                                                                                        jne   .Lx790_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n752_call_proc_staged_α
.Lx790_1:
                        cmp              eax, 2
                                                                                        jne   .Lx790_2
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n752_call_proc_staged_α
.Lx790_2:
                                                                                        jmp   n752_call_proc_staged_α
n747_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n747_disjunction_af
                        cmp              eax, 1
                                                                                        je    n747_disjunction_af
                                                                                        jmp   n747_disjunction_af
n747_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n754_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n755_lit_integer_α
                                                                                        jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n742_disjunction_as
n748_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx791_0:
                        .quad            239
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n742_disjunction_as
n749_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx792_0:
                        .quad            419
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n742_disjunction_as
n750_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx793_0:
                        .quad            503
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n756_call_builtin_icon_α
.Lx794_0:
                        .quad            .Lx794_0_s
.Lx794_0_s:
                        .string          "[done]"
#-----------------------------------------------------------------------------------------------------------------------
n752_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 288]
                        lea              rcx, [rbp + 368]
                        call             proc_tins_dcα
                                                                                        jmp   .Lx796_2
.Lx796_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n747_disjunction_β
                                                                                        jmp   n747_disjunction_β
n752_call_proc_staged_β:
                                                                                        jmp   n747_disjunction_β
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "tins"
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n747_disjunction_as
n753_lit_integer_β:
                                                                                        jmp   n747_disjunction_af
.Lx797_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n747_disjunction_as
n754_lit_integer_β:
                                                                                        jmp   n747_disjunction_af
.Lx798_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n747_disjunction_as
n755_lit_integer_β:
                                                                                        jmp   n747_disjunction_af
.Lx799_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn801:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn801]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n756_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 832]
                        add              rsp, 840
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 832]
                        add              rsp, 840
                        ret
                        .section         .note.GNU-stack,"",@progbits
