                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tabulate_α
proc_tabulate_α:
                        sub              rsp, 1424
                        mov              qword ptr [rsp + 1400], rcx
                        mov              qword ptr [rsp + 1408], rdx
                        mov              qword ptr [rsp + 1416], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1392
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_tabulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn72:               .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]                          # fn
                        lea              rsi, [rbp + 1280]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 0
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n4_assign_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # uses
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # base
                        mov              rsi, qword ptr [rbp + 1192]                    # base
                        mov              rdx, qword ptr [rbp + 1200]                    # idx
                        mov              rcx, qword ptr [rbp + 1208]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_tabulate_ω
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # d
                        mov              rsi, qword ptr [rbp + 1224]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    proc_tabulate_ω
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n9_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1232]                    # lo
                        mov              rsi, qword ptr [rbp + 1240]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n11_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n12_scan_upto_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_upto_α:
                        mov              qword ptr [rbp + 1008], r14
.Lx88_0:
                        mov              rax, qword ptr [rbp + 1008]
                        cmp              rax, r15
                                                                                        jge   n25_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx88_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx88_1
                        mov              qword ptr [rbp + 992], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n13_scan_tab_α
.Lx88_1:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx88_0
n12_scan_upto_β:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx88_0
.Lx88_2:
                        .quad            .Lx88_2_s
.Lx88_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1000]
                        cmp              rax, 1
                                                                                        jge   .Lx90_0
                        add              rax, r15
                        add              rax, 1
.Lx90_0:
                        cmp              rax, 1
                                                                                        jge   .Lx90_239
                        add              rsp, 16
                                                                                        jmp   n12_scan_upto_β
.Lx90_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx90_240
                        add              rsp, 16
                                                                                        jmp   n12_scan_upto_β
.Lx90_240:
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
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n14_binop_α
n13_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n12_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 960]                     # b
                        mov              rcx, qword ptr [rbp + 968]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n16_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n17_scan_many_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_many_α:
                        mov              eax, r14d
.Lx95_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx95_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx95_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx95_1
                        add              eax, 1
                                                                                        jmp   .Lx95_0
.Lx95_1:
                        cmp              eax, r14d
                                                                                        je    n20_var_α
                        mov              qword ptr [rbp + 1152], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1160], rcx
                                                                                        jmp   n18_scan_tab_α
n17_scan_many_β:
                                                                                        jmp   n20_var_α
.Lx95_2:
                        .quad            .Lx95_2_s
.Lx95_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1160]
                        cmp              rax, 1
                                                                                        jge   .Lx97_0
                        add              rax, r15
                        add              rax, 1
.Lx97_0:
                        cmp              rax, 1
                                                                                        jge   .Lx97_239
                        add              rsp, 16
                                                                                        jmp   n20_var_α
.Lx97_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx97_240
                        add              rsp, 16
                                                                                        jmp   n20_var_α
.Lx97_240:
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
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n19_assign_α
n18_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 1328]                    # b
                        mov              rcx, qword ptr [rbp + 1336]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n24_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n10_var_α
n24_conjunction_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n53_disjunction_α
n25_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx00001_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n26_conjunction_α
.Lx00001_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00001_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n26_conjunction_α
.Lx00001_1:
                                                                                        jmp   n26_conjunction_α
n25_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n63_scan_α
                                                                                        jmp   n63_scan_α
n25_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n28_disjunction_α
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n27_scan_α
n26_conjunction_β:
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   proc_tabulate_γ
n27_scan_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n46_lit_string_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00002_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n29_var_ref_α
.Lx00002_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00002_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n29_var_ref_α
.Lx00002_1:
                                                                                        jmp   n29_var_ref_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n50_scan_upto_β
                                                                                        jmp   n29_var_ref_α
n28_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n44_lit_integer_α
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # uses
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n31_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]                     # base
                        mov              rsi, qword ptr [rbp + 456]                     # base
                        mov              rdx, qword ptr [rbp + 464]                     # idx
                        mov              rcx, qword ptr [rbp + 472]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n34_binop_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 576]                     # b
                        mov              rcx, qword ptr [rbp + 584]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n37_coerce_numeric_α
.Lx00004_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 5
                                                                                        je    .Lx00005_1
                        cmp              eax, 3
                                                                                        jne   .Lx00005_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 3
                                                                                        jne   .Lx00005_0
.Lx00005_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n38_binop_α
.Lx00005_0:
                        lea              rdi, [rbp + 1360]                              # self
                        lea              rsi, [rbp + 640]                               # other
                        lea              rdx, [rbp + 608]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 3
                                                                                        jne   .Lx00006_0
                        mov              rax, qword ptr [rbp + 616]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 592], 3
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n39_binop_α
.Lx00006_0:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n39_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        mov              rdi, qword ptr [rbp + 544]                     # a
                        mov              rsi, qword ptr [rbp + 552]                     # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n41_binop_α
.Lx00007_0:
                        .quad            .Lx00007_0_s
.Lx00007_0_s:
                        .string          "), "
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              rdi, qword ptr [rbp + 528]                     # a
                        mov              rsi, qword ptr [rbp + 536]                     # a
                        mov              rdx, qword ptr [rbp + 656]                     # b
                        mov              rcx, qword ptr [rbp + 664]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n42_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:
                        mov              rdi, qword ptr [rbp + 480]                     # var
                        mov              rsi, qword ptr [rbp + 488]                     # var
                        mov              rdx, qword ptr [rbp + 512]                     # val
                        mov              rcx, qword ptr [rbp + 520]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n43_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n25_disjunction_as
n43_conjunction_β:
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 896], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n45_assign_α
n44_lit_integer_β:
                                                                                        jmp   n29_var_ref_α
.Lx00008_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n28_disjunction_as
n45_assign_β:
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n47_scan_match_α
n46_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx00009_0:
                        .quad            .Lx00009_0_s
.Lx00009_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00010_239
                        add              rsp, 16
                                                                                        jmp   n28_disjunction_af
.Lx00010_239:
                        mov              rdi, qword ptr [rip + .Lx00010_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00010_240
                        add              rsp, 16
                                                                                        jmp   n28_disjunction_af
.Lx00010_240:
                        mov              qword ptr [rbp + 832], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n48_scan_tab_α
.Lx00010_0:
                        .quad            .Lx00010_0_s
.Lx00010_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 840]
                        cmp              rax, 1
                                                                                        jge   .Lx00011_0
                        add              rax, r15
                        add              rax, 1
.Lx00011_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00011_239
                        add              rsp, 16
                                                                                        jmp   n28_disjunction_af
.Lx00011_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00011_240
                        add              rsp, 16
                                                                                        jmp   n28_disjunction_af
.Lx00011_240:
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n49_lit_charset_α
n48_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_charset_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n50_scan_upto_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n50_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00013_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n29_var_ref_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00013_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00013_1
                        mov              qword ptr [rbp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n51_scan_tab_α
.Lx00013_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00013_0
n50_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00013_0
.Lx00013_2:
                        .quad            .Lx00013_2_s
.Lx00013_2_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 760]
                        cmp              rax, 1
                                                                                        jge   .Lx00014_0
                        add              rax, r15
                        add              rax, 1
.Lx00014_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00014_239
                        add              rsp, 16
                                                                                        jmp   n50_scan_upto_β
.Lx00014_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00014_240
                        add              rsp, 16
                                                                                        jmp   n50_scan_upto_β
.Lx00014_240:
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n52_assign_α
n51_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n50_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n28_disjunction_as
n52_assign_β:
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n67_var_α
n53_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx00015_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n54_var_ref_α
.Lx00015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00015_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n54_var_ref_α
.Lx00015_1:
                                                                                        jmp   n54_var_ref_α
n53_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n53_disjunction_af
                                                                                        jmp   n53_disjunction_af
n53_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n64_var_α
                                                                                        jmp   n25_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # uses
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n56_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]                     # base
                        mov              rsi, qword ptr [rbp + 184]                     # base
                        mov              rdx, qword ptr [rbp + 192]                     # idx
                        mov              rcx, qword ptr [rbp + 200]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n57_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n60_binop_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # a
                        mov              rsi, qword ptr [rbp + 40]                      # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 272]                     # b
                        mov              rcx, qword ptr [rbp + 280]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n62_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n63_scan_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n25_disjunction_as
