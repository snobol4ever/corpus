                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tdump_α
proc_tdump_α:
                        .global          proc_tdump_α
                        .global          proc_tdump_β
                        .global          proc_tdump_γ
                        .global          proc_tdump_ω
                        sub              rsp, 1584
                        mov              [rsp + 1560], rcx
                        mov              [rsp + 1568], rdx
                        mov              [rsp + 1576], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1552
                        call             rt_jmp_frame_lexprep2@PLT
proc_tdump_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx55_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n5_keyword_icon_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx57_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx57_0:
                        cmp              eax, 1
                                                                                        jne   .Lx57_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx57_1:
                        cmp              eax, 2
                                                                                        jne   .Lx57_2
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx57_2:
                                                                                        jmp   n4_assign_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                        cmp              eax, 1
                                                                                        je    n7_to_β
                                                                                        jmp   n9_iterate_β
n2_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n6_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n8_lit_string_α
                                                                                        jmp   n51_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn59:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n10_lit_string_α
n3_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n11_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n5_keyword_icon_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                                                                                        jmp   n2_disjunction_as
n5_keyword_icon_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n12_lit_integer_α
n6_lit_integer_β:
                                                                                        jmp   n2_disjunction_af
.Lx62_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 176], rax
.Lx64_0:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jg    n2_disjunction_af
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n2_disjunction_as
n7_to_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx64_0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n9_iterate_α
n8_lit_string_β:
                                                                                        jmp   n2_disjunction_af
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n9_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx67_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_as
n9_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx67_0
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n13_var_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n11_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n7_to_α
.Lx71_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n15_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n17_var_α
n14_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx75_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n16_unmark_α
.Lx75_0:
                        cmp              eax, 1
                                                                                        jne   .Lx75_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n16_unmark_α
.Lx75_1:
                                                                                        jmp   n16_unmark_α
n14_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n18_disjunction_β
                                                                                        jmp   n20_goto_β
n14_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n19_var_α
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n24_var_α
n17_var_β:
                                                                                        jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n25_var_α
n18_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx82_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n21_conjunction_α
.Lx82_0:
                        cmp              eax, 1
                                                                                        jne   .Lx82_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n21_conjunction_α
.Lx82_1:
                                                                                        jmp   n21_conjunction_α
n18_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n18_disjunction_af
                                                                                        jmp   n18_disjunction_af
n18_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n29_var_α
n19_var_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n16_unmark_α
n20_goto_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n14_disjunction_as
n21_conjunction_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n22_conjunction_α:
                                                                                        jmp   n14_disjunction_as
n22_conjunction_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n30_call_builtin_icon_α
.Lx88_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n31_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n32_var_α
n25_var_β:
                                                                                        jmp   n18_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n28_call_builtin_icon_α
n26_lit_string_β:
                                                                                        jmp   n18_disjunction_af
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          ":NONMEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn95:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n18_disjunction_af
                                                                                        jmp   n18_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn97:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n18_disjunction_af
                                                                                        jmp   n18_disjunction_as
n28_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn101:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n34_lit_string_α
n30_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n31_iterate_α:
                        mov              qword ptr [rbp + 912], 0
.Lx103_0:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 912]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              rax, 99
                                                                                        je    n14_disjunction_af
                                                                                        jmp   n35_binop_test_α
n31_iterate_β:
                        inc              qword ptr [rbp + 912]
                                                                                        jmp   .Lx103_0
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn107:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n16_unmark_α
                                                                                        jmp   n36_lit_string_α
n33_call_builtin_icon_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n37_call_builtin_icon_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n31_iterate_β
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n39_var_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          " MEMBER:"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn112:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n2_disjunction_α
n37_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n40_var_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          " ["
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lrkfn119:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n16_unmark_α
                                                                                        jmp   n43_call_builtin_icon_α
n41_call_builtin_icon_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn121:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n18_disjunction_α
                                                                                        jmp   n44_lit_string_α
n42_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn123:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n16_unmark_α
                                                                                        jmp   n22_conjunction_α
n43_call_builtin_icon_β:
                                                                                        jmp   n16_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n45_var_ref_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n47_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n18_disjunction_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n48_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n18_disjunction_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n49_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn132:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n18_disjunction_α
                                                                                        jmp   n50_call_builtin_icon_α
n49_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn134:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 576]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n18_disjunction_α
                                                                                        jmp   n18_disjunction_α
n50_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn136:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rbp + 64]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n52_return_α
                                                                                        jmp   n52_return_α
n51_call_builtin_icon_β:
                                                                                        jmp   n52_return_α
#-----------------------------------------------------------------------------------------------------------------------
n52_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tdump_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_tdump_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tdump_β:
                                                                                        jmp   proc_tdump_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tdump_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1560]
                        lea              rsp, [rbp + 1584]
                        mov              rbp, [rbp + 1576]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tdump_ω:
                        mov              rax, [rbp + 1568]
                        lea              rsp, [rbp + 1584]
                        mov              rbp, [rbp + 1576]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tdump_dcα:
                        pop              r11
                        sub              rsp, 1600
                        mov              qword ptr [rsp + 1576], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1552], r11
                        lea              rax, [rip + .Lx138_2]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rax, [rip + .Lx138_3]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1536
                        mov              edx, 1552
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tdump_α_body
.Lx138_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1584
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx138_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1584
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tdump"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tdump_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1552
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tdump_dcα]
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
                        sub              rsp, 8520
                        mov              rdi, rsp
                        mov              ecx, 8520
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 8512], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn446:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rbp + 8448]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8432], rax
                        mov              qword ptr [rbp + 8440], rdx
                        cmp              eax, 99
                                                                                        je    n141_lit_string_α
                                                                                        jmp   n140_assign_α
n139_call_builtin_icon_β:
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rbp + 8432]
                        mov              rdx, qword ptr [rbp + 8440]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 8400], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 8408], rax
                                                                                        jmp   n142_var_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "initial"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 8416], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 8424], rax
                                                                                        jmp   n143_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              rsi, [rbp + 8400]
                        lea              rdx, [rbp + 8416]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx452_2
.Lx452_2:
                        mov              qword ptr [rbp + 8336], rax
                        mov              qword ptr [rbp + 8344], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_string_α
                                                                                        jmp   n144_lit_string_α
n143_call_proc_staged_β:
                                                                                        jmp   n144_lit_string_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 8224], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 8232], rax
                                                                                        jmp   n145_var_ref_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "should fail "
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 8304], rax
                        mov              qword ptr [rbp + 8312], rdx
                                                                                        jmp   n146_random_α
#-----------------------------------------------------------------------------------------------------------------------
n146_random_α:
                        mov              rdi, qword ptr [rbp + 8304]
                        mov              rsi, qword ptr [rbp + 8312]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n148_lit_string_α
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                                                                                        jmp   n147_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_deref_α:
                        mov              rdi, qword ptr [rbp + 8288]
                        mov              rsi, qword ptr [rbp + 8296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n148_lit_string_α
                        mov              qword ptr [rbp + 8320], rax
                        mov              qword ptr [rbp + 8328], rdx
                                                                                        jmp   n149_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 8032], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 8040], rax
                                                                                        jmp   n150_disjunction_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8320]
                        mov              qword ptr [rbp + 8256], rax
                        mov              rax, qword ptr [rbp + 8328]
                        mov              qword ptr [rbp + 8264], rax
                        .section         .rodata
.Lrkfn460:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rbp + 8256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8240], rax
                        mov              qword ptr [rbp + 8248], rdx
                        cmp              eax, 99
                                                                                        je    n148_lit_string_α
                                                                                        jmp   n151_call_builtin_icon_α
n149_call_builtin_icon_β:
                                                                                        jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_disjunction_α:
                        mov              qword ptr [rbp + 8048], 0
                        mov              qword ptr [rbp + 8056], 0
                        mov              dword ptr [rbp + 8064], 0
                                                                                        jmp   n153_lit_string_α
n150_disjunction_as:
                        mov              eax, dword ptr [rbp + 8064]
                        cmp              eax, 0
                                                                                        jne   .Lx462_0
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n152_call_builtin_icon_α
.Lx462_0:
                        cmp              eax, 1
                                                                                        jne   .Lx462_1
                        mov              rax, qword ptr [rbp + 8096]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n152_call_builtin_icon_α
.Lx462_1:
                        cmp              eax, 2
                                                                                        jne   .Lx462_2
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n152_call_builtin_icon_α
.Lx462_2:
                                                                                        jmp   n152_call_builtin_icon_α
n150_disjunction_β:
                        mov              eax, dword ptr [rbp + 8064]
                        cmp              eax, 0
                                                                                        je    n150_disjunction_af
                        cmp              eax, 1
                                                                                        je    n155_iterate_β
                                                                                        jmp   n150_disjunction_af
