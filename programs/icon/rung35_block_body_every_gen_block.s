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
                        sub              rsp, 1840
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
                        mov              qword ptr [rbp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_lit_integer_α
.Lx46_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n2_lit_integer_α
.Lx47_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 992], 3                       # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n3_make_list_α
.Lx48_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n3_make_list_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:
                        mov              qword ptr [rbp + 672], 0
.Lx55_0:
                        mov              rdi, qword ptr [rbp + 688]                     # obj
                        mov              rsi, qword ptr [rbp + 696]                     # obj
                        mov              rdx, qword ptr [rbp + 672]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx55_240
                        add              rsp, 1840
                                                                                        jmp   n18_lit_string_α
.Lx55_240:
                                                                                        jmp   n7_assign_α
n6_iterate_β:
                        inc              qword ptr [rbp + 672]
                                                                                        jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n8_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n8_bound_α:
                        mov              qword ptr [rbp + 704], rsp
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n11_coerce_numeric_α
.Lx61_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 5
                                                                                        je    .Lx63_1
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
.Lx63_1:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n12_binop_α
.Lx63_0:
                        lea              rdi, [rbp + 1008]                              # self
                        lea              rsi, [rbp + 880]                               # other
                        lea              rdx, [rbp + 848]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx64_0
                        mov              rax, qword ptr [rbp + 856]
                        mov              rcx, 100
                        add              rax, rcx
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n13_assign_α
.Lx64_0:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n14_var_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn69:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]                          # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n17_unmark_α
                                                                                        jmp   n16_conjunction_α
n15_call_builtin_icon_β:
                                                                                        jmp   n17_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n16_conjunction_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n17_unmark_α
n16_conjunction_β:
                                                                                        jmp   n17_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_unmark_α:
                        mov              rsp, qword ptr [rbp + 704]
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n19_call_builtin_icon_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]                          # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n20_var_α
                                                                                        jmp   n20_var_α
n19_call_builtin_icon_β:
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n21_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n21_iterate_α:
                        mov              qword ptr [rbp + 352], 0
.Lx79_0:
                        mov              rdi, qword ptr [rbp + 368]                     # obj
                        mov              rsi, qword ptr [rbp + 376]                     # obj
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              rax, 99
                                                                                        je    n32_lit_string_α
                                                                                        jmp   n22_assign_α
n21_iterate_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx79_0
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n23_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n23_bound_α:
                        mov              qword ptr [rbp + 384], rsp
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n29_var_α
n24_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx84_0
                                                                                        jmp   n25_var_α
.Lx84_0:
                                                                                        jmp   n25_var_α
n24_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n25_var_α
n24_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n26_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn88:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]                          # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n28_unmark_α
                                                                                        jmp   n27_conjunction_α
n26_call_builtin_icon_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n27_conjunction_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n28_unmark_α
n27_conjunction_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unmark_α:
                        mov              rsp, qword ptr [rbp + 384]
                                                                                        jmp   n21_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n30_lit_integer_α
n29_var_β:
                                                                                        jmp   n24_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n31_binop_test_α
.Lx94_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 112
                                                                                        je    .Lx95_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 112
                                                                                        je    .Lx95_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx95_2
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx95_2
.Lx95_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 584]
                        cmp              rax, rcx
                                                                                        jne   n24_disjunction_af
                        mov              rcx, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n32_lit_string_α
.Lx95_0:
                        mov              rdi, qword ptr [rbp + 1008]                    # a
                        mov              rsi, qword ptr [rbp + 1016]                    # a
                        mov              rdx, qword ptr [rbp + 576]                     # b
                        mov              rcx, qword ptr [rbp + 584]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 544]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx95_1
                        cmp              eax, 1
                                                                                        je    n24_disjunction_af
                                                                                        jmp   n32_lit_string_α
.Lx95_2:
                        mov              rdi, qword ptr [rbp + 1008]                    # lhs
                        mov              rsi, qword ptr [rbp + 1016]                    # lhs
                        mov              rdx, qword ptr [rbp + 576]                     # rhs
                        mov              rcx, qword ptr [rbp + 584]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n24_disjunction_af
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 4
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn98:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]                          # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n34_var_α
                                                                                        jmp   n34_var_α
n33_call_builtin_icon_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n35_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n35_iterate_α:
                        mov              qword ptr [rbp + 32], 0
.Lx102_0:
                        mov              rdi, qword ptr [rbp + 48]                      # obj
                        mov              rsi, qword ptr [rbp + 56]                      # obj
                        mov              rdx, qword ptr [rbp + 32]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n36_assign_α
n35_iterate_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx102_0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n37_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n37_bound_α:
                        mov              qword ptr [rbp + 64], rsp
                                                                                        jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n42_var_α
n38_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx107_0
                                                                                        jmp   n39_var_α
.Lx107_0:
                                                                                        jmp   n39_var_α
n38_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n39_var_α
n38_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n40_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n45_unmark_α
                                                                                        jmp   n41_conjunction_α
n40_call_builtin_icon_β:
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n45_unmark_α
n41_conjunction_β:
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n43_lit_integer_α
n42_var_β:
                                                                                        jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n44_binop_test_α
.Lx115_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_test_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 112
                                                                                        je    .Lx116_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 112
                                                                                        je    .Lx116_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx116_2
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx116_2
.Lx116_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 264]
                        cmp              rax, rcx
                                                                                        jne   n38_disjunction_af
                        mov              rcx, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rcx
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rcx
                                                                                        jmp   n45_unmark_α
.Lx116_0:
                        mov              rdi, qword ptr [rbp + 1008]                    # a
                        mov              rsi, qword ptr [rbp + 1016]                    # a
                        mov              rdx, qword ptr [rbp + 256]                     # b
                        mov              rcx, qword ptr [rbp + 264]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 224]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx116_1
                        cmp              eax, 1
                                                                                        je    n38_disjunction_af
                                                                                        jmp   n45_unmark_α
.Lx116_2:
                        mov              rdi, qword ptr [rbp + 1008]                    # lhs
                        mov              rsi, qword ptr [rbp + 1016]                    # lhs
                        mov              rdx, qword ptr [rbp + 256]                     # rhs
                        mov              rcx, qword ptr [rbp + 264]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n38_disjunction_af
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n45_unmark_α:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n35_iterate_β
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