n62_assign_var_β:
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   proc_tabulate_ω
n63_scan_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n65_var_α
n64_var_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n66_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # lhs
                        mov              rsi, qword ptr [rbp + 1336]                    # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n53_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]                      # d
                        mov              rsi, qword ptr [rbp + 40]                      # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n53_disjunction_as
n66_binop_test_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n68_unop_test_α
n67_var_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_test_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 104
                                                                                        je    n53_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n53_disjunction_af
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                                                                                        jmp   n53_disjunction_as
n68_unop_test_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              rbp, qword ptr [rbp + 1416]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_ω:
                        lea              rsp, [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1408]
                        mov              rbp, qword ptr [rbp + 1416]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_dcα:
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
                        lea              rcx, [rip + .Lx00017_2]
                        lea              rdx, [rip + .Lx00017_3]
                                                                                        jmp   proc_tabulate_α
.Lx00017_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00017_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_format_α
proc_format_α:
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
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_format_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00019_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00020_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:
                        mov              rax, qword ptr [1879052304]                    # colmax
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 224], rax                     # result
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00021_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00023_coerce_numeric_α
.Lx00022_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00023_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx00024_1
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
.Lx00024_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00025_binop_α
.Lx00024_0:
                        lea              rdi, [rbp + 224]                               # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00025_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx00026_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00027_binop_test_α
.Lx00026_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00028_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00027_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_binop_test_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 112
                                                                                        je    .Lx00029_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 112
                                                                                        je    .Lx00029_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx00029_2
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx00029_2
.Lx00029_1:
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx
                                                                                        jle   n00028_var_α
                        mov              rcx, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rcx
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rcx
                                                                                        jmp   n00030_var_α
.Lx00029_0:
                        mov              rdi, qword ptr [rbp + 160]                     # a
                        mov              rsi, qword ptr [rbp + 168]                     # a
                        mov              rdx, qword ptr [rbp + 192]                     # b
                        mov              rcx, qword ptr [rbp + 200]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 144]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00029_1
                        cmp              eax, 1
                                                                                        je    n00028_var_α
                                                                                        jmp   n00030_var_α
.Lx00029_2:
                        mov              rdi, qword ptr [rbp + 160]                     # lhs
                        mov              rsi, qword ptr [rbp + 168]                     # lhs
                        mov              rdx, qword ptr [rbp + 192]                     # rhs
                        mov              rcx, qword ptr [rbp + 200]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00028_var_α
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00030_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:
                        mov              rax, qword ptr [1879052304]                    # colmax
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 832], rax                     # result
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00031_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00033_coerce_numeric_α
.Lx00032_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00033_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 5
                                                                                        je    .Lx00034_1
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
.Lx00034_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00035_binop_α
.Lx00034_0:
                        lea              rdi, [rbp + 832]                               # self
                        lea              rsi, [rbp + 848]                               # other
                        lea              rdx, [rbp + 816]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00035_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_binop_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00036_0
                        mov              rax, qword ptr [rbp + 824]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00037_assign_α
.Lx00036_0:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00038_var_ref_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00037_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00038_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00040_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00041_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00042_coerce_numeric_α
.Lx00041_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00042_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 5
                                                                                        je    .Lx00043_1
                        cmp              eax, 3
                                                                                        jne   .Lx00043_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx00043_0
.Lx00043_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00044_binop_α
.Lx00043_0:
                        lea              rdi, [rbp + 864]                               # self
                        lea              rsi, [rbp + 720]                               # other
                        lea              rdx, [rbp + 688]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00044_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 3
                                                                                        jne   .Lx00045_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00046_assign_α
.Lx00045_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n00038_var_ref_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00046_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00047_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_subscript_α:
                        mov              rdi, qword ptr [rbp + 640]                     # base
                        mov              rsi, qword ptr [rbp + 648]                     # base
                        mov              rdx, qword ptr [rbp + 656]                     # idx
                        mov              rcx, qword ptr [rbp + 664]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00038_var_ref_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00048_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:
                        mov              rdi, qword ptr [rbp + 736]                     # d
                        mov              rsi, qword ptr [rbp + 744]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00038_var_ref_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00049_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00051_binop_test_α
.Lx00050_0:
                        .quad            .Lx00050_0_s
.Lx00050_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_test_α:
                        mov              rdi, qword ptr [rbp + 752]                     # lhs
                        mov              rsi, qword ptr [rbp + 760]                     # lhs
                        mov              rdx, qword ptr [rbp + 768]                     # rhs
                        mov              rcx, qword ptr [rbp + 776]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00038_var_ref_α
                        mov              rdi, qword ptr [rbp + 768]                     # d
                        mov              rsi, qword ptr [rbp + 776]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00053_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00054_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00055_var_α
.Lx00054_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00056_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_subscript_α:
                        mov              rdi, qword ptr [rbp + 576]                     # arr
                        mov              rsi, qword ptr [rbp + 584]                     # arr
                        mov              rdx, qword ptr [rbp + 592]                     # i
                        mov              rcx, qword ptr [rbp + 600]                     # i
                        mov              r8, qword ptr [rbp + 608]                      # j
                        mov              r9, qword ptr [rbp + 616]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n00057_lit_string_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00058_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn251:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n00057_lit_string_α
                                                                                        jmp   n00057_lit_string_α
n00058_call_builtin_icon_β:
                                                                                        jmp   n00057_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Lx00059_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00060_var_α
.Lx00059_0:
                        .quad            .Lx00059_0_s
.Lx00059_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:
                        mov              rax, qword ptr [1879052320]                    # namewidth
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 384], rax                     # result
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00061_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn255:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n00018_var_α
                                                                                        jmp   n00062_var_α
n00061_call_builtin_icon_β:
                                                                                        jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00064_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00065_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00066_coerce_numeric_α
.Lx00065_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00066_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 5
                                                                                        je    .Lx00067_1
                        cmp              eax, 3
                                                                                        jne   .Lx00067_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx00067_0
.Lx00067_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00068_binop_α
.Lx00067_0:
                        lea              rdi, [rbp + 864]                               # self
                        lea              rsi, [rbp + 480]                               # other
                        lea              rdx, [rbp + 448]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00068_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx00069_0
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00070_lit_integer_α
.Lx00069_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00018_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00070_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00071_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00072_subscript_α
.Lx00071_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00072_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]                     # arr
                        mov              rsi, qword ptr [rbp + 424]                     # arr
                        mov              rdx, qword ptr [rbp + 432]                     # i
                        mov              rcx, qword ptr [rbp + 440]                     # i
                        mov              r8, qword ptr [rbp + 496]                      # j
                        mov              r9, qword ptr [rbp + 504]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n00018_var_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00073_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_binop_α:
                        mov              rdi, qword ptr [rbp + 304]                     # a
                        mov              rsi, qword ptr [rbp + 312]                     # a
                        mov              rdx, qword ptr [rbp + 400]                     # b
                        mov              rcx, qword ptr [rbp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00074_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00075_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_conjunction_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00018_var_α
n00075_conjunction_β:
                                                                                        jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00078_lit_integer_α
.Lx00077_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00079_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00080_subscript_α
.Lx00079_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n00080_subscript_α:
                        mov              rdi, qword ptr [rbp + 96]                      # arr
                        mov              rsi, qword ptr [rbp + 104]                     # arr
                        mov              rdx, qword ptr [rbp + 112]                     # i
                        mov              rcx, qword ptr [rbp + 120]                     # i
                        mov              r8, qword ptr [rbp + 128]                      # j
                        mov              r9, qword ptr [rbp + 136]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    proc_format_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00081_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn275:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_format_ω
                                                                                        jmp   proc_format_γ
n00081_call_builtin_icon_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_format_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_format_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_format_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_format_ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_format_dcα:
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
                        lea              rcx, [rip + .Lx00082_2]
                        lea              rdx, [rip + .Lx00082_3]
                                                                                        jmp   proc_format_α
.Lx00082_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00082_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_item_α
proc_item_α:
                        sub              rsp, 880
                        mov              qword ptr [rsp + 856], rcx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              rdi, qword ptr [rbp + 856]
                        mov              rsi, qword ptr [rbp + 864]
                        call             rt_gen_save_wires@PLT
                        mov              rdi, rbp
                        mov              esi, 768
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, qword ptr [rbp + 872]
                        call             rt_gen_save_caller_rbp@PLT
proc_item_α_body:
                        lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rbp + 768], rax
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn314:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_item_ω
                                                                                        jmp   n00085_assign_α