n150_disjunction_af:
                        add              dword ptr [rbp + 8064], 1
                        mov              eax, dword ptr [rbp + 8064]
                        cmp              eax, 1
                                                                                        je    n154_var_α
                        cmp              eax, 2
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8224]
                        mov              qword ptr [rbp + 8176], rax
                        mov              rax, qword ptr [rbp + 8232]
                        mov              qword ptr [rbp + 8184], rax
                        mov              rax, qword ptr [rbp + 8240]
                        mov              qword ptr [rbp + 8192], rax
                        mov              rax, qword ptr [rbp + 8248]
                        mov              qword ptr [rbp + 8200], rax
                        .section         .rodata
.Lrkfn464:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rbp + 8176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8160], rax
                        mov              qword ptr [rbp + 8168], rdx
                        cmp              eax, 99
                                                                                        je    n148_lit_string_α
                                                                                        jmp   n148_lit_string_α
n151_call_builtin_icon_β:
                                                                                        jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8032]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 8040]
                        mov              qword ptr [rbp + 7992], rax
                        mov              rax, qword ptr [rbp + 8048]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8056]
                        mov              qword ptr [rbp + 8008], rax
                        .section         .rodata
.Lrkfn466:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rbp + 7984]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7968], rax
                        mov              qword ptr [rbp + 7976], rdx
                        cmp              eax, 99
                                                                                        je    n150_disjunction_β
                                                                                        jmp   n150_disjunction_β
n152_call_builtin_icon_β:
                                                                                        jmp   n150_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 8080], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n150_disjunction_as
n153_lit_string_β:
                                                                                        jmp   n150_disjunction_af
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 8128], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 8136], rax
                                                                                        jmp   n155_iterate_α
n154_var_β:
                                                                                        jmp   n150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n155_iterate_α:
                        mov              qword ptr [rbp + 8112], 0
.Lx471_0:
                        mov              rdi, qword ptr [rbp + 8128]
                        mov              rsi, qword ptr [rbp + 8136]
                        mov              rdx, qword ptr [rbp + 8112]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              rax, 99
                                                                                        je    n150_disjunction_af
                                                                                        jmp   n150_disjunction_as
n155_iterate_β:
                        inc              qword ptr [rbp + 8112]
                                                                                        jmp   .Lx471_0
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 8144], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n150_disjunction_as
n156_lit_string_β:
                                                                                        jmp   n150_disjunction_af
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                                                                                        jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 7904], 6
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 7912], rax
                                                                                        jmp   n159_subscript_α
.Lx475_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:
                        mov              rdi, qword ptr [rbp + 7888]
                        mov              rsi, qword ptr [rbp + 7896]
                        mov              rdx, qword ptr [rbp + 7904]
                        mov              rcx, qword ptr [rbp + 7912]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n161_lit_string_α
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                                                                                        jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 7952], 6
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 7960], rax
                                                                                        jmp   n162_assign_var_α
.Lx477_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 7664], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n163_disjunction_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_var_α:
                        mov              rdi, qword ptr [rbp + 7920]
                        mov              rsi, qword ptr [rbp + 7928]
                        mov              rdx, qword ptr [rbp + 7952]
                        mov              rcx, qword ptr [rbp + 7960]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n161_lit_string_α
                        mov              qword ptr [rbp + 7936], rax
                        mov              qword ptr [rbp + 7944], rdx
                                                                                        jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:
                        mov              qword ptr [rbp + 7680], 0
                        mov              qword ptr [rbp + 7688], 0
                        mov              dword ptr [rbp + 7696], 0
                                                                                        jmp   n166_lit_string_α
n163_disjunction_as:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 0
                                                                                        jne   .Lx481_0
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 7688], rax
                                                                                        jmp   n164_call_builtin_icon_α
.Lx481_0:
                        cmp              eax, 1
                                                                                        jne   .Lx481_1
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7688], rax
                                                                                        jmp   n164_call_builtin_icon_α
.Lx481_1:
                        cmp              eax, 2
                                                                                        jne   .Lx481_2
                        mov              rax, qword ptr [rbp + 7776]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7784]
                        mov              qword ptr [rbp + 7688], rax
                                                                                        jmp   n164_call_builtin_icon_α
.Lx481_2:
                        cmp              eax, 3
                                                                                        jne   .Lx481_3
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7688], rax
                                                                                        jmp   n164_call_builtin_icon_α
.Lx481_3:
                                                                                        jmp   n164_call_builtin_icon_α
n163_disjunction_β:
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 0
                                                                                        je    n163_disjunction_af
                        cmp              eax, 1
                                                                                        je    n168_iterate_β
                        cmp              eax, 2
                                                                                        je    n163_disjunction_af
                                                                                        jmp   n163_disjunction_af
n163_disjunction_af:
                        add              dword ptr [rbp + 7696], 1
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 1
                                                                                        je    n167_var_α
                        cmp              eax, 2
                                                                                        je    n169_var_ref_α
                        cmp              eax, 3
                                                                                        je    n170_lit_string_α
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7616], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7624], rax
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 7632], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 7640], rax
                        .section         .rodata
.Lrkfn483:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rbp + 7616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        cmp              eax, 99
                                                                                        je    n163_disjunction_β
                                                                                        jmp   n163_disjunction_β
n164_call_builtin_icon_β:
                                                                                        jmp   n163_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                                                                                        jmp   n172_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 7712], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 7720], rax
                                                                                        jmp   n163_disjunction_as
n166_lit_string_β:
                                                                                        jmp   n163_disjunction_af
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 7768], rax
                                                                                        jmp   n168_iterate_α
n167_var_β:
                                                                                        jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n168_iterate_α:
                        mov              qword ptr [rbp + 7744], 0
.Lx490_0:
                        mov              rdi, qword ptr [rbp + 7760]
                        mov              rsi, qword ptr [rbp + 7768]
                        mov              rdx, qword ptr [rbp + 7744]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        cmp              rax, 99
                                                                                        je    n163_disjunction_af
                                                                                        jmp   n163_disjunction_as
n168_iterate_β:
                        inc              qword ptr [rbp + 7744]
                                                                                        jmp   .Lx490_0
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx
                                                                                        jmp   n173_random_α
n169_var_ref_β:
                                                                                        jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 7872], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n163_disjunction_as
n170_lit_string_β:
                                                                                        jmp   n163_disjunction_af
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7856]
                        mov              qword ptr [rbp + 7792], rax
                        mov              rax, qword ptr [rbp + 7864]
                        mov              qword ptr [rbp + 7800], rax
                        .section         .rodata
.Lrkfn495:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn495]
                        lea              rsi, [rbp + 7792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                        cmp              eax, 99
                                                                                        je    n163_disjunction_af
                                                                                        jmp   n163_disjunction_as
n171_call_builtin_icon_β:
                                                                                        jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rbp + 7536], 6
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 7544], rax
                                                                                        jmp   n174_subscript_α
.Lx496_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n173_random_α:
                        mov              rdi, qword ptr [rbp + 7840]
                        mov              rsi, qword ptr [rbp + 7848]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n163_disjunction_af
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                                                                                        jmp   n175_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:
                        mov              rdi, qword ptr [rbp + 7520]
                        mov              rsi, qword ptr [rbp + 7528]
                        mov              rdx, qword ptr [rbp + 7536]
                        mov              rcx, qword ptr [rbp + 7544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n177_var_ref_α
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_deref_α:
                        mov              rdi, qword ptr [rbp + 7824]
                        mov              rsi, qword ptr [rbp + 7832]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n163_disjunction_af
                        mov              qword ptr [rbp + 7856], rax
                        mov              qword ptr [rbp + 7864], rdx
                                                                                        jmp   n171_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        mov              qword ptr [rbp + 7584], 6
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 7592], rax
                                                                                        jmp   n178_assign_var_α
.Lx500_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_var_α:
                        mov              rdi, qword ptr [rbp + 7552]
                        mov              rsi, qword ptr [rbp + 7560]
                        mov              rdx, qword ptr [rbp + 7584]
                        mov              rcx, qword ptr [rbp + 7592]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n177_var_ref_α
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 7456], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 7464], rax
                                                                                        jmp   n180_subscript_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n180_subscript_α:
                        mov              rdi, qword ptr [rbp + 7440]
                        mov              rsi, qword ptr [rbp + 7448]
                        mov              rdx, qword ptr [rbp + 7456]
                        mov              rcx, qword ptr [rbp + 7464]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 7504], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n183_assign_var_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 7408], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 7416], rax
                                                                                        jmp   n184_var_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "+2+4+a"
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_var_α:
                        mov              rdi, qword ptr [rbp + 7472]
                        mov              rsi, qword ptr [rbp + 7480]
                        mov              rdx, qword ptr [rbp + 7504]
                        mov              rcx, qword ptr [rbp + 7512]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 7424], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 7432], rax
                                                                                        jmp   n185_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        lea              rsi, [rbp + 7408]
                        lea              rdx, [rbp + 7424]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx512_2