n00084_call_builtin_icon_β:
                                                                                        jmp   proc_item_ω
#-----------------------------------------------------------------------------------------------------------------------
n00085_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_α:
                        mov              rax, qword ptr [1879052336]                    # lineno
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 736], rax                     # result
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00087_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00089_coerce_numeric_α
.Lx00088_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00089_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 5
                                                                                        je    .Lx00090_1
                        cmp              eax, 3
                                                                                        jne   .Lx00090_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx00090_0
.Lx00090_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00091_binop_α
.Lx00090_0:
                        lea              rdi, [rbp + 736]                               # self
                        lea              rsi, [rbp + 752]                               # other
                        lea              rdx, [rbp + 720]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00091_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx00092_0
                        mov              rax, qword ptr [rbp + 728]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 704], 3
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00093_assign_α
.Lx00092_0:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00094_var_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00093_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052336], rax                    # lineno
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00094_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:
                        mov              rax, qword ptr [1879052336]                    # lineno
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00095_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00097_call_builtin_icon_α
.Lx00096_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn325:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n00098_var_α
                                                                                        jmp   n00099_lit_string_α
n00097_call_builtin_icon_β:
                                                                                        jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 2
                        mov              rax, qword ptr [rip + .Lx00100_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00101_var_α
.Lx00100_0:
                        .quad            .Lx00100_0_s
.Lx00100_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn330:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00098_var_α
                                                                                        jmp   n00098_var_α
n00102_call_builtin_icon_β:
                                                                                        jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00103_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn334:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00104_lit_integer_α
                                                                                        jmp   n00105_assign_α
n00103_call_builtin_icon_β:
                                                                                        jmp   n00104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00106_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00107_assign_α
.Lx00106_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00109_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 400]                     # lo
                        mov              rsi, qword ptr [rbp + 408]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00112_scan_upto_α
.Lx00111_0:
                        .quad            .Lx00111_0_s
.Lx00111_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00112_scan_upto_α:
                        mov              qword ptr [rbp + 176], r14
.Lx00113_0:
                        mov              rax, qword ptr [rbp + 176]
                        cmp              rax, r15
                                                                                        jge   n00114_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00113_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00113_1
                        mov              qword ptr [rbp + 160], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00115_scan_tab_α
.Lx00113_1:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00113_0
n00112_scan_upto_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00113_0
.Lx00113_2:
                        .quad            .Lx00113_2_s
.Lx00113_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 168]
                        cmp              rax, 1
                                                                                        jge   .Lx00116_0
                        add              rax, r15
                        add              rax, 1
.Lx00116_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00116_239
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
.Lx00116_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00116_240
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
.Lx00116_240:
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00117_lit_charset_α
n00115_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_charset_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], -1
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00119_scan_many_α
.Lx00118_0:
                        .quad            .Lx00118_0_s
.Lx00118_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00119_scan_many_α:
                        mov              eax, r14d
.Lx00120_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00120_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00120_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00120_1
                        add              eax, 1
                                                                                        jmp   .Lx00120_0
.Lx00120_1:
                        cmp              eax, r14d
                                                                                        je    n00121_disjunction_α
                        mov              qword ptr [rbp + 368], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00122_scan_tab_α
n00119_scan_many_β:
                                                                                        jmp   n00121_disjunction_α
.Lx00120_2:
                        .quad            .Lx00120_2_s
.Lx00120_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00122_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 376]
                        cmp              rax, 1
                                                                                        jge   .Lx00123_0
                        add              rax, r15
                        add              rax, 1
.Lx00123_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00123_239
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
.Lx00123_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00123_240
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
.Lx00123_240:
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
                                                                                        jmp   n00124_assign_α
n00122_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n00125_var_α
n00121_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx00126_0
                                                                                        jmp   n00127_conjunction_α
.Lx00126_0:
                                                                                        jmp   n00127_conjunction_α
n00121_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n00110_lit_charset_α
n00121_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00110_lit_charset_α
n00127_conjunction_β:
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00128_unop_α
n00125_var_β:
                                                                                        jmp   n00121_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_unop_α:
                        mov              rdi, qword ptr [rbp + 800]                     # lo
                        mov              rsi, qword ptr [rbp + 808]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00130_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00131_binop_test_α
.Lx00130_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 112
                                                                                        je    .Lx00132_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 112
                                                                                        je    .Lx00132_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx00132_2
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx00132_2
.Lx00132_1:
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jl    n00121_disjunction_af
                        mov              rcx, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n00133_var_α
.Lx00132_0:
                        mov              rdi, qword ptr [rbp + 288]                     # a
                        mov              rsi, qword ptr [rbp + 296]                     # a
                        mov              rdx, qword ptr [rbp + 320]                     # b
                        mov              rcx, qword ptr [rbp + 328]                     # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 272]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00132_1
                        cmp              eax, 1
                                                                                        je    n00121_disjunction_af
                                                                                        jmp   n00133_var_α
.Lx00132_2:
                        mov              rdi, qword ptr [rbp + 288]                     # lhs
                        mov              rsi, qword ptr [rbp + 296]                     # lhs
                        mov              rdx, qword ptr [rbp + 320]                     # rhs
                        mov              rcx, qword ptr [rbp + 328]                     # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00121_disjunction_af
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00083_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_suspend_α:
                        lea              rdi, [rip + n00083_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 8], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                                                                                        jmp   proc_item_γ
n00083_suspend_β:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                                                                                        jmp   n00121_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_α:
                        lea              rdi, [rbp + 80]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n00084_call_builtin_icon_α
n00114_scan_β:
                                                                                        jmp   n00084_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_item_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_item_β:
                                                                                        jmp   qword ptr [rbp + 768]
#-----------------------------------------------------------------------------------------------------------------------
proc_item_γ:
                        mov              r14, rbp
                        call             rt_gen_get_gamma_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                        mov              rdi, qword ptr [r14 + 0]
                        mov              rsi, qword ptr [r14 + 8]
                        mov              rax, r14
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
proc_item_ω:
                        call             rt_gen_get_omega_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                                                                                        jmp   r15
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
n00134_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00135_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 104
                                                                                        je    n00136_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]                    # d
                        mov              rsi, qword ptr [rbp + 2504]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00136_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00136_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00137_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00138_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00139_call_builtin_icon_α
.Lx00138_0:
                        .quad            .Lx00138_0_s
.Lx00138_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn478:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]                         # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00136_call_builtin_icon_α
                                                                                        jmp   n00140_assign_var_α
n00139_call_builtin_icon_β:
                                                                                        jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # var
                        mov              rsi, qword ptr [rbp + 2520]                    # var
                        mov              rdx, qword ptr [rbp + 2544]                    # val
                        mov              rcx, qword ptr [rbp + 2552]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00136_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn481:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]                         # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n00141_make_list_α
                                                                                        jmp   n00142_assign_α
n00136_call_builtin_icon_β:
                                                                                        jmp   n00141_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00141_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn489:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn489]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00146_var_α
                                                                                        jmp   n00147_assign_α
n00145_call_builtin_icon_β:
                                                                                        jmp   n00146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00149_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # lo
                        mov              rsi, qword ptr [rbp + 2440]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00150_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00151_lit_string_α
n00150_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00152_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00153_scan_α
.Lx00152_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00152_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00153_scan_α
.Lx00152_1:
                                                                                        jmp   n00153_scan_α
n00150_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00154_disjunction_β
                                                                                        jmp   n00155_scan_α
n00150_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00156_var_α
                                                                                        jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00144_var_α
n00153_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00150_disjunction_β
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_conjunction_α:
                                                                                        jmp   n00150_disjunction_as
n00157_conjunction_β:
                                                                                        jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00158_var_α
n00156_var_β:
                                                                                        jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn505:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]                         # fn
                        lea              rsi, [rbp + 2352]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n00155_scan_α
                                                                                        jmp   n00150_disjunction_as
n00159_call_builtin_icon_β:
                                                                                        jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00160_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00161_scan_match_α
n00151_lit_string_β:
                                                                                        jmp   n00150_disjunction_af
.Lx00160_0:
                        .quad            .Lx00160_0_s
.Lx00160_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00162_239
                        add              rsp, 16
                                                                                        jmp   n00150_disjunction_af
.Lx00162_239:
                        mov              rdi, qword ptr [rip + .Lx00162_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00162_240
                        add              rsp, 16
                                                                                        jmp   n00150_disjunction_af
.Lx00162_240:
                        mov              qword ptr [rbp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00163_scan_tab_α
.Lx00162_0:
                        .quad            .Lx00162_0_s
.Lx00162_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00164_0
                        add              rax, r15
                        add              rax, 1
.Lx00164_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00164_239
                        add              rsp, 16
                                                                                        jmp   n00150_disjunction_af
.Lx00164_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00164_240
                        add              rsp, 16
                                                                                        jmp   n00150_disjunction_af
.Lx00164_240:
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
                                                                                        jmp   n00165_lit_integer_α
n00163_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00166_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00167_scan_pos_α
.Lx00166_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00167_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00168_0
                        add              rax, r15
                        add              rax, 1
.Lx00168_0:
                        cmp              rax, 1
                                                                                        jl    n00169_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00169_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00169_var_α
                        mov              qword ptr [rbp + 2224], 3
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00163_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00170_conjunction_α
n00169_var_β:
                                                                                        jmp   n00163_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00170_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00171_disjunction_α
n00170_conjunction_β:
                                                                                        jmp   n00150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00171_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00172_lit_string_α
n00171_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00173_0
                                                                                        jmp   n00174_lit_integer_α
.Lx00173_0:
                                                                                        jmp   n00174_lit_integer_α
n00171_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00174_lit_integer_α
n00171_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00176_scan_move_α
.Lx00175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00176_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00177_239
                        add              rsp, 16
                                                                                        jmp   n00155_scan_α
.Lx00177_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00177_240
                        add              rsp, 16
                                                                                        jmp   n00155_scan_α
.Lx00177_240:
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
                                                                                        jmp   n00178_assign_α
n00176_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00179_var_α
n00154_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00180_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00174_lit_integer_α
.Lx00180_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00180_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00174_lit_integer_α
.Lx00180_1:
                                                                                        jmp   n00174_lit_integer_α
n00154_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00181_disjunction_β
                                                                                        jmp   n00174_lit_integer_α
n00154_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00182_lit_string_α
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00183_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00184_var_α
n00182_lit_string_β:
                                                                                        jmp   n00174_lit_integer_α
.Lx00183_0:
                        .quad            .Lx00183_0_s
.Lx00183_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00185_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn528:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]                         # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n00174_lit_integer_α
                                                                                        jmp   n00154_disjunction_as
n00185_call_builtin_icon_β:
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00186_var_α
n00179_var_β:
                                                                                        jmp   n00154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00187_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00187_call_builtin_gen_α:
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
.Lx00188_60:
                        .section         .rodata
.Lbynamegenfn188:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn188]                  # fn
                        lea              rsi, [rbp + 1840]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1872]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                                                                                        jmp   n00189_lit_integer_α
n00187_call_builtin_gen_β:
                                                                                        jmp   .Lx00188_60
#-----------------------------------------------------------------------------------------------------------------------
n00189_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00191_coerce_numeric_α
.Lx00190_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00191_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 5
                                                                                        je    .Lx00192_1
                        cmp              eax, 3
                                                                                        jne   .Lx00192_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx00192_0
.Lx00192_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00193_binop_α
.Lx00192_0:
                        lea              rdi, [rbp + 1824]                              # self
                        lea              rsi, [rbp + 1920]                              # other
                        lea              rdx, [rbp + 1808]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00193_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00194_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00195_assign_α
.Lx00194_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00195_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00198_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00174_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00181_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00199_lit_charset_α
n00181_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00200_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00201_assign_var_α
.Lx00200_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00200_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00201_assign_var_α
.Lx00200_1:
                                                                                        jmp   n00201_assign_var_α
n00181_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00174_lit_integer_α
                                                                                        jmp   n00174_lit_integer_α
n00181_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00202_lit_integer_α
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]                     # var
                        mov              rsi, qword ptr [rbp + 536]                     # var
                        mov              rdx, qword ptr [rbp + 560]                     # val
                        mov              rcx, qword ptr [rbp + 568]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00174_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00154_disjunction_as
n00201_assign_var_β:
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00203_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00181_disjunction_as
n00202_lit_integer_β:
                                                                                        jmp   n00174_lit_integer_α
.Lx00203_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00204_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00205_var_ref_α
n00199_lit_charset_β:
                                                                                        jmp   n00181_disjunction_af
.Lx00204_0:
                        .quad            .Lx00204_0_s
.Lx00204_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00206_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00206_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00207_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00181_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00208_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00208_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00181_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00209_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00210_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_builtin_icon_α:
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
.Lbynamefn205:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn205]                     # fn
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
                                                                                        je    n00181_disjunction_af
                                                                                        jmp   n00211_disjunction_α
n00210_call_builtin_icon_β:
                                                                                        jmp   n00181_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00211_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00212_lit_string_α
n00211_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00213_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00214_assign_α
.Lx00213_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00213_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00214_assign_α
.Lx00213_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00213_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00214_assign_α
.Lx00213_2:
                                                                                        jmp   n00214_assign_α
n00211_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00211_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00211_disjunction_af
                                                                                        jmp   n00211_disjunction_af
n00211_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00215_var_α
                        cmp              eax, 2
                                                                                        je    n00216_lit_string_α
                                                                                        jmp   n00217_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00217_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00220_call_builtin_α
.Lx00219_0:
                        .quad            .Lx00219_0_s
.Lx00219_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00220_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn564:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00221_lit_string_α
                                                                                        jmp   n00222_var_α
n00220_call_builtin_β:
                                                                                        jmp   n00221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00225_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00226_call_builtin_α
.Lx00225_0:
                        .quad            .Lx00225_0_s
.Lx00225_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn570:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00227_lit_string_α
                                                                                        jmp   n00228_disjunction_α
n00226_call_builtin_β:
                                                                                        jmp   n00227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00229_var_α
n00228_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00230_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00231_assign_α
.Lx00230_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00230_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00231_assign_α
.Lx00230_1:
                                                                                        jmp   n00231_assign_α
n00228_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00228_disjunction_af
                                                                                        jmp   n00228_disjunction_af
n00228_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00232_lit_string_α
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00233_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00234_var_α
n00232_lit_string_β:
                                                                                        jmp   n00228_disjunction_af
.Lx00233_0:
                        .quad            .Lx00233_0_s
.Lx00233_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00234_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00236_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00237_call_builtin_icon_α
.Lx00236_0:
                        .quad            .Lx00236_0_s
.Lx00236_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_builtin_icon_α:
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
.Lrkfn579:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00228_disjunction_af
                                                                                        jmp   n00228_disjunction_as
n00237_call_builtin_icon_β:
                                                                                        jmp   n00228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00238_call_builtin_icon_α
n00229_var_β:
                                                                                        jmp   n00228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn583:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn583]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00228_disjunction_af
                                                                                        jmp   n00228_disjunction_as
n00238_call_builtin_icon_β:
                                                                                        jmp   n00228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00227_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00239_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00240_call_builtin_α
.Lx00239_0:
                        .quad            .Lx00239_0_s
.Lx00239_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn586:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n00174_lit_integer_α
                                                                                        jmp   n00241_disjunction_α
n00240_call_builtin_β:
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00241_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00242_var_α
n00241_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00243_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00244_assign_α
.Lx00243_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00243_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00244_assign_α
.Lx00243_1:
                                                                                        jmp   n00244_assign_α
n00241_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00241_disjunction_af
                                                                                        jmp   n00241_disjunction_af