.Lx512_2:
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx
                        cmp              eax, 99
                                                                                        je    n186_var_ref_α
                                                                                        jmp   n186_var_ref_α
n185_call_proc_staged_β:
                                                                                        jmp   n186_var_ref_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                                                                                        jmp   n187_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n187_iterate_α:
                        mov              qword ptr [rbp + 7280], 0
.Lx516_0:
                        mov              rdi, qword ptr [rbp + 7296]
                        mov              rsi, qword ptr [rbp + 7304]
                        mov              rdx, qword ptr [rbp + 7280]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              rax, 99
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n188_lit_integer_α
n187_iterate_β:
                        inc              qword ptr [rbp + 7280]
                                                                                        jmp   .Lx516_0
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 7328], 6
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   n190_assign_var_α
.Lx517_0:
                        .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 7232], 1
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n191_var_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "!x=88"
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_var_α:
                        mov              rdi, qword ptr [rbp + 7264]
                        mov              rsi, qword ptr [rbp + 7272]
                        mov              rdx, qword ptr [rbp + 7328]
                        mov              rcx, qword ptr [rbp + 7336]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n189_lit_string_α
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                                                                                        jmp   n187_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n192_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        lea              rsi, [rbp + 7232]
                        lea              rdx, [rbp + 7248]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx523_2
.Lx523_2:
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        cmp              eax, 99
                                                                                        je    n193_var_ref_α
                                                                                        jmp   n193_var_ref_α
n192_call_proc_staged_β:
                                                                                        jmp   n193_var_ref_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                                                                                        jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n195_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n195_iterate_α:
                        mov              qword ptr [rbp + 7088], 0
.Lx529_0:
                        mov              rdi, qword ptr [rbp + 7104]
                        mov              rsi, qword ptr [rbp + 7112]
                        mov              rdx, qword ptr [rbp + 7088]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              rax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n197_subscript_α
n195_iterate_β:
                        inc              qword ptr [rbp + 7088]
                                                                                        jmp   .Lx529_0
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 7024], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n198_var_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "[all]=99"
#-----------------------------------------------------------------------------------------------------------------------
n197_subscript_α:
                        mov              rdi, qword ptr [rbp + 7056]
                        mov              rsi, qword ptr [rbp + 7064]
                        mov              rdx, qword ptr [rbp + 7072]
                        mov              rcx, qword ptr [rbp + 7080]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n195_iterate_β
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                                                                                        jmp   n199_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 7048], rax
                                                                                        jmp   n200_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 7152], 6
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 7160], rax
                                                                                        jmp   n202_assign_var_α
.Lx534_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        lea              rsi, [rbp + 7024]
                        lea              rdx, [rbp + 7040]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx536_2
.Lx536_2:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 99
                                                                                        je    n201_var_α
                                                                                        jmp   n201_var_α
n200_call_proc_staged_β:
                                                                                        jmp   n201_var_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 6824], rax
                                                                                        jmp   n203_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_var_α:
                        mov              rdi, qword ptr [rbp + 7120]
                        mov              rsi, qword ptr [rbp + 7128]
                        mov              rdx, qword ptr [rbp + 7152]
                        mov              rcx, qword ptr [rbp + 7160]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                                                                                        jmp   n195_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n203_iterate_α:
                        mov              qword ptr [rbp + 6800], 0
.Lx541_0:
                        mov              rdi, qword ptr [rbp + 6816]
                        mov              rsi, qword ptr [rbp + 6824]
                        mov              rdx, qword ptr [rbp + 6800]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              rax, 99
                                                                                        je    n204_lit_string_α
                                                                                        jmp   n205_assign_α
n203_iterate_β:
                        inc              qword ptr [rbp + 6800]
                                                                                        jmp   .Lx541_0
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 6752], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 6760], rax
                                                                                        jmp   n206_var_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "x[k]=k"
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              rdx, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 8496], rax
                        mov              qword ptr [rbp + 8504], rdx
                                                                                        jmp   n207_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 6776], rax
                                                                                        jmp   n208_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n207_bound_α:
                        mov              qword ptr [rbp + 6832], rsp
                                                                                        jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        lea              rsi, [rbp + 6752]
                        lea              rdx, [rbp + 6768]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx549_2
.Lx549_2:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n209_disjunction_α
                                                                                        jmp   n209_disjunction_α
n208_call_proc_staged_β:
                                                                                        jmp   n209_disjunction_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n209_disjunction_α:
                        mov              qword ptr [rbp + 6512], 0
                        mov              qword ptr [rbp + 6520], 0
                        mov              dword ptr [rbp + 6528], 0
                                                                                        jmp   n212_var_ref_α
n209_disjunction_as:
                        mov              eax, dword ptr [rbp + 6528]
                        cmp              eax, 0
                                                                                        jne   .Lx551_0
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6520], rax
                                                                                        jmp   n211_disjunction_α
.Lx551_0:
                        cmp              eax, 1
                                                                                        jne   .Lx551_1
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6520], rax
                                                                                        jmp   n211_disjunction_α
.Lx551_1:
                                                                                        jmp   n211_disjunction_α
n209_disjunction_β:
                        mov              eax, dword ptr [rbp + 6528]
                        cmp              eax, 0
                                                                                        je    n209_disjunction_af
                                                                                        jmp   n209_disjunction_af
n209_disjunction_af:
                        add              dword ptr [rbp + 6528], 1
                        mov              eax, dword ptr [rbp + 6528]
                        cmp              eax, 1
                                                                                        je    n213_lit_string_α
                                                                                        jmp   n211_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                                                                                        jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n211_disjunction_α:
                        mov              qword ptr [rbp + 6336], 0
                        mov              qword ptr [rbp + 6344], 0
                        mov              dword ptr [rbp + 6352], 0
                                                                                        jmp   n218_var_ref_α
n211_disjunction_as:
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 0
                                                                                        jne   .Lx555_0
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n217_call_builtin_icon_α
.Lx555_0:
                        cmp              eax, 1
                                                                                        jne   .Lx555_1
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n217_call_builtin_icon_α
.Lx555_1:
                                                                                        jmp   n217_call_builtin_icon_α
n211_disjunction_β:
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 0
                                                                                        je    n211_disjunction_af
                                                                                        jmp   n211_disjunction_af
n211_disjunction_af:
                        add              dword ptr [rbp + 6352], 1
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 1
                                                                                        je    n219_lit_string_α
                                                                                        jmp   n217_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                                                                                        jmp   n222_lit_integer_α
n212_var_ref_β:
                                                                                        jmp   n209_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 6672], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 6680], rax
                                                                                        jmp   n215_call_builtin_icon_α
n213_lit_string_β:
                                                                                        jmp   n209_disjunction_af
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "/1"
#-----------------------------------------------------------------------------------------------------------------------
n214_unop_test_α:
                        mov              eax, dword ptr [rbp + 6608]
                        cmp              eax, 99
                                                                                        je    n209_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n209_disjunction_af
                        mov              qword ptr [rbp + 6544], 0
                        mov              qword ptr [rbp + 6552], 0
                                                                                        jmp   n209_disjunction_as
n214_unop_test_β:
                                                                                        jmp   n209_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6648], rax
                        .section         .rodata
.Lrkfn561:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rbp + 6640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              eax, 99
                                                                                        je    n209_disjunction_af
                                                                                        jmp   n209_disjunction_as
n215_call_builtin_icon_β:
                                                                                        jmp   n209_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n223_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn565:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rbp + 6320]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              eax, 99
                                                                                        je    n226_disjunction_α
                                                                                        jmp   n225_assign_α
n217_call_builtin_icon_β:
                                                                                        jmp   n226_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n227_lit_integer_α
n218_var_ref_β:
                                                                                        jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 6496], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   n221_call_builtin_icon_α
n219_lit_string_β:
                                                                                        jmp   n211_disjunction_af
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "\\2"
#-----------------------------------------------------------------------------------------------------------------------
n220_unop_test_α:
                        mov              eax, dword ptr [rbp + 6432]
                        cmp              eax, 99
                                                                                        je    n211_disjunction_af
                        cmp              eax, 0
                                                                                        je    n211_disjunction_af
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n211_disjunction_as
n220_unop_test_β:
                                                                                        jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6496]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6504]
                        mov              qword ptr [rbp + 6472], rax
                        .section         .rodata