n00241_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00245_lit_string_α
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00246_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_conjunction_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00181_disjunction_as
n00246_conjunction_β:
                                                                                        jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00247_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00248_var_α
n00245_lit_string_β:
                                                                                        jmp   n00241_disjunction_af
.Lx00247_0:
                        .quad            .Lx00247_0_s
.Lx00247_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00250_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00251_call_builtin_icon_α
.Lx00250_0:
                        .quad            .Lx00250_0_s
.Lx00250_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_icon_α:
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
.Lrkfn598:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00241_disjunction_af
                                                                                        jmp   n00241_disjunction_as
n00251_call_builtin_icon_β:
                                                                                        jmp   n00241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00252_call_builtin_icon_α
n00242_var_β:
                                                                                        jmp   n00241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00252_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn602:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn602]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00241_disjunction_af
                                                                                        jmp   n00241_disjunction_as
n00252_call_builtin_icon_β:
                                                                                        jmp   n00241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00253_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00254_var_α
n00216_lit_string_β:
                                                                                        jmp   n00211_disjunction_af
.Lx00253_0:
                        .quad            .Lx00253_0_s
.Lx00253_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00255_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn607:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]                         # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00211_disjunction_af
                                                                                        jmp   n00211_disjunction_as
n00255_call_builtin_icon_β:
                                                                                        jmp   n00211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00256_call_builtin_icon_α
n00215_var_β:
                                                                                        jmp   n00211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn611:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn611]                         # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00211_disjunction_af
                                                                                        jmp   n00211_disjunction_as
n00256_call_builtin_icon_β:
                                                                                        jmp   n00211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00257_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00258_lit_integer_α
n00212_lit_string_β:
                                                                                        jmp   n00211_disjunction_af
.Lx00257_0:
                        .quad            .Lx00257_0_s
.Lx00257_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00258_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00260_scan_tab_α
.Lx00259_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00260_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00261_0
                        add              rax, r15
                        add              rax, 1
.Lx00261_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00261_239
                        add              rsp, 16
                                                                                        jmp   n00211_disjunction_af
.Lx00261_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00261_240
                        add              rsp, 16
                                                                                        jmp   n00211_disjunction_af
.Lx00261_240:
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
                                                                                        jmp   n00262_binop_test_α
n00260_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00262_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lhs
                        mov              rsi, qword ptr [rbp + 1400]                    # lhs
                        mov              rdx, qword ptr [rbp + 1408]                    # rhs
                        mov              rcx, qword ptr [rbp + 1416]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00211_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]                    # d
                        mov              rsi, qword ptr [rbp + 1416]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00211_disjunction_as
n00262_binop_test_β:
                                                                                        jmp   n00211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00144_var_α
n00155_scan_β:
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00263_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00264_scan_match_α
n00172_lit_string_β:
                                                                                        jmp   n00171_disjunction_af
.Lx00263_0:
                        .quad            .Lx00263_0_s
.Lx00263_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00264_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00265_239
                        add              rsp, 16
                                                                                        jmp   n00171_disjunction_af
.Lx00265_239:
                        mov              rdi, qword ptr [rip + .Lx00265_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00265_240
                        add              rsp, 16
                                                                                        jmp   n00171_disjunction_af
.Lx00265_240:
                        mov              qword ptr [rbp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00266_scan_tab_α
.Lx00265_0:
                        .quad            .Lx00265_0_s
.Lx00265_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00266_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00267_0
                        add              rax, r15
                        add              rax, 1
.Lx00267_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00267_239
                        add              rsp, 16
                                                                                        jmp   n00171_disjunction_af
.Lx00267_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00267_240
                        add              rsp, 16
                                                                                        jmp   n00171_disjunction_af
.Lx00267_240:
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
                                                                                        jmp   n00268_lit_integer_α
n00266_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00171_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00268_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00269_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00270_scan_pos_α
.Lx00269_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00270_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00271_0
                        add              rax, r15
                        add              rax, 1
.Lx00271_0:
                        cmp              rax, 1
                                                                                        jl    n00266_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00266_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00266_scan_tab_β
                        mov              qword ptr [rbp + 2080], 3
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00272_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00146_var_α
n00272_conjunction_β:
                                                                                        jmp   n00171_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00274_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn633:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn633]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00275_var_α
                                                                                        jmp   n00276_call_builtin_icon_α
n00274_call_builtin_icon_β:
                                                                                        jmp   n00275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00276_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn635:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00275_var_α
                                                                                        jmp   n00146_var_α
n00276_call_builtin_icon_β:
                                                                                        jmp   n00275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00277_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00277_return_α:
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
                        lea              rcx, [rip + .Lx00278_2]
                        lea              rdx, [rip + .Lx00278_3]
                                                                                        jmp   proc_options_α
.Lx00278_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00278_3:
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
n00279_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00280_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00280_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052384], rax                    # Name__
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00281_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00282_2
.Lx00282_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n00283_call_proc_staged_α
                                                                                        jmp   n00283_call_proc_staged_α
n00281_call_proc_staged_β:
                                                                                        jmp   n00283_call_proc_staged_α
.Lx00282_0:
                        .quad            .Lx00282_0_s
.Lx00282_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00283_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00284_2
.Lx00284_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n00285_call_proc_staged_α
                                                                                        jmp   n00285_call_proc_staged_α
n00283_call_proc_staged_β:
                                                                                        jmp   n00285_call_proc_staged_α
.Lx00284_0:
                        .quad            .Lx00284_0_s
.Lx00284_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00286_2
.Lx00286_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00287_disjunction_α
                                                                                        jmp   n00287_disjunction_α
n00285_call_proc_staged_β:
                                                                                        jmp   n00287_disjunction_α
.Lx00286_0:
                        .quad            .Lx00286_0_s
.Lx00286_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00287_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00288_lit_string_α
n00287_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00289_0
                                                                                        jmp   n00290_var_α
.Lx00289_0:
                                                                                        jmp   n00290_var_α
n00287_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00290_var_α
n00287_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_α:
                        mov              rdi, qword ptr [rip + .Lx00291_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00292_var_α
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00293_assign_α
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052352], rax                    # Save__
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_var_α:
                        mov              rdi, qword ptr [rip + .Lx00294_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00295_lit_integer_α
                        mov              qword ptr [rbp + 80], rax                      # result
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00296_assign_α
.Lx00294_0:
                        .quad            .Lx00294_0_s
.Lx00294_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052368], rax                    # Saves__
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00298_assign_α
.Lx00297_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00298_assign_α:
                        mov              rsi, qword ptr [rbp + 64]                      # val
                        mov              rdx, qword ptr [rbp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx00299_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00300_assign_α
.Lx00299_0:
                        .quad            .Lx00299_0_s
.Lx00299_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00300_assign_α:
                        mov              rsi, qword ptr [rbp + 48]                      # val
                        mov              rdx, qword ptr [rbp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx00301_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00302_return_α
.Lx00301_0:
                        .quad            .Lx00301_0_s
.Lx00301_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00302_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00303_conjunction_α:
                                                                                        jmp   n00287_disjunction_as
n00303_conjunction_β:
                                                                                        jmp   n00290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00304_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00305_call_builtin_icon_α
n00288_lit_string_β:
                                                                                        jmp   n00287_disjunction_af
.Lx00304_0:
                        .quad            .Lx00304_0_s
.Lx00304_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00305_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn682:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00287_disjunction_af
                                                                                        jmp   n00306_lit_string_α
n00305_call_builtin_icon_β:
                                                                                        jmp   n00287_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00306_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00307_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00308_call_builtin_icon_α
.Lx00307_0:
                        .quad            .Lx00307_0_s
.Lx00307_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00308_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn685:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00309_return_α
                                                                                        jmp   n00309_return_α
n00308_call_builtin_icon_β:
                                                                                        jmp   n00309_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00309_return_α:
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
                        lea              rcx, [rip + .Lx00310_2]
                        lea              rdx, [rip + .Lx00310_3]
                                                                                        jmp   proc_Init___α
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
n00311_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00312_lit_string_α
n00311_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00313_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00314_var_α
.Lx00313_0:
                                                                                        jmp   n00314_var_α
n00311_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00314_var_α
n00311_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00315_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00316_call_builtin_icon_α
n00312_lit_string_β:
                                                                                        jmp   n00317_var_α
.Lx00315_0:
                        .quad            .Lx00315_0_s
.Lx00315_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn709:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn709]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n00317_var_α
                                                                                        jmp   n00311_disjunction_af
n00316_call_builtin_icon_β:
                                                                                        jmp   n00317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00318_var_α
n00317_var_β:
                                                                                        jmp   n00311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:
                        mov              rax, qword ptr [1879052352]                    # Save__
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00319_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:
                        mov              rsi, qword ptr [rbp + 352]                     # val
                        mov              rdx, qword ptr [rbp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx00320_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00321_var_α
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00321_var_α:
                        mov              rax, qword ptr [1879052368]                    # Saves__
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00322_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_α:
                        mov              rsi, qword ptr [rbp + 320]                     # val
                        mov              rdx, qword ptr [rbp + 328]                     # val
                        mov              rdi, qword ptr [rip + .Lx00323_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00324_conjunction_α
.Lx00323_0:
                        .quad            .Lx00323_0_s
.Lx00323_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00324_conjunction_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00311_disjunction_as
n00324_conjunction_β:
                                                                                        jmp   n00314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_var_α:
                        mov              rax, qword ptr [1879052384]                    # Name__
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00326_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00327_call_proc_staged_α
.Lx00326_0:
                        .quad            .Lx00326_0_s
.Lx00326_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00327_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00328_2
.Lx00328_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00329_call_proc_staged_α
                                                                                        jmp   n00330_call_builtin_icon_α
n00327_call_proc_staged_β:
                                                                                        jmp   n00329_call_proc_staged_α
.Lx00328_0:
                        .quad            .Lx00328_0_s
.Lx00328_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00330_call_builtin_icon_α:
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
.Lrkfn721:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00329_call_proc_staged_α
                                                                                        jmp   n00329_call_proc_staged_α
n00330_call_builtin_icon_β:
                                                                                        jmp   n00329_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00329_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00331_2
.Lx00331_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00332_call_proc_staged_α
                                                                                        jmp   n00332_call_proc_staged_α
n00329_call_proc_staged_β:
                                                                                        jmp   n00332_call_proc_staged_α
.Lx00331_0:
                        .quad            .Lx00331_0_s
.Lx00331_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00333_2
.Lx00333_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00334_call_proc_staged_α
                                                                                        jmp   n00334_call_proc_staged_α
n00332_call_proc_staged_β:
                                                                                        jmp   n00334_call_proc_staged_α
.Lx00333_0:
                        .quad            .Lx00333_0_s
.Lx00333_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00334_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00335_2
.Lx00335_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00336_return_α
                                                                                        jmp   n00336_return_α
n00334_call_proc_staged_β:
                                                                                        jmp   n00336_return_α
.Lx00335_0:
                        .quad            .Lx00335_0_s
.Lx00335_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00336_return_α:
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
                        lea              rcx, [rip + .Lx00337_2]
                        lea              rdx, [rip + .Lx00337_3]
                                                                                        jmp   proc_Term___α
.Lx00337_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00337_3:
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
n00338_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00339_var_ref_α
n00338_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00340_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00341_make_list_α
.Lx00340_0:
                                                                                        jmp   n00341_make_list_α
n00338_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00341_make_list_α
n00338_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00341_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00343_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00344_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00344_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00345_1:
                        mov              rdi, qword ptr [rip + .Lx00345_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00346_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00347_call_builtin_icon_α
n00344_keyword_icon_gen_β:
                                                                                        jmp   .Lx00345_1
.Lx00345_0:
                        .quad            .Lx00345_0_s
.Lx00345_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00347_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn776:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00344_keyword_icon_gen_β
                                                                                        jmp   n00344_keyword_icon_gen_β
n00347_call_builtin_icon_β:
                                                                                        jmp   n00344_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00348_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00349_call_builtin_icon_α
.Lx00348_0:
                        .quad            .Lx00348_0_s
.Lx00348_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00349_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00350_lit_integer_α
                                                                                        jmp   n00350_lit_integer_α
n00349_call_builtin_icon_β:
                                                                                        jmp   n00350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00351_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00352_var_α
.Lx00351_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00352_var_α:
                        mov              rax, qword ptr [1879052400]                    # Collections____STATIC__labels
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00353_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00354_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00354_to_α:
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
.Lx00355_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00356_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00357_assign_α
n00354_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00355_0
#-----------------------------------------------------------------------------------------------------------------------
n00357_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00358_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                                # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00361_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00361_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00363_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00366_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00367_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00369_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00370_call_builtin_icon_α
.Lx00369_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00370_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn802:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn802]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                                                                                        jmp   n00371_call_builtin_icon_α
n00370_call_builtin_icon_β:
                                                                                        jmp   n00362_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn804:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn804]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00362_unmark_α
                                                                                        jmp   n00362_unmark_α
n00371_call_builtin_icon_β:
                                                                                        jmp   n00362_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00354_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00356_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00339_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                                # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00372_nulltest_var_α
n00339_var_ref_β:
                                                                                        jmp   n00338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00372_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 104
                                                                                        je    n00338_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00338_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00338_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00374_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00375_assign_var_α
.Lx00374_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00375_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]                     # var
                        mov              rsi, qword ptr [rbp + 840]                     # var
                        mov              rdx, qword ptr [rbp + 864]                     # val
                        mov              rcx, qword ptr [rbp + 872]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00338_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00377_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00378_lit_string_α
.Lx00377_0:
                        .quad            .Lx00377_0_s
.Lx00377_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00378_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00379_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00380_lit_string_α
.Lx00379_0:
                        .quad            .Lx00379_0_s
.Lx00379_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00380_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00381_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00382_lit_string_α
.Lx00381_0:
                        .quad            .Lx00381_0_s
.Lx00381_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00384_make_list_α
.Lx00383_0:
                        .quad            .Lx00383_0_s
.Lx00383_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00384_make_list_α:
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
                                                                                        jmp   n00385_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052400], rax                    # Collections____STATIC__labels
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00338_disjunction_as
n00385_assign_β:
                                                                                        jmp   n00341_make_list_α
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
                        lea              rcx, [rip + .Lx00386_2]
                        lea              rdx, [rip + .Lx00386_3]
                                                                                        jmp   proc_Collections___α
.Lx00386_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00386_3:
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
n00387_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00388_var_ref_α
n00387_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00389_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00390_make_list_α
.Lx00389_0:
                                                                                        jmp   n00390_make_list_α
n00387_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00390_make_list_α
n00387_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00390_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00391_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00393_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00394_1:
                        mov              rdi, qword ptr [rip + .Lx00394_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00395_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00396_call_builtin_icon_α
n00393_keyword_icon_gen_β:
                                                                                        jmp   .Lx00394_1
.Lx00394_0:
                        .quad            .Lx00394_0_s
.Lx00394_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00396_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn866:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn866]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00393_keyword_icon_gen_β
                                                                                        jmp   n00393_keyword_icon_gen_β
n00396_call_builtin_icon_β:
                                                                                        jmp   n00393_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00397_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00398_call_builtin_icon_α
.Lx00397_0:
                        .quad            .Lx00397_0_s
.Lx00397_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00398_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00399_lit_integer_α
                                                                                        jmp   n00399_lit_integer_α
n00398_call_builtin_icon_β:
                                                                                        jmp   n00399_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00400_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00401_var_α
.Lx00400_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00401_var_α:
                        mov              rax, qword ptr [1879052432]                    # Regions____STATIC__labels
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00402_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00402_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00403_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_to_α:
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
.Lx00404_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00405_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00406_assign_α
n00403_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00404_0
#-----------------------------------------------------------------------------------------------------------------------
n00406_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00407_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00408_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                                # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00410_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00412_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00412_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00413_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00413_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00414_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00415_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00416_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00417_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00418_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00419_call_builtin_icon_α
.Lx00418_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00419_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn892:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn892]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                                                                                        jmp   n00420_call_builtin_icon_α
n00419_call_builtin_icon_β:
                                                                                        jmp   n00411_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00420_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00411_unmark_α
                                                                                        jmp   n00411_unmark_α