.Lrkfn571:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn571]
                        lea              rsi, [rbp + 6464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 99
                                                                                        je    n211_disjunction_af
                                                                                        jmp   n211_disjunction_as
n221_call_builtin_icon_β:
                                                                                        jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:
                        mov              qword ptr [rbp + 6576], 6
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 6584], rax
                                                                                        jmp   n228_subscript_α
.Lx572_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n223_subscript_α:
                        mov              rdi, qword ptr [rbp + 6880]
                        mov              rsi, qword ptr [rbp + 6888]
                        mov              rdx, qword ptr [rbp + 6896]
                        mov              rcx, qword ptr [rbp + 6904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n224_unmark_α
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n224_unmark_α:
                        mov              rsp, qword ptr [rbp + 6832]
                                                                                        jmp   n203_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rax, qword ptr [rbp + 6304]
                        mov              rdx, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                                                                                        jmp   n226_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n226_disjunction_α:
                        mov              qword ptr [rbp + 6144], 0
                        mov              qword ptr [rbp + 6152], 0
                        mov              dword ptr [rbp + 6160], 0
                                                                                        jmp   n231_var_α
n226_disjunction_as:
                        mov              eax, dword ptr [rbp + 6160]
                        cmp              eax, 0
                                                                                        jne   .Lx578_0
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n230_disjunction_α
.Lx578_0:
                                                                                        jmp   n230_disjunction_α
n226_disjunction_β:
                        mov              eax, dword ptr [rbp + 6160]
                                                                                        jmp   n230_disjunction_α
n226_disjunction_af:
                        add              dword ptr [rbp + 6160], 1
                        mov              eax, dword ptr [rbp + 6160]
                                                                                        jmp   n230_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rbp + 6400], 6
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 6408], rax
                                                                                        jmp   n233_subscript_α
.Lx579_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n228_subscript_α:
                        mov              rdi, qword ptr [rbp + 6560]
                        mov              rsi, qword ptr [rbp + 6568]
                        mov              rdx, qword ptr [rbp + 6576]
                        mov              rcx, qword ptr [rbp + 6584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n209_disjunction_af
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                                                                                        jmp   n234_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 6952], rax
                                                                                        jmp   n235_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:
                        mov              qword ptr [rbp + 5984], 0
                        mov              qword ptr [rbp + 5992], 0
                        mov              dword ptr [rbp + 6000], 0
                                                                                        jmp   n237_var_α
n230_disjunction_as:
                        mov              eax, dword ptr [rbp + 6000]
                        cmp              eax, 0
                                                                                        jne   .Lx584_0
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n236_disjunction_α
.Lx584_0:
                        cmp              eax, 1
                                                                                        jne   .Lx584_1
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n236_disjunction_α
.Lx584_1:
                                                                                        jmp   n236_disjunction_α
n230_disjunction_β:
                        mov              eax, dword ptr [rbp + 6000]
                        cmp              eax, 0
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_af
n230_disjunction_af:
                        add              dword ptr [rbp + 6000], 1
                        mov              eax, dword ptr [rbp + 6000]
                        cmp              eax, 1
                                                                                        je    n238_lit_string_α
                                                                                        jmp   n236_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n241_call_builtin_icon_α
n231_var_β:
                                                                                        jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6200], rax
                        .section         .rodata
.Lrkfn588:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn588]
                        lea              rsi, [rbp + 6192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_α
                                                                                        jmp   n226_disjunction_as
n232_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n233_subscript_α:
                        mov              rdi, qword ptr [rbp + 6384]
                        mov              rsi, qword ptr [rbp + 6392]
                        mov              rdx, qword ptr [rbp + 6400]
                        mov              rcx, qword ptr [rbp + 6408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n211_disjunction_af
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                                                                                        jmp   n242_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_deref_α:
                        mov              rdi, qword ptr [rbp + 6592]
                        mov              rsi, qword ptr [rbp + 6600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n209_disjunction_af
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx
                                                                                        jmp   n214_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_var_α:
                        mov              rdi, qword ptr [rbp + 6912]
                        mov              rsi, qword ptr [rbp + 6920]
                        mov              rdx, qword ptr [rbp + 6944]
                        mov              rcx, qword ptr [rbp + 6952]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n224_unmark_α
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                                                                                        jmp   n224_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n236_disjunction_α:
                        mov              qword ptr [rbp + 5792], 0
                        mov              qword ptr [rbp + 5800], 0
                        mov              dword ptr [rbp + 5808], 0
                                                                                        jmp   n244_var_α
n236_disjunction_as:
                        mov              eax, dword ptr [rbp + 5808]
                        cmp              eax, 0
                                                                                        jne   .Lx593_0
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5800], rax
                                                                                        jmp   n243_disjunction_α
.Lx593_0:
                        cmp              eax, 1
                                                                                        jne   .Lx593_1
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5800], rax
                                                                                        jmp   n243_disjunction_α
.Lx593_1:
                                                                                        jmp   n243_disjunction_α
n236_disjunction_β:
                        mov              eax, dword ptr [rbp + 5808]
                        cmp              eax, 0
                                                                                        je    n236_disjunction_af
                                                                                        jmp   n236_disjunction_af
n236_disjunction_af:
                        add              dword ptr [rbp + 5808], 1
                        mov              eax, dword ptr [rbp + 5808]
                        cmp              eax, 1
                                                                                        je    n245_lit_string_α
                                                                                        jmp   n243_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n239_call_builtin_icon_α
n237_var_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n240_call_builtin_icon_α
n238_lit_string_β:
                                                                                        jmp   n230_disjunction_af
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "failed 0"
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6040], rax
                        .section         .rodata
.Lrkfn598:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]
                        lea              rsi, [rbp + 6032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_as
n239_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6104], rax
                        .section         .rodata
.Lrkfn600:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 6096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_as
n240_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6264], rax
                        .section         .rodata
.Lrkfn602:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn602]
                        lea              rsi, [rbp + 6256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                                                                                        jmp   n248_lit_string_α
n241_call_builtin_icon_β:
                                                                                        jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:
                        mov              rdi, qword ptr [rbp + 6416]
                        mov              rsi, qword ptr [rbp + 6424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n211_disjunction_af
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n220_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n243_disjunction_α:
                        mov              qword ptr [rbp + 5552], 0
                        mov              qword ptr [rbp + 5560], 0
                        mov              dword ptr [rbp + 5568], 0
                                                                                        jmp   n250_var_α
n243_disjunction_as:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        jne   .Lx605_0
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n249_disjunction_α
.Lx605_0:
                        cmp              eax, 1
                                                                                        jne   .Lx605_1
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n249_disjunction_α
.Lx605_1:
                                                                                        jmp   n249_disjunction_α
n243_disjunction_β:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        je    n243_disjunction_af
                                                                                        jmp   n243_disjunction_af
n243_disjunction_af:
                        add              dword ptr [rbp + 5568], 1
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 1
                                                                                        je    n251_lit_string_α
                                                                                        jmp   n249_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n254_lit_integer_α
n244_var_β:
                                                                                        jmp   n236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 5968], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n247_call_builtin_icon_α
n245_lit_string_β:
                                                                                        jmp   n236_disjunction_af
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "failed 1"
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5864], rax
                        .section         .rodata
.Lrkfn610:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rbp + 5840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              eax, 99
                                                                                        je    n236_disjunction_af
                                                                                        jmp   n236_disjunction_as
n246_call_builtin_icon_β:
                                                                                        jmp   n236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5944], rax
                        .section         .rodata
.Lrkfn612:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn612]
                        lea              rsi, [rbp + 5936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    n236_disjunction_af
                                                                                        jmp   n236_disjunction_as
n247_call_builtin_icon_β:
                                                                                        jmp   n236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n232_call_builtin_icon_α
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "NULL IS MEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n249_disjunction_α:
                        mov              qword ptr [rbp + 5328], 0
                        mov              qword ptr [rbp + 5336], 0
                        mov              dword ptr [rbp + 5344], 0
                                                                                        jmp   n256_var_α
n249_disjunction_as:
                        mov              eax, dword ptr [rbp + 5344]
                        cmp              eax, 0
                                                                                        jne   .Lx615_0
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n255_disjunction_α
.Lx615_0:
                        cmp              eax, 1
                                                                                        jne   .Lx615_1
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n255_disjunction_α
.Lx615_1:
                                                                                        jmp   n255_disjunction_α
n249_disjunction_β:
                        mov              eax, dword ptr [rbp + 5344]
                        cmp              eax, 0
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_af
n249_disjunction_af:
                        add              dword ptr [rbp + 5344], 1
                        mov              eax, dword ptr [rbp + 5344]
                        cmp              eax, 1
                                                                                        je    n257_lit_string_α
                                                                                        jmp   n255_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n260_lit_integer_α
n250_var_β:
                                                                                        jmp   n243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n253_call_builtin_icon_α
n251_lit_string_β:
                                                                                        jmp   n243_disjunction_af
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "failed 3"
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5640], rax
                        .section         .rodata
.Lrkfn620:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rbp + 5600]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        cmp              eax, 99
                                                                                        je    n243_disjunction_af
                                                                                        jmp   n243_disjunction_as
n252_call_builtin_icon_β:
                                                                                        jmp   n243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5752], rax
                        .section         .rodata
.Lrkfn622:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]
                        lea              rsi, [rbp + 5744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                        cmp              eax, 99
                                                                                        je    n243_disjunction_af
                                                                                        jmp   n243_disjunction_as
n253_call_builtin_icon_β:
                                                                                        jmp   n243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 5904], 6
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n246_call_builtin_icon_α
.Lx623_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n255_disjunction_α:
                        mov              qword ptr [rbp + 4992], 0
                        mov              qword ptr [rbp + 5000], 0
                        mov              dword ptr [rbp + 5008], 0
                                                                                        jmp   n262_var_α
n255_disjunction_as:
                        mov              eax, dword ptr [rbp + 5008]
                        cmp              eax, 0
                                                                                        jne   .Lx625_0
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n261_disjunction_α
.Lx625_0:
                        cmp              eax, 1
                                                                                        jne   .Lx625_1
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n261_disjunction_α
.Lx625_1:
                                                                                        jmp   n261_disjunction_α
n255_disjunction_β:
                        mov              eax, dword ptr [rbp + 5008]
                        cmp              eax, 0
                                                                                        je    n255_disjunction_af
                                                                                        jmp   n255_disjunction_af
n255_disjunction_af:
                        add              dword ptr [rbp + 5008], 1
                        mov              eax, dword ptr [rbp + 5008]
                        cmp              eax, 1
                                                                                        je    n263_lit_string_α
                                                                                        jmp   n261_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n266_lit_integer_α
n256_var_β:
                                                                                        jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 5536], 1
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n259_call_builtin_icon_α
n257_lit_string_β:
                                                                                        jmp   n249_disjunction_af
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "failed 5"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5400], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5416], rax
                        .section         .rodata
.Lrkfn630:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn630]
                        lea              rsi, [rbp + 5376]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                        cmp              eax, 99
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_as
n258_call_builtin_icon_β:
                                                                                        jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5512], rax
                        .section         .rodata
.Lrkfn632:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rbp + 5504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                        cmp              eax, 99
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_as
n259_call_builtin_icon_β:
                                                                                        jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:
                        mov              qword ptr [rbp + 5680], 6
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   n267_keyword_icon_α
.Lx633_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:
                        mov              qword ptr [rbp + 4752], 0
                        mov              qword ptr [rbp + 4760], 0
                        mov              dword ptr [rbp + 4768], 0
                                                                                        jmp   n269_var_α
n261_disjunction_as:
                        mov              eax, dword ptr [rbp + 4768]
                        cmp              eax, 0
                                                                                        jne   .Lx635_0
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n268_disjunction_α
.Lx635_0:
                        cmp              eax, 1
                                                                                        jne   .Lx635_1
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n268_disjunction_α
.Lx635_1:
                                                                                        jmp   n268_disjunction_α
n261_disjunction_β:
                        mov              eax, dword ptr [rbp + 4768]
                        cmp              eax, 0
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_af
n261_disjunction_af:
                        add              dword ptr [rbp + 4768], 1
                        mov              eax, dword ptr [rbp + 4768]
                        cmp              eax, 1
                                                                                        je    n270_lit_string_α
                                                                                        jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n273_lit_integer_α
n262_var_β:
                                                                                        jmp   n255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 5312], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n265_call_builtin_icon_α
n263_lit_string_β:
                                                                                        jmp   n255_disjunction_af
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "failed 67"
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5080], rax
                        .section         .rodata
.Lrkfn640:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn640]
                        lea              rsi, [rbp + 5040]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n255_disjunction_af
                                                                                        jmp   n255_disjunction_as
n264_call_builtin_icon_β:
                                                                                        jmp   n255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5288], rax
                        .section         .rodata
.Lrkfn642:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]
                        lea              rsi, [rbp + 5280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        cmp              eax, 99
                                                                                        je    n255_disjunction_af
                                                                                        jmp   n255_disjunction_as
n265_call_builtin_icon_β:
                                                                                        jmp   n255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:
                        mov              qword ptr [rbp + 5456], 6
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n274_lit_integer_α
.Lx643_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n267_keyword_icon_α:
                        mov              qword ptr [rbp + 5696], 0
                        mov              qword ptr [rbp + 5704], 0
                                                                                        jmp   n252_call_builtin_icon_α
n267_keyword_icon_β:
                                                                                        jmp   n243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n268_disjunction_α:
                        mov              qword ptr [rbp + 4576], 0
                        mov              qword ptr [rbp + 4584], 0
                        mov              dword ptr [rbp + 4592], 0
                                                                                        jmp   n276_var_α
n268_disjunction_as:
                        mov              eax, dword ptr [rbp + 4592]
                        cmp              eax, 0
                                                                                        jne   .Lx646_0
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n275_lit_string_α
.Lx646_0:
                                                                                        jmp   n275_lit_string_α
n268_disjunction_β:
                        mov              eax, dword ptr [rbp + 4592]
                                                                                        jmp   n275_lit_string_α
n268_disjunction_af:
                        add              dword ptr [rbp + 4592], 1
                        mov              eax, dword ptr [rbp + 4592]
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n278_keyword_icon_α
n269_var_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 4976], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n272_call_builtin_icon_α
n270_lit_string_β:
                                                                                        jmp   n261_disjunction_af
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "failed n"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4840], rax
                        .section         .rodata
.Lrkfn651:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rbp + 4800]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_as
n271_call_builtin_icon_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                        .section         .rodata
.Lrkfn653:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn653]
                        lea              rsi, [rbp + 4944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_as
n272_call_builtin_icon_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:
                        mov              qword ptr [rbp + 5200], 6
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n279_lit_integer_α
.Lx654_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:
                        mov              qword ptr [rbp + 5472], 6
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n258_call_builtin_icon_α
.Lx655_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n280_var_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n281_call_builtin_icon_α
n276_var_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rbp + 4624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n268_disjunction_as
n277_call_builtin_icon_β:
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_keyword_icon_α:
                        mov              qword ptr [rbp + 4880], 0
                        mov              qword ptr [rbp + 4888], 0
                                                                                        jmp   n283_lit_string_α
n278_keyword_icon_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rbp + 5216], 6
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n284_call_builtin_icon_α
.Lx662_0:
                        .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n285_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn666:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn666]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n282_var_α
                                                                                        jmp   n268_disjunction_af
n281_call_builtin_icon_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              qword ptr [rbp + 4672], 0
                        mov              qword ptr [rbp + 4680], 0
                                                                                        jmp   n287_lit_string_α
n282_var_β:
                                                                                        jmp   n268_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n271_call_builtin_icon_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5160], rax
                        .section         .rodata
.Lrkfn670:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rbp + 5120]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n255_disjunction_af
                                                                                        jmp   n288_lit_integer_α
n284_call_builtin_icon_β:
                                                                                        jmp   n255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n285_call_proc_staged_α:
                        lea              rsi, [rbp + 4544]
                        lea              rdx, [rbp + 4560]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx672_2
.Lx672_2:
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    n286_disjunction_α
                                                                                        jmp   n286_disjunction_α
n285_call_proc_staged_β:
                                                                                        jmp   n286_disjunction_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n286_disjunction_α:
                        mov              qword ptr [rbp + 4320], 0
                        mov              qword ptr [rbp + 4328], 0
                        mov              dword ptr [rbp + 4336], 0
                                                                                        jmp   n290_var_α
n286_disjunction_as:
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 0
                                                                                        jne   .Lx674_0
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n289_disjunction_α
.Lx674_0:
                        cmp              eax, 1
                                                                                        jne   .Lx674_1
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n289_disjunction_α
.Lx674_1:
                                                                                        jmp   n289_disjunction_α
n286_disjunction_β:
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 0
                                                                                        je    n286_disjunction_af
                                                                                        jmp   n286_disjunction_af
n286_disjunction_af:
                        add              dword ptr [rbp + 4336], 1
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 1
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n289_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n277_call_builtin_icon_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "NULL IS NOT MEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n294_lit_integer_α
.Lx676_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n289_disjunction_α:
                        mov              qword ptr [rbp + 4096], 0
                        mov              qword ptr [rbp + 4104], 0
                        mov              dword ptr [rbp + 4112], 0
                                                                                        jmp   n296_var_α
n289_disjunction_as:
                        mov              eax, dword ptr [rbp + 4112]
                        cmp              eax, 0
                                                                                        jne   .Lx678_0
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n295_disjunction_α
.Lx678_0:
                        cmp              eax, 1
                                                                                        jne   .Lx678_1
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n295_disjunction_α
.Lx678_1:
                                                                                        jmp   n295_disjunction_α