n00420_call_builtin_icon_β:
                                                                                        jmp   n00411_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00403_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00405_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                                # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00421_nulltest_var_α
n00388_var_ref_β:
                                                                                        jmp   n00387_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00421_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00387_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00387_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00387_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00422_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00423_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00424_assign_var_α
.Lx00423_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00424_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00387_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00426_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00427_lit_string_α
.Lx00426_0:
                        .quad            .Lx00426_0_s
.Lx00426_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00427_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00428_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00429_lit_string_α
.Lx00428_0:
                        .quad            .Lx00428_0_s
.Lx00428_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00429_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00430_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00431_make_list_α
.Lx00430_0:
                        .quad            .Lx00430_0_s
.Lx00430_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00431_make_list_α:
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
                                                                                        jmp   n00432_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052432], rax                    # Regions____STATIC__labels
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00387_disjunction_as
n00432_assign_β:
                                                                                        jmp   n00390_make_list_α
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
                        lea              rcx, [rip + .Lx00433_2]
                        lea              rdx, [rip + .Lx00433_3]
                                                                                        jmp   proc_Regions___α
.Lx00433_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00433_3:
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
n00434_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00435_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00436_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00437_call_builtin_icon_α
n00434_keyword_icon_β:
                                                                                        jmp   n00436_keyword_icon_α
.Lx00435_0:
                        .quad            .Lx00435_0_s
.Lx00435_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00437_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn919:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn919]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00436_keyword_icon_α
                                                                                        jmp   n00436_keyword_icon_α
n00437_call_builtin_icon_β:
                                                                                        jmp   n00436_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00438_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00439_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00440_call_builtin_icon_α
n00436_keyword_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_α
.Lx00438_0:
                        .quad            .Lx00438_0_s
.Lx00438_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00440_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn922:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn922]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n00439_keyword_icon_gen_α
                                                                                        jmp   n00439_keyword_icon_gen_α
n00440_call_builtin_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00441_1:
                        mov              rdi, qword ptr [rip + .Lx00441_0]                # sval
                        mov              rsi, qword ptr [rbp + 80]                      # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00442_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00443_call_builtin_icon_α
n00439_keyword_icon_gen_β:
                                                                                        jmp   .Lx00441_1
.Lx00441_0:
                        .quad            .Lx00441_0_s
.Lx00441_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00443_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn925:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn925]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00439_keyword_icon_gen_β
                                                                                        jmp   n00439_keyword_icon_gen_β
n00443_call_builtin_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00442_return_α:
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
                        lea              rcx, [rip + .Lx00444_2]
                        lea              rdx, [rip + .Lx00444_3]
                                                                                        jmp   proc_Signature___α
.Lx00444_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00444_3:
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
n00445_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00446_var_ref_α
n00445_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00447_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00448_make_list_α
.Lx00447_0:
                                                                                        jmp   n00448_make_list_α
n00445_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00448_make_list_α
n00445_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00448_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00449_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00449_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00451_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00452_1:
                        mov              rdi, qword ptr [rip + .Lx00452_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00453_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00454_call_builtin_icon_α
n00451_keyword_icon_gen_β:
                                                                                        jmp   .Lx00452_1
.Lx00452_0:
                        .quad            .Lx00452_0_s
.Lx00452_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00454_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn973:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn973]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00451_keyword_icon_gen_β
                                                                                        jmp   n00451_keyword_icon_gen_β
n00454_call_builtin_icon_β:
                                                                                        jmp   n00451_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00453_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00455_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00456_call_builtin_icon_α
.Lx00455_0:
                        .quad            .Lx00455_0_s
.Lx00455_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00456_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn976:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00457_lit_integer_α
                                                                                        jmp   n00457_lit_integer_α
n00456_call_builtin_icon_β:
                                                                                        jmp   n00457_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00457_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00458_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00459_var_α
.Lx00458_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00459_var_α:
                        mov              rax, qword ptr [1879052464]                    # Storage____STATIC__labels
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00460_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00461_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00461_to_α:
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
.Lx00462_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00463_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00464_assign_α
n00461_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00462_0
#-----------------------------------------------------------------------------------------------------------------------
n00464_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00465_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00466_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052464                                # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00468_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00470_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00471_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00473_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00474_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00475_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00475_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00476_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00477_call_builtin_icon_α
.Lx00476_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00477_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn999:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                                                                                        jmp   n00478_call_builtin_icon_α
n00477_call_builtin_icon_β:
                                                                                        jmp   n00469_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1001:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1001]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00469_unmark_α
                                                                                        jmp   n00469_unmark_α
n00478_call_builtin_icon_β:
                                                                                        jmp   n00469_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00461_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00463_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00446_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                                # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00479_nulltest_var_α
n00446_var_ref_β:
                                                                                        jmp   n00445_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00479_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00445_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00445_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00445_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00480_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00481_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00482_assign_var_α
.Lx00481_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00482_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00445_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00483_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00484_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00485_lit_string_α
.Lx00484_0:
                        .quad            .Lx00484_0_s
.Lx00484_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00485_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00486_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00487_lit_string_α
.Lx00486_0:
                        .quad            .Lx00486_0_s
.Lx00486_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00487_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00488_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00489_make_list_α
.Lx00488_0:
                        .quad            .Lx00488_0_s
.Lx00488_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00489_make_list_α:
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
                                                                                        jmp   n00490_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052464], rax                    # Storage____STATIC__labels
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00445_disjunction_as
n00490_assign_β:
                                                                                        jmp   n00448_make_list_α
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
                        lea              rcx, [rip + .Lx00491_2]
                        lea              rdx, [rip + .Lx00491_3]
                                                                                        jmp   proc_Storage___α
.Lx00491_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00491_3:
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
n00492_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00493_var_ref_α
n00492_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00494_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00495_keyword_icon_α
.Lx00494_0:
                                                                                        jmp   n00495_keyword_icon_α
n00492_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00495_keyword_icon_α
n00492_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00495_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00496_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00497_var_α
n00495_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00496_0:
                        .quad            .Lx00496_0_s
.Lx00496_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00497_var_α:
                        mov              rax, qword ptr [1879052496]                    # Time____STATIC__lasttime
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00498_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx00499_1
                        cmp              eax, 3
                                                                                        jne   .Lx00499_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00499_0
.Lx00499_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00500_coerce_numeric_α
.Lx00499_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00500_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx00501_1
                        cmp              eax, 3
                                                                                        jne   .Lx00501_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00501_0
.Lx00501_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00502_binop_α
.Lx00501_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 64]                                # other
                        lea              rdx, [rbp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00502_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00503_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00503_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00504_return_α
.Lx00503_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00504_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00504_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                                # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00505_nulltest_var_α
n00493_var_ref_β:
                                                                                        jmp   n00492_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00505_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n00492_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00492_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00492_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00506_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00507_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00508_assign_var_α
.Lx00507_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00508_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00492_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00509_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00510_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00495_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00511_assign_α
n00509_keyword_icon_β:
                                                                                        jmp   n00495_keyword_icon_α
.Lx00510_0:
                        .quad            .Lx00510_0_s
.Lx00510_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00511_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052496], rax                    # Time____STATIC__lasttime
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00492_disjunction_as
n00511_assign_β:
                                                                                        jmp   n00495_keyword_icon_α
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
                        lea              rcx, [rip + .Lx00512_2]
                        lea              rdx, [rip + .Lx00512_3]
                                                                                        jmp   proc_Time___α