n289_disjunction_β:
                        mov              eax, dword ptr [rbp + 4112]
                        cmp              eax, 0
                                                                                        je    n289_disjunction_af
                                                                                        jmp   n289_disjunction_af
n289_disjunction_af:
                        add              dword ptr [rbp + 4112], 1
                        mov              eax, dword ptr [rbp + 4112]
                        cmp              eax, 1
                                                                                        je    n297_lit_string_α
                                                                                        jmp   n295_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n292_call_builtin_icon_α
n290_var_β:
                                                                                        jmp   n286_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n293_call_builtin_icon_α
n291_lit_string_β:
                                                                                        jmp   n286_disjunction_af
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "failed dn"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4376], rax
                        .section         .rodata
.Lrkfn683:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rbp + 4368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n286_disjunction_af
                                                                                        jmp   n286_disjunction_as
n292_call_builtin_icon_β:
                                                                                        jmp   n286_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4440], rax
                        .section         .rodata
.Lrkfn685:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]
                        lea              rsi, [rbp + 4432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 99
                                                                                        je    n286_disjunction_af
                                                                                        jmp   n286_disjunction_as
n293_call_builtin_icon_β:
                                                                                        jmp   n286_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:
                        mov              qword ptr [rbp + 5248], 6
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n264_call_builtin_icon_α
.Lx686_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n295_disjunction_α:
                        mov              qword ptr [rbp + 3824], 0
                        mov              qword ptr [rbp + 3832], 0
                        mov              dword ptr [rbp + 3840], 0
                                                                                        jmp   n301_var_α
n295_disjunction_as:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        jne   .Lx688_0
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n300_lit_string_α
.Lx688_0:
                        cmp              eax, 1
                                                                                        jne   .Lx688_1
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n300_lit_string_α
.Lx688_1:
                                                                                        jmp   n300_lit_string_α
n295_disjunction_β:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        je    n295_disjunction_af
                                                                                        jmp   n295_disjunction_af
n295_disjunction_af:
                        add              dword ptr [rbp + 3840], 1
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 1
                                                                                        je    n302_lit_string_α
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n305_lit_integer_α
n296_var_β:
                                                                                        jmp   n289_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n299_call_builtin_icon_α
n297_lit_string_β:
                                                                                        jmp   n289_disjunction_af
.Lx691_0:
                        .quad            .Lx691_0_s
.Lx691_0_s:
                        .string          "failed d36"
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4184], rax
                        .section         .rodata
.Lrkfn693:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 4144]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              eax, 99
                                                                                        je    n289_disjunction_af
                                                                                        jmp   n289_disjunction_as
n298_call_builtin_icon_β:
                                                                                        jmp   n289_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4280], rax
                        .section         .rodata
.Lrkfn695:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn695]
                        lea              rsi, [rbp + 4272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    n289_disjunction_af
                                                                                        jmp   n289_disjunction_as
n299_call_builtin_icon_β:
                                                                                        jmp   n289_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n306_var_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n307_lit_integer_α
n301_var_β:
                                                                                        jmp   n295_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n304_call_builtin_icon_α
n302_lit_string_β:
                                                                                        jmp   n295_disjunction_af
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          "failed d71"
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3896], rax
                        .section         .rodata
.Lrkfn701:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn701]
                        lea              rsi, [rbp + 3872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    n295_disjunction_af
                                                                                        jmp   n295_disjunction_as
n303_call_builtin_icon_β:
                                                                                        jmp   n295_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4056], rax
                        .section         .rodata
.Lrkfn703:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn703]
                        lea              rsi, [rbp + 4048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n295_disjunction_af
                                                                                        jmp   n295_disjunction_as
n304_call_builtin_icon_β:
                                                                                        jmp   n295_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 4224], 6
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n308_lit_integer_α
.Lx704_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n309_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n311_call_builtin_icon_α
.Lx707_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n298_call_builtin_icon_α
.Lx708_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n309_call_proc_staged_α:
                        lea              rsi, [rbp + 3792]
                        lea              rdx, [rbp + 3808]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx710_2
.Lx710_2:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              eax, 99
                                                                                        je    n310_lit_integer_α
                                                                                        jmp   n310_lit_integer_α
n309_call_proc_staged_β:
                                                                                        jmp   n310_lit_integer_α
.Lx710_0:
                        .quad            .Lx710_0_s
.Lx710_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n312_call_builtin_icon_α
.Lx711_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3960], rax
                        .section         .rodata
.Lrkfn713:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn713]
                        lea              rsi, [rbp + 3936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    n295_disjunction_af
                                                                                        jmp   n313_lit_integer_α
n311_call_builtin_icon_β:
                                                                                        jmp   n295_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        .section         .rodata
.Lrkfn715:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn715]
                        lea              rsi, [rbp + 3680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n315_var_ref_α
                                                                                        jmp   n314_assign_α
n312_call_builtin_icon_β:
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:
                        mov              qword ptr [rbp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n303_call_builtin_icon_α
.Lx716_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n316_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:
                        mov              qword ptr [rbp + 3616], 6
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n317_subscript_α
.Lx720_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n317_subscript_α:
                        mov              rdi, qword ptr [rbp + 3600]
                        mov              rsi, qword ptr [rbp + 3608]
                        mov              rdx, qword ptr [rbp + 3616]
                        mov              rcx, qword ptr [rbp + 3624]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n319_lit_string_α
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n318_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_deref_α:
                        mov              rdi, qword ptr [rbp + 3632]
                        mov              rsi, qword ptr [rbp + 3640]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n319_lit_string_α
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n320_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n321_var_α
.Lx723_0:
                        .quad            .Lx723_0_s
.Lx723_0_s:
                        .string          "t0"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3576], rax
                        .section         .rodata
.Lrkfn725:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn725]
                        lea              rsi, [rbp + 3568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    n319_lit_string_α
                                                                                        jmp   n319_lit_string_α
n320_call_builtin_icon_β:
                                                                                        jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n322_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_proc_staged_α:
                        lea              rsi, [rbp + 3520]
                        lea              rdx, [rbp + 3536]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx729_2
.Lx729_2:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_α
                                                                                        jmp   n323_disjunction_α
n322_call_proc_staged_β:
                                                                                        jmp   n323_disjunction_α
.Lx729_0:
                        .quad            .Lx729_0_s
.Lx729_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n323_disjunction_α:
                        mov              qword ptr [rbp + 3296], 0
                        mov              qword ptr [rbp + 3304], 0
                        mov              dword ptr [rbp + 3312], 0
                                                                                        jmp   n325_var_α
n323_disjunction_as:
                        mov              eax, dword ptr [rbp + 3312]
                        cmp              eax, 0
                                                                                        jne   .Lx731_0
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n324_disjunction_α
.Lx731_0:
                        cmp              eax, 1
                                                                                        jne   .Lx731_1
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n324_disjunction_α
.Lx731_1:
                                                                                        jmp   n324_disjunction_α
n323_disjunction_β:
                        mov              eax, dword ptr [rbp + 3312]
                        cmp              eax, 0
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n323_disjunction_af
n323_disjunction_af:
                        add              dword ptr [rbp + 3312], 1
                        mov              eax, dword ptr [rbp + 3312]
                        cmp              eax, 1
                                                                                        je    n326_lit_string_α
                                                                                        jmp   n324_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n324_disjunction_α:
                        mov              qword ptr [rbp + 3104], 0
                        mov              qword ptr [rbp + 3112], 0
                        mov              dword ptr [rbp + 3120], 0
                                                                                        jmp   n330_var_α
n324_disjunction_as:
                        mov              eax, dword ptr [rbp + 3120]
                        cmp              eax, 0
                                                                                        jne   .Lx733_0
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n329_disjunction_α
.Lx733_0:
                        cmp              eax, 1
                                                                                        jne   .Lx733_1
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n329_disjunction_α
.Lx733_1:
                                                                                        jmp   n329_disjunction_α
n324_disjunction_β:
                        mov              eax, dword ptr [rbp + 3120]
                        cmp              eax, 0
                                                                                        je    n324_disjunction_af
                                                                                        jmp   n324_disjunction_af
n324_disjunction_af:
                        add              dword ptr [rbp + 3120], 1
                        mov              eax, dword ptr [rbp + 3120]
                        cmp              eax, 1
                                                                                        je    n331_lit_string_α
                                                                                        jmp   n329_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n327_call_builtin_icon_α
n325_var_β:
                                                                                        jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n328_call_builtin_icon_α
n326_lit_string_β:
                                                                                        jmp   n323_disjunction_af
.Lx736_0:
                        .quad            .Lx736_0_s
.Lx736_0_s:
                        .string          "failed 0"
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lrkfn738:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn738]
                        lea              rsi, [rbp + 3344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n323_disjunction_as
n327_call_builtin_icon_β:
                                                                                        jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn740:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn740]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n323_disjunction_as
n328_call_builtin_icon_β:
                                                                                        jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n329_disjunction_α:
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              dword ptr [rbp + 2880], 0
                                                                                        jmp   n335_var_α
n329_disjunction_as:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        jne   .Lx742_0
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n334_disjunction_α
.Lx742_0:
                        cmp              eax, 1
                                                                                        jne   .Lx742_1
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n334_disjunction_α
.Lx742_1:
                                                                                        jmp   n334_disjunction_α
n329_disjunction_β:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        je    n329_disjunction_af
                                                                                        jmp   n329_disjunction_af
n329_disjunction_af:
                        add              dword ptr [rbp + 2880], 1
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 1
                                                                                        je    n336_lit_string_α
                                                                                        jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n339_lit_integer_α
n330_var_β:
                                                                                        jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n333_call_builtin_icon_α
n331_lit_string_β:
                                                                                        jmp   n324_disjunction_af
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          "failed 1"
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn747:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn747]
                        lea              rsi, [rbp + 3152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 99
                                                                                        je    n324_disjunction_af
                                                                                        jmp   n324_disjunction_as
n332_call_builtin_icon_β:
                                                                                        jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn749:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn749]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n324_disjunction_af
                                                                                        jmp   n324_disjunction_as
n333_call_builtin_icon_β:
                                                                                        jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:
                        mov              qword ptr [rbp + 2640], 0
                        mov              qword ptr [rbp + 2648], 0
                        mov              dword ptr [rbp + 2656], 0
                                                                                        jmp   n341_var_α
n334_disjunction_as:
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, 0
                                                                                        jne   .Lx751_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n340_disjunction_α
.Lx751_0:
                        cmp              eax, 1
                                                                                        jne   .Lx751_1
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n340_disjunction_α
.Lx751_1:
                                                                                        jmp   n340_disjunction_α
n334_disjunction_β:
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, 0
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_af
n334_disjunction_af:
                        add              dword ptr [rbp + 2656], 1
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, 1
                                                                                        je    n342_lit_string_α
                                                                                        jmp   n340_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n345_lit_integer_α
n335_var_β:
                                                                                        jmp   n329_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n338_call_builtin_icon_α
n336_lit_string_β:
                                                                                        jmp   n329_disjunction_af
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "failed 3"
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn756:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n329_disjunction_af
                                                                                        jmp   n329_disjunction_as
n337_call_builtin_icon_β:
                                                                                        jmp   n329_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn758:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n329_disjunction_af
                                                                                        jmp   n329_disjunction_as
n338_call_builtin_icon_β:
                                                                                        jmp   n329_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:
                        mov              qword ptr [rbp + 3216], 6
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n332_call_builtin_icon_α
.Lx759_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n340_disjunction_α:
                        mov              qword ptr [rbp + 2304], 0
                        mov              qword ptr [rbp + 2312], 0
                        mov              dword ptr [rbp + 2320], 0
                                                                                        jmp   n347_var_α
n340_disjunction_as:
                        mov              eax, dword ptr [rbp + 2320]
                        cmp              eax, 0
                                                                                        jne   .Lx761_0
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n346_disjunction_α
.Lx761_0:
                        cmp              eax, 1
                                                                                        jne   .Lx761_1
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n346_disjunction_α
.Lx761_1:
                                                                                        jmp   n346_disjunction_α
n340_disjunction_β:
                        mov              eax, dword ptr [rbp + 2320]
                        cmp              eax, 0
                                                                                        je    n340_disjunction_af
                                                                                        jmp   n340_disjunction_af
n340_disjunction_af:
                        add              dword ptr [rbp + 2320], 1
                        mov              eax, dword ptr [rbp + 2320]
                        cmp              eax, 1
                                                                                        je    n348_lit_string_α
                                                                                        jmp   n346_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n351_lit_integer_α
n341_var_β:
                                                                                        jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n344_call_builtin_icon_α
n342_lit_string_β:
                                                                                        jmp   n334_disjunction_af
.Lx764_0:
                        .quad            .Lx764_0_s
.Lx764_0_s:
                        .string          "failed 5"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn766:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn766]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_as
n343_call_builtin_icon_β:
                                                                                        jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn768:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn768]
                        lea              rsi, [rbp + 2816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_as
n344_call_builtin_icon_β:
                                                                                        jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 6
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n352_keyword_icon_α
.Lx769_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n346_disjunction_α:
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0
                        mov              dword ptr [rbp + 2080], 0
                                                                                        jmp   n354_var_α
n346_disjunction_as:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        jne   .Lx771_0
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n353_lit_string_α
.Lx771_0:
                        cmp              eax, 1
                                                                                        jne   .Lx771_1
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n353_lit_string_α
.Lx771_1:
                                                                                        jmp   n353_lit_string_α
n346_disjunction_β:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        je    n346_disjunction_af
                                                                                        jmp   n346_disjunction_af
n346_disjunction_af:
                        add              dword ptr [rbp + 2080], 1
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 1
                                                                                        je    n355_lit_string_α
                                                                                        jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n358_lit_integer_α
n347_var_β:
                                                                                        jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n350_call_builtin_icon_α
n348_lit_string_β:
                                                                                        jmp   n340_disjunction_af
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "failed 67"
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn776:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n340_disjunction_af
                                                                                        jmp   n340_disjunction_as
n349_call_builtin_icon_β:
                                                                                        jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn778:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn778]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n340_disjunction_af
                                                                                        jmp   n340_disjunction_as
n350_call_builtin_icon_β:
                                                                                        jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n359_lit_integer_α
.Lx779_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n352_keyword_icon_α:
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                                                                                        jmp   n337_call_builtin_icon_α
n352_keyword_icon_β:
                                                                                        jmp   n329_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n360_var_α
.Lx781_0:
                        .quad            .Lx781_0_s
.Lx781_0_s:
                        .string          "t0i"
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n361_keyword_icon_α
n354_var_β:
                                                                                        jmp   n346_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n357_call_builtin_icon_α
n355_lit_string_β:
                                                                                        jmp   n346_disjunction_af
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "failed n"
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn786:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn786]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n346_disjunction_af
                                                                                        jmp   n346_disjunction_as
n356_call_builtin_icon_β:
                                                                                        jmp   n346_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn788:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn788]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n346_disjunction_af
                                                                                        jmp   n346_disjunction_as
n357_call_builtin_icon_β:
                                                                                        jmp   n346_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 2512], 6
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n362_lit_integer_α
.Lx789_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:
                        mov              qword ptr [rbp + 2784], 6
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n343_call_builtin_icon_α
.Lx790_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n363_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n361_keyword_icon_α:
                        mov              qword ptr [rbp + 2192], 0
                        mov              qword ptr [rbp + 2200], 0
                                                                                        jmp   n365_lit_string_α
n361_keyword_icon_β:
                                                                                        jmp   n346_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n366_call_builtin_icon_α
.Lx794_0:
                        .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n363_call_proc_staged_α:
                        lea              rsi, [rbp + 2032]
                        lea              rdx, [rbp + 2048]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx796_2
.Lx796_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n364_disjunction_α
                                                                                        jmp   n364_disjunction_α
n363_call_proc_staged_β:
                                                                                        jmp   n364_disjunction_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n364_disjunction_α:
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0
                                                                                        jmp   n368_var_α
n364_disjunction_as:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        jne   .Lx798_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n367_disjunction_α
.Lx798_0:
                        cmp              eax, 1
                                                                                        jne   .Lx798_1
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n367_disjunction_α
.Lx798_1:
                                                                                        jmp   n367_disjunction_α
n364_disjunction_β:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        je    n364_disjunction_af
                                                                                        jmp   n364_disjunction_af
n364_disjunction_af:
                        add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1
                                                                                        je    n369_lit_string_α
                                                                                        jmp   n367_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n356_call_builtin_icon_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn801:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn801]
                        lea              rsi, [rbp + 2432]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n340_disjunction_af
                                                                                        jmp   n372_lit_integer_α
n366_call_builtin_icon_β:
                                                                                        jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n367_disjunction_α:
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              dword ptr [rbp + 1600], 0
                                                                                        jmp   n374_var_α
n367_disjunction_as:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        jne   .Lx803_0
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n373_disjunction_α
.Lx803_0:
                        cmp              eax, 1
                                                                                        jne   .Lx803_1
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n373_disjunction_α
.Lx803_1:
                                                                                        jmp   n373_disjunction_α
n367_disjunction_β:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        je    n367_disjunction_af
                                                                                        jmp   n367_disjunction_af