.Lx00512_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00512_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tabulate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1376
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tabulate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_format_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_format_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "uses"
.Lgvan1:                .string          "colmax"
.Lgvan2:                .string          "namewidth"
.Lgvan3:                .string          "lineno"
.Lgvan4:                .string          "Save__"
.Lgvan5:                .string          "Saves__"
.Lgvan6:                .string          "Name__"
.Lgvan7:                .string          "Collections____STATIC__labels"
.Lgvan8:                .string          "Collections____INITFLAG__0"
.Lgvan9:                .string          "Regions____STATIC__labels"
.Lgvan10:               .string          "Regions____INITFLAG__0"
.Lgvan11:               .string          "Storage____STATIC__labels"
.Lgvan12:               .string          "Storage____INITFLAG__0"
.Lgvan13:               .string          "Time____STATIC__lasttime"
.Lgvan14:               .string          "Time____INITFLAG__0"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
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
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1160], rcx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1152
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00513_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 7
                        mov              rax, qword ptr [rip + .Lx00514_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00515_call_proc_staged_α
.Lx00514_0:
                        .quad            .Lx00514_0_s
.Lx00514_0_s:
                        .string          "concord"
#-----------------------------------------------------------------------------------------------------------------------
n00515_call_proc_staged_α:
                        lea              rsi, [rbp + 1072]
                        call             proc_Init___dcα
                                                                                        jmp   .Lx00516_2
.Lx00516_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n00517_var_α
                                                                                        jmp   n00517_var_α
n00515_call_proc_staged_β:
                                                                                        jmp   n00517_var_α
.Lx00516_0:
                        .quad            .Lx00516_0_s
.Lx00516_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00517_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 4
                        mov              rax, qword ptr [rip + .Lx00519_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00520_call_proc_staged_α
.Lx00519_0:
                        .quad            .Lx00519_0_s
.Lx00519_0_s:
                        .string          "l+w+"
#-----------------------------------------------------------------------------------------------------------------------
n00520_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 1008]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00521_2
.Lx00521_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n00522_disjunction_α
                                                                                        jmp   n00523_assign_α
n00520_call_proc_staged_β:
                                                                                        jmp   n00522_disjunction_α
.Lx00521_0:
                        .quad            .Lx00521_0_s
.Lx00521_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00523_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00522_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n00524_var_ref_α
n00522_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx00525_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00526_assign_α
.Lx00525_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00525_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00526_assign_α
.Lx00525_1:
                                                                                        jmp   n00526_assign_α
n00522_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n00522_disjunction_af
                                                                                        jmp   n00522_disjunction_af
n00522_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n00527_lit_integer_α
                                                                                        jmp   n00528_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052304], rax                    # colmax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00528_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00528_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n00529_var_ref_α
n00528_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00530_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00531_assign_α
.Lx00530_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00530_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00531_assign_α
.Lx00530_1:
                                                                                        jmp   n00531_assign_α
n00528_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n00528_disjunction_af
                                                                                        jmp   n00528_disjunction_af
n00528_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n00532_lit_integer_α
                                                                                        jmp   n00533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00531_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052320], rax                    # namewidth
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 0
                        mov              rax, qword ptr [rip + .Lx00534_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00535_call_builtin_icon_α
.Lx00534_0:
                        .quad            .Lx00534_0_s
.Lx00534_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00535_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1110:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]                        # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n00536_lit_integer_α
                                                                                        jmp   n00537_assign_α
n00535_call_builtin_icon_β:
                                                                                        jmp   n00536_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052288], rax                    # uses
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00536_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00538_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00539_assign_α
.Lx00538_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00539_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052336], rax                    # lineno
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00540_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_proc_gen_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              edi, 2                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00541_1
                        lea              rcx, [rip + .Lx00541_3]
                        lea              rdx, [rip + .Lx00541_4]
                                                                                        jmp   rax
.Lx00541_3:
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx00541_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00541_2
.Lx00541_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00541_2
.Lx00541_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx00541_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00541_2
.Lx00541_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00541_2
.Lx00541_1:
                        call             rt_faildescr@PLT
.Lx00541_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n00542_var_α
                                                                                        jmp   n00543_var_α
n00540_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00541_0:
                        .quad            .Lx00541_0_s
.Lx00541_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n00543_var_α:
                        mov              rax, qword ptr [1879052336]                    # lineno
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 576], rax                     # result
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00544_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_call_proc_staged_α:
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 576]
                        call             proc_tabulate_dcα
                                                                                        jmp   .Lx00545_2
.Lx00545_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n00540_proc_gen_β
                                                                                        jmp   n00540_proc_gen_β
n00544_call_proc_staged_β:
                                                                                        jmp   n00540_proc_gen_β
.Lx00545_0:
                        .quad            .Lx00545_0_s
.Lx00545_0_s:
                        .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
n00542_var_α:
                        mov              rax, qword ptr [1879052288]                    # uses
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 432], rax                     # result
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00546_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00546_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00547_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00548_call_builtin_icon_α
.Lx00547_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00548_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn1122:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]                        # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n00549_var_α
                                                                                        jmp   n00550_assign_α
n00548_call_builtin_icon_β:
                                                                                        jmp   n00549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00549_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00551_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1127:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1127]                        # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00552_call_proc_staged_α
                                                                                        jmp   n00553_assign_α
n00551_call_builtin_icon_β:
                                                                                        jmp   n00552_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_var_α:
                        mov              rax, qword ptr [1879052320]                    # namewidth
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 288], rax                     # result
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00556_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn1133:             .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1133]                        # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n00549_var_α
                                                                                        jmp   n00557_var_α
n00556_call_builtin_icon_β:
                                                                                        jmp   n00549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00558_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1137:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]                        # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n00549_var_α
                                                                                        jmp   n00559_binop_α
n00558_call_builtin_icon_β:
                                                                                        jmp   n00549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_binop_α:
                        mov              rdi, qword ptr [rbp + 208]                     # a
                        mov              rsi, qword ptr [rbp + 216]                     # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00560_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_format_dcα
                                                                                        jmp   .Lx00561_2
.Lx00561_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00549_var_α
                                                                                        jmp   n00549_var_α
n00560_call_proc_staged_β:
                                                                                        jmp   n00549_var_α
.Lx00561_0:
                        .quad            .Lx00561_0_s
.Lx00561_0_s:
                        .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n00552_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00562_2
.Lx00562_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n00552_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00562_0:
                        .quad            .Lx00562_0_s
.Lx00562_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00532_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00528_disjunction_as
n00532_lit_integer_β:
                                                                                        jmp   n00528_disjunction_af
.Lx00563_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n00529_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00564_lit_string_α
n00529_var_ref_β:
                                                                                        jmp   n00528_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00564_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx00565_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00566_subscript_α
.Lx00565_0:
                        .quad            .Lx00565_0_s
.Lx00565_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00566_subscript_α:
                        mov              rdi, qword ptr [rbp + 720]                     # base
                        mov              rsi, qword ptr [rbp + 728]                     # base
                        mov              rdx, qword ptr [rbp + 736]                     # idx
                        mov              rcx, qword ptr [rbp + 744]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00528_disjunction_af
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00567_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_deref_α:
                        mov              rdi, qword ptr [rbp + 752]                     # d
                        mov              rsi, qword ptr [rbp + 760]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00528_disjunction_af
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00568_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_unop_test_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 104
                                                                                        je    n00528_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00528_disjunction_af
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00528_disjunction_as
n00568_unop_test_β:
                                                                                        jmp   n00528_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00527_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00569_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00522_disjunction_as
n00527_lit_integer_β:
                                                                                        jmp   n00522_disjunction_af
.Lx00569_0:
                        .quad            72
#-----------------------------------------------------------------------------------------------------------------------
n00524_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00570_lit_string_α
n00524_var_ref_β:
                                                                                        jmp   n00522_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00570_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx00571_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00572_subscript_α
.Lx00571_0:
                        .quad            .Lx00571_0_s
.Lx00571_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n00572_subscript_α:
                        mov              rdi, qword ptr [rbp + 848]                     # base
                        mov              rsi, qword ptr [rbp + 856]                     # base
                        mov              rdx, qword ptr [rbp + 864]                     # idx
                        mov              rcx, qword ptr [rbp + 872]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00522_disjunction_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00573_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_deref_α:
                        mov              rdi, qword ptr [rbp + 880]                     # d
                        mov              rsi, qword ptr [rbp + 888]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00522_disjunction_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00574_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_unop_test_α:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 104
                                                                                        je    n00522_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00522_disjunction_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00522_disjunction_as
n00574_unop_test_β:
                                                                                        jmp   n00522_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              rbp, qword ptr [rbp + 1176]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1168]
                        mov              rbp, qword ptr [rbp + 1176]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