n367_disjunction_af:
                        add              dword ptr [rbp + 1600], 1
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 1
                                                                                        je    n375_lit_string_α
                                                                                        jmp   n373_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n370_call_builtin_icon_α
n368_var_β:
                                                                                        jmp   n364_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n371_call_builtin_icon_α
n369_lit_string_β:
                                                                                        jmp   n364_disjunction_af
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          "failed dn"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn808:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn808]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n364_disjunction_af
                                                                                        jmp   n364_disjunction_as
n370_call_builtin_icon_β:
                                                                                        jmp   n364_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn810:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn810]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n364_disjunction_af
                                                                                        jmp   n364_disjunction_as
n371_call_builtin_icon_β:
                                                                                        jmp   n364_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n378_lit_integer_α
.Lx811_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n373_disjunction_α:
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                        mov              dword ptr [rbp + 1328], 0
                                                                                        jmp   n380_var_α
n373_disjunction_as:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        jne   .Lx813_0
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n379_lit_string_α
.Lx813_0:
                        cmp              eax, 1
                                                                                        jne   .Lx813_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n379_lit_string_α
.Lx813_1:
                                                                                        jmp   n379_lit_string_α
n373_disjunction_β:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        je    n373_disjunction_af
                                                                                        jmp   n373_disjunction_af
n373_disjunction_af:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 1
                                                                                        je    n381_lit_string_α
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n384_lit_integer_α
n374_var_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n377_call_builtin_icon_α
n375_lit_string_β:
                                                                                        jmp   n367_disjunction_af
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "failed d36"
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn818:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn818]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n367_disjunction_af
                                                                                        jmp   n367_disjunction_as
n376_call_builtin_icon_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn820:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n367_disjunction_af
                                                                                        jmp   n367_disjunction_as
n377_call_builtin_icon_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 6
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n349_call_builtin_icon_α
.Lx821_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n385_var_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "t0d"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n386_lit_integer_α
n380_var_β:
                                                                                        jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n383_call_builtin_icon_α
n381_lit_string_β:
                                                                                        jmp   n373_disjunction_af
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "failed d71"
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn827:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn827]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n373_disjunction_af
                                                                                        jmp   n373_disjunction_as
n382_call_builtin_icon_β:
                                                                                        jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn829:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn829]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n373_disjunction_af
                                                                                        jmp   n373_disjunction_as
n383_call_builtin_icon_β:
                                                                                        jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n387_lit_integer_α
.Lx830_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n388_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n390_call_builtin_icon_α
.Lx833_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n376_call_builtin_icon_α
.Lx834_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1296]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx836_2
.Lx836_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_builtin_icon_α
                                                                                        jmp   n389_call_builtin_icon_α
n388_call_proc_staged_β:
                                                                                        jmp   n389_call_builtin_icon_α
.Lx836_0:
                        .quad            .Lx836_0_s
.Lx836_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn838:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n391_lit_integer_α
                                                                                        jmp   n391_lit_integer_α
n389_call_builtin_icon_β:
                                                                                        jmp   n391_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn840:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn840]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n373_disjunction_af
                                                                                        jmp   n392_lit_integer_α
n390_call_builtin_icon_β:
                                                                                        jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n393_call_builtin_icon_α
.Lx841_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n382_call_builtin_icon_α
.Lx842_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn844:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn844]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n395_var_ref_α
                                                                                        jmp   n394_assign_α
n393_call_builtin_icon_β:
                                                                                        jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                                                                                        jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n396_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n397_subscript_α
.Lx848_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n397_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n399_lit_string_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n398_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n400_rev_assign_var_α
.Lx850_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n401_var_α
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "k "
#-----------------------------------------------------------------------------------------------------------------------
n400_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n399_lit_string_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n400_rev_assign_var_β
n400_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_assign_var@PLT
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n402_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n402_iterate_α:
                        mov              qword ptr [rbp + 992], 0
.Lx856_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 992]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              rax, 99
                                                                                        je    n403_lit_string_α
                                                                                        jmp   n404_call_builtin_icon_α
n402_iterate_β:
                        inc              qword ptr [rbp + 992]
                                                                                        jmp   .Lx856_0
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n405_var_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "v "
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn859:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn859]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n402_iterate_β
                                                                                        jmp   n402_iterate_β
n404_call_builtin_icon_β:
                                                                                        jmp   n402_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n406_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n406_iterate_α:
                        mov              qword ptr [rbp + 864], 0
.Lx863_0:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 864]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              rax, 99
                                                                                        je    n407_call_builtin_icon_α
                                                                                        jmp   n408_call_builtin_icon_α
n406_iterate_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx863_0
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn865:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn865]
                        lea              rsi, [rbp + 752]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n410_lit_integer_α
                                                                                        jmp   n409_assign_α
n407_call_builtin_icon_β:
                                                                                        jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn867:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn867]
                        lea              rsi, [rbp + 784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n406_iterate_β
                                                                                        jmp   n406_iterate_β
n408_call_builtin_icon_β:
                                                                                        jmp   n406_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                                                                                        jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx869_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n411_lit_integer_α
.Lx869_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n412_to_α
.Lx870_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n412_to_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 528], 6
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 544], 6
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 512], rax
.Lx872_0:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 552]
                        cmp              rax, rcx
                                                                                        jg    n414_var_α
                        mov              qword ptr [rbp + 496], 6
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n413_assign_α
n412_to_β:
                        inc              qword ptr [rbp + 512]
                                                                                        jmp   .Lx872_0
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 8496], rax
                        mov              qword ptr [rbp + 8504], rdx
                                                                                        jmp   n415_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n416_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n415_bound_α:
                        mov              qword ptr [rbp + 560], rsp
                                                                                        jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn879:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n417_var_ref_α
                                                                                        jmp   n419_assign_α
n416_call_builtin_icon_β:
                                                                                        jmp   n417_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n420_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8480]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 8464], rax
                        mov              qword ptr [rbp + 8472], rdx
                                                                                        jmp   n417_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n420_iterate_α:
                        mov              qword ptr [rbp + 320], 0
.Lx886_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 320]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              rax, 99
                                                                                        je    n423_var_ref_α
                                                                                        jmp   n422_deref_α
n420_iterate_β:
                        inc              qword ptr [rbp + 320]
                                                                                        jmp   .Lx886_0
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n424_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n422_deref_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n423_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n426_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8464]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n427_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n424_subscript_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n425_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_unmark_α:
                        mov              rsp, qword ptr [rbp + 560]
                                                                                        jmp   n412_to_β
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n429_binop_α
.Lx895_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n427_iterate_α:
                        mov              qword ptr [rbp + 208], 0
.Lx897_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              rax, 99
                                                                                        je    n431_lit_string_α
                                                                                        jmp   n430_deref_α
n427_iterate_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx897_0
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n432_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n429_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx900_0
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n433_assign_var_α
.Lx900_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n423_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n433_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_deref_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n431_lit_string_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n435_var_α
.Lx902_0:
                        .quad            .Lx902_0_s
.Lx902_0_s:
                        .string          "30s"
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n436_op75_α
.Lx903_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_var_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n423_var_ref_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n420_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n437_binop_α
.Lx905_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n438_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n436_op75_α:
                        mov              eax, dword ptr [rbp + 8496]
                        cmp              eax, 7
                                                                                        je    .Lx909_1
                        cmp              eax, 6
                                                                                        jne   .Lx909_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx909_0
.Lx909_1:
                        mov              rax, qword ptr [rbp + 8496]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 8504]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n440_binop_α
.Lx909_0:
                        lea              rdi, [rbp + 8496]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n440_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n437_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx910_0
                        mov              rax, qword ptr [rbp + 280]
                        mov              rcx, 40
                        add              rax, rcx
                        mov              qword ptr [rbp + 256], 6
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n441_assign_var_α
.Lx910_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n431_lit_string_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n441_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 176]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx912_2
.Lx912_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n439_lit_string_α
                                                                                        jmp   n439_lit_string_α
n438_call_proc_staged_β:
                                                                                        jmp   n439_lit_string_α
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n442_var_α
.Lx913_0:
                        .quad            .Lx913_0_s
.Lx913_0_s:
                        .string          "50s"
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx914_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n443_assign_var_α
.Lx914_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n425_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n443_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_var_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n431_lit_string_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n427_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n444_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_var_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n425_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n425_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 80]
                        call             proc_tdump_dcα
                                                                                        jmp   .Lx920_2
.Lx920_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n444_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx920_0:
                        .quad            .Lx920_0_s
.Lx920_0_s:
                        .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 8512]
                        add              rsp, 8520
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 8512]
                        add              rsp, 8520
                        ret
                        .section         .note.GNU-stack,"",@progbits
